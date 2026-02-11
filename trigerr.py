import re
import os

def generate_vitess_triggers(input_file, output_file):
    # Regex to capture: Child Table, Constraint Name, Child Columns, Parent Table, Parent Columns, Delete Action
    fk_regex = re.compile(
        r"ALTER\s+TABLE\s+`?(\w+)`?\s+ADD\s+CONSTRAINT\s+`?(\w+)`?\s+FOREIGN\s+KEY\s*\((.*?)\)\s+REFERENCES\s+`?(\w+)`?\s*\((.*?)\)(.*?);",
        re.IGNORECASE | re.DOTALL
    )

    if not os.path.exists(input_file):
        print(f"Error: {input_file} not found.")
        return

    with open(input_file, 'r') as f:
        content = f.read()

    matches = fk_regex.findall(content)
    
    with open(output_file, 'w') as out:
        out.write("-- Generated Vitess-Compliant Triggers\n")
        out.write("SET @@ddl_strategy = 'direct';\n\n")

        for child_table, constraint, child_cols, parent_table, parent_cols, extra in matches:
            # Clean up column lists
            c_cols = [c.strip().strip('`') for c in child_cols.split(',')]
            p_cols = [p.strip().strip('`') for p in parent_cols.split(',')]
            
            # Determine Action (RESTRICT is default if not CASCADE)
            is_cascade = "DELETE CASCADE" in extra.upper()
            
            out.write(f"-- Constraint: {constraint}\n")
            
            if is_cascade:
                # CASCADE: Delete child when parent is deleted
                out.write(f"CREATE TRIGGER `trg_{constraint}_cascade_del` AFTER DELETE ON `{parent_table}`\n")
                out.write("FOR EACH ROW\nBEGIN\n    DELETE FROM `{}` WHERE {};\nEND;\n\n".format(
                    child_table,
                    " AND ".join([f"`{c}` = OLD.`{p}`" for c, p in zip(c_cols, p_cols)])
                ))
            else:
                # RESTRICT: Prevent parent delete if child exists
                out.write(f"CREATE TRIGGER `trg_{constraint}_restrict_del` BEFORE DELETE ON `{parent_table}`\n")
                out.write("FOR EACH ROW\nBEGIN\n    IF EXISTS (SELECT 1 FROM `{}` WHERE {} LIMIT 1) THEN\n".format(
                    child_table,
                    " AND ".join([f"`{c}` = OLD.`{p}`" for c, p in zip(c_cols, p_cols)])
                ))
                out.write(f"        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in {child_table}';\n")
                out.write("    END IF;\nEND;\n\n")

    print(f"Successfully generated {len(matches)} triggers in {output_file}")

if __name__ == "__main__":
    generate_vitess_triggers('schShared_fk.sql', 'schShared_triggers.sql')
