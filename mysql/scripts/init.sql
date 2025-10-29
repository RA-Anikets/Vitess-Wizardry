-- load plugins
INSTALL PLUGIN rpl_semi_sync_master SONAME 'semisync_master.so';
INSTALL PLUGIN rpl_semi_sync_slave SONAME 'semisync_slave.so';

-- enable semi-sync
SET GLOBAL rpl_semi_sync_master_enabled = ON;
SET GLOBAL rpl_semi_sync_slave_enabled = ON;

-- check status
SHOW VARIABLES LIKE 'rpl_semi_sync%';
SHOW PLUGINS;