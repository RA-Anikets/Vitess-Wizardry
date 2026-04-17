SELECT CONCAT(
  'ALTER TABLE `', TABLE_SCHEMA, '`.`', TABLE_NAME,
  '` DROP FOREIGN KEY `', CONSTRAINT_NAME, '`;'
) AS drop_fk_sql
FROM information_schema.KEY_COLUMN_USAGE
WHERE REFERENCED_TABLE_NAME IS NOT NULL
  AND TABLE_SCHEMA = 'schShared' group by TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_NAME ;


SELECT CONCAT('DROP TABLE IF EXISTS `', table_name, '`;')
FROM information_schema.tables
WHERE table_schema = 'schShared';