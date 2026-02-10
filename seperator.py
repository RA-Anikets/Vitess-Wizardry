import csv
import re

# ---------- File names ----------
FK_SQL_FILE = "/Users/aniket.shelke/Learnings/Vitess/mysql/schemas/schShared/schShared_fk_m1.sql"
SHARED_CSV = "schShared.csv"
LOOKUP_CSV = "schSharedLookup.csv"

OUT_SHARED = "schShared_fk.sql"
OUT_LOOKUP = "schSharedLookup_fk.sql"
OUT_CROSS = "cross_keyspace_fk.sql"


# ---------- Helpers ----------
def load_tables(csv_file):
    tables = set()
    with open(csv_file, newline="", encoding="utf-8") as f:
        reader = csv.DictReader(f)
        for row in reader:
            tables.add(row["tablename"].strip())
    return tables


def extract_tables_from_fk(sql_stmt):
    """
    Extract child table and parent table from FK statement.
    """
    child_match = re.search(r"ALTER\s+TABLE\s+`?(\w+)`?", sql_stmt, re.IGNORECASE)
    parent_match = re.search(r"REFERENCES\s+`?(\w+)`?", sql_stmt, re.IGNORECASE)

    child = child_match.group(1) if child_match else None
    parent = parent_match.group(1) if parent_match else None

    return child, parent


# ---------- Load table lists ----------
sch_shared_tables = load_tables(SHARED_CSV)
sch_lookup_tables = load_tables(LOOKUP_CSV)

# ---------- Read FK SQL file ----------
with open(FK_SQL_FILE, "r", encoding="utf-8") as f:
    sql_content = f.read()

# Split by semicolon but keep statements clean
statements = [stmt.strip() + ";" for stmt in sql_content.split(";") if stmt.strip()]

shared_fk = []
lookup_fk = []
cross_fk = []

# ---------- Classify FK statements ----------
for stmt in statements:
    child, parent = extract_tables_from_fk(stmt)

    if not child or not parent:
        cross_fk.append(stmt)
        continue

    child_in_shared = child in sch_shared_tables
    parent_in_shared = parent in sch_shared_tables

    child_in_lookup = child in sch_lookup_tables
    parent_in_lookup = parent in sch_lookup_tables

    if child_in_shared and parent_in_shared:
        shared_fk.append(stmt)
    elif child_in_lookup and parent_in_lookup:
        lookup_fk.append(stmt)
    else:
        cross_fk.append(stmt)

# ---------- Write outputs ----------
def write_output(filename, statements):
    with open(filename, "w", encoding="utf-8") as f:
        for stmt in statements:
            f.write(stmt + "\n\n")


write_output(OUT_SHARED, shared_fk)
write_output(OUT_LOOKUP, lookup_fk)
write_output(OUT_CROSS, cross_fk)

print("✔ FK separation complete")
print(f"  schShared FK statements        : {len(shared_fk)}")
print(f"  schSharedLookup FK statements : {len(lookup_fk)}")
print(f"  Cross-keyspace FK statements  : {len(cross_fk)}")
