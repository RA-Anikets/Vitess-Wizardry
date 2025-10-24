CREATE USER 'vt_allprivs'@'%' IDENTIFIED BY 'vitesspass!';
GRANT ALL PRIVILEGES ON *.* TO 'vt_allprivs'@'%' WITH GRANT OPTION;

CREATE USER 'vt_app'@'%' IDENTIFIED BY 'vitesspass!';
GRANT SELECT, INSERT, UPDATE, DELETE ON *.* TO 'vt_app'@'%';

CREATE USER 'vt_dba'@'%' IDENTIFIED BY 'vitesspass!';
GRANT ALL PRIVILEGES ON *.* TO 'vt_dba'@'%' WITH GRANT OPTION;

CREATE USER 'vt_repl'@'%' IDENTIFIED BY 'vitesspass!';
GRANT REPLICATION SLAVE ON *.* TO 'vt_repl'@'%';

CREATE USER 'vt_super'@'%' IDENTIFIED BY 'vitesspass!';
GRANT SUPER, PROCESS, RELOAD, SHUTDOWN ON *.* TO 'vt_super'@'%';

CREATE DATABASE IF NOT EXISTS _vt;
CREATE DATABASE IF NOT EXISTS cmms;
CREATE DATABASE IF NOT EXISTS vt_cmms;
FLUSH PRIVILEGES;

-- load plugins
INSTALL PLUGIN rpl_semi_sync_master SONAME 'semisync_master.so';
INSTALL PLUGIN rpl_semi_sync_slave SONAME 'semisync_slave.so';

-- enable semi-sync
SET GLOBAL rpl_semi_sync_master_enabled = ON;
SET GLOBAL rpl_semi_sync_slave_enabled = ON;

-- check status
SHOW VARIABLES LIKE 'rpl_semi_sync%';
SHOW PLUGINS;

