import re
import csv
import subprocess
import argparse
import sys
from datetime import datetime

# --- Configuration & Regex ---
# Regex to parse the specific ALTER TABLE syntax provided
# Captures: ChildTable, ConstraintName, ChildCol, ParentTable, ParentCol, UpdateRule, DeleteRule
FK_REGEX = re.compile(
    r"ALTER TABLE\s+`?(\w+)`?\s+ADD CONSTRAINT\s+`?(\w+)`?\s+"
    r"FOREIGN KEY\s*\(`?(\w+)`?\)\s*"
    r"REFERENCES\s+`?(\w+)`?\s*\(`?(\w+)`?\)\s*"
    r"ON UPDATE\s+(.*?)\s+ON DELETE\s+(.*?);",
    re.IGNORECASE | re.DOTALL
)

def generate_triggers(fk_info):
    """
    Generates a list of SQL CREATE TRIGGER statements based on FK constraints.
    Returns a list of dicts: {'name': str, 'sql': str, 'type': str}
    """
    triggers = []
    
    child_table = fk_info['child_table']
    constraint_name = fk_info['constraint_name']
    child_col = fk_info['child_col']
    parent_table = fk_info['parent_table']
    parent_col = fk_info['parent_col']
    delete_rule = fk_info['delete_rule'].upper().strip()
    
    # 1. CHILD TABLE: BEFORE INSERT (Validate Parent Exists)
    trg_ins_name = f"trg_{constraint_name}_ins_valid"
    sql_ins = f"""
    CREATE TRIGGER `{trg_ins_name}` BEFORE INSERT ON `{child_table}`
    FOR EACH ROW
    BEGIN
        IF (SELECT COUNT(*) FROM `{parent_table}` WHERE `{parent_col}` = NEW.`{child_col}`) = 0 THEN
            SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'FK Violation: {constraint_name} - Referenced key not found in {parent_table}';
        END IF;
    END;
    """
    triggers.append({'name': trg_ins_name, 'sql': sql_ins, 'type': 'CHILD_INSERT_VALIDATE'})

    # 2. CHILD TABLE: BEFORE UPDATE (Validate Parent Exists if col changed)
    trg_upd_child_name = f"trg_{constraint_name}_upd_valid"
    sql_upd_child = f"""
    CREATE TRIGGER `{trg_upd_child_name}` BEFORE UPDATE ON `{child_table}`
    FOR EACH ROW
    BEGIN
        IF NOT (NEW.`{child_col}` <=> OLD.`{child_col}`) THEN
            IF (SELECT COUNT(*) FROM `{parent_table}` WHERE `{parent_col}` = NEW.`{child_col}`) = 0 THEN
                SIGNAL SQLSTATE '45000' 
                SET MESSAGE_TEXT = 'FK Violation: {constraint_name} - Referenced key not found in {parent_table}';
            END IF;
        END IF;
    END;
    """
    triggers.append({'name': trg_upd_child_name, 'sql': sql_upd_child, 'type': 'CHILD_UPDATE_VALIDATE'})

    # 3. PARENT TABLE: BEFORE DELETE (Handle RESTRICT or CASCADE)
    trg_del_parent_name = f"trg_{constraint_name}_del_parent"
    
    if "CASCADE" in delete_rule:
        # Cascade: Delete children automatically
        sql_del_parent = f"""
        CREATE TRIGGER `{trg_del_parent_name}` BEFORE DELETE ON `{parent_table}`
        FOR EACH ROW
        BEGIN
            DELETE FROM `{child_table}` WHERE `{child_col}` = OLD.`{parent_col}`;
        END;
        """
        triggers.append({'name': trg_del_parent_name, 'sql': sql_del_parent, 'type': 'PARENT_DELETE_CASCADE'})
        
    else:
        # Restrict (Default): Block delete if children exist
        sql_del_parent = f"""
        CREATE TRIGGER `{trg_del_parent_name}` BEFORE DELETE ON `{parent_table}`
        FOR EACH ROW
        BEGIN
            IF (SELECT COUNT(*) FROM `{child_table}` WHERE `{child_col}` = OLD.`{parent_col}`) > 0 THEN
                SIGNAL SQLSTATE '45000' 
                SET MESSAGE_TEXT = 'FK Violation: {constraint_name} - Cannot delete, children exist in {child_table}';
            END IF;
        END;
        """
        triggers.append({'name': trg_del_parent_name, 'sql': sql_del_parent, 'type': 'PARENT_DELETE_RESTRICT'})

    # 4. PARENT TABLE: BEFORE UPDATE (Prevent breaking link)
    # Usually we Restrict update of the PK in parent if children exist, even if ON UPDATE NO ACTION
    trg_upd_parent_name = f"trg_{constraint_name}_upd_parent"
    sql_upd_parent = f"""
    CREATE TRIGGER `{trg_upd_parent_name}` BEFORE UPDATE ON `{parent_table}`
    FOR EACH ROW
    BEGIN
        IF NOT (NEW.`{parent_col}` <=> OLD.`{parent_col}`) THEN
            IF (SELECT COUNT(*) FROM `{child_table}` WHERE `{child_col}` = OLD.`{parent_col}`) > 0 THEN
                 SIGNAL SQLSTATE '45000' 
                 SET MESSAGE_TEXT = 'FK Violation: {constraint_name} - Cannot update key, children exist in {child_table}';
            END IF;
        END IF;
    END;
    """
    triggers.append({'name': trg_upd_parent_name, 'sql': sql_upd_parent, 'type': 'PARENT_UPDATE_RESTRICT'})

    return triggers

def execute_vtctld(cmd_base, alias, sql, server_address):
    """
    Executes the trigger creation via vtctldclient ExecuteMultiFetchAsDBA
    """
    # ExecuteMultiFetchAsDBA expects the SQL command as the last argument
    full_cmd = list(cmd_base)
    if server_address:
        full_cmd.extend(["--server", server_address])
    
    full_cmd.extend(["ExecuteMultiFetchAsDBA", alias, sql])

    try:
        result = subprocess.run(
            full_cmd,
            capture_output=True,
            text=True,
            check=True
        )
        return True, "Success"
    except subprocess.CalledProcessError as e:
        clean_err = e.stderr.replace('\n', ' ').strip()
        return False, f"Code: {e.returncode} | Error: {clean_err}"
    except FileNotFoundError:
        return False, "vtctldclient binary not found in PATH"

def main():
    parser = argparse.ArgumentParser(description="Vitess FK to Trigger Migrator")
    parser.add_argument("--sql-file", required=True, help="Path to input SQL file containing constraints")
    parser.add_argument("--target-alias", required=True, help="The tablet alias to execute on (e.g., zone1-0000000100)")
    parser.add_argument("--vtctld-server", default="localhost:15999", help="vtctld server address")
    parser.add_argument("--dry-run", action="store_true", help="Generate SQL only, do not execute")
    parser.add_argument("--csv-out", default="trigger_migration_log.csv", help="Output CSV file path")

    args = parser.parse_args()

    vtctld_cmd = ["vtctldclient"] # Ensure this is in path

    # 1. Parse SQL File
    with open(args.sql_file, 'r') as f:
        content = f.read()

    # Find all matches
    matches = FK_REGEX.findall(content)
    
    if not matches:
        print("No Foreign Key constraints found matching the regex pattern.")
        sys.exit(0)

    print(f"Found {len(matches)} constraints. Processing...")

    results = []

    # 2. Process Matches
    for match in matches:
        fk_info = {
            'child_table': match[0],
            'constraint_name': match[1],
            'child_col': match[2],
            'parent_table': match[3],
            'parent_col': match[4],
            'update_rule': match[5],
            'delete_rule': match[6]
        }

        print(f"--> Converting {fk_info['constraint_name']} ({fk_info['delete_rule']})...")
        
        triggers = generate_triggers(fk_info)
        
        for trg in triggers:
            status = "SKIPPED"
            msg = "Dry Run"
            
            if not args.dry_run:
                success, msg = execute_vtctld(vtctld_cmd, args.target_alias, trg['sql'], args.vtctld_server)
                status = "SUCCESS" if success else "FAILURE"
            
            # Append to results for CSV
            results.append({
                'timestamp': datetime.now().isoformat(),
                'constraint': fk_info['constraint_name'],
                'trigger_name': trg['name'],
                'trigger_type': trg['type'],
                'status': status,
                'message': msg
            })
            
            if not args.dry_run and status == "FAILURE":
                print(f"    [X] Failed: {trg['name']} - {msg[:50]}...")
            elif not args.dry_run:
                print(f"    [V] Created: {trg['name']}")

    # 3. Write CSV
    keys = results[0].keys() if results else []
    with open(args.csv_out, 'w', newline='') as output_file:
        dict_writer = csv.DictWriter(output_file, fieldnames=keys)
        dict_writer.writeheader()
        dict_writer.writerows(results)

    print(f"\nProcessing complete. Results written to {args.csv_out}")

if __name__ == "__main__":
    main()