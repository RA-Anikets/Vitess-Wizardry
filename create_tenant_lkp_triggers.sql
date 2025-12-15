-- Triggers to keep tblTenant_lkp in sync with tblTenant
-- Execute this file directly via MySQL client (not via vtctldclient ApplySchema)
-- Usage: mysql -u user -p schSharedLookup < create_tenant_lkp_triggers.sql

DROP TRIGGER IF EXISTS `trgTblTenantLkpAfterInsert`;

CREATE TRIGGER `trgTblTenantLkpAfterInsert`
AFTER INSERT ON `tblTenant`
FOR EACH ROW
BEGIN
  INSERT INTO `tblTenant_lkp` (`id`, `intTenantID`)
  VALUES (NEW.`id`, NEW.`id`)
  ON DUPLICATE KEY UPDATE `intTenantID` = NEW.`id`;
END;

DROP TRIGGER IF EXISTS `trgTblTenantLkpAfterUpdate`;

CREATE TRIGGER `trgTblTenantLkpAfterUpdate`
AFTER UPDATE ON `tblTenant`
FOR EACH ROW
BEGIN
  IF OLD.`id` != NEW.`id` THEN
    DELETE FROM `tblTenant_lkp` WHERE `id` = OLD.`id`;
    INSERT INTO `tblTenant_lkp` (`id`, `intTenantID`)
    VALUES (NEW.`id`, NEW.`id`)
    ON DUPLICATE KEY UPDATE `intTenantID` = NEW.`id`;
  ELSE
    UPDATE `tblTenant_lkp`
    SET `intTenantID` = NEW.`id`
    WHERE `id` = NEW.`id`;
  END IF;
END;

DROP TRIGGER IF EXISTS `trgTblTenantLkpAfterDelete`;

CREATE TRIGGER `trgTblTenantLkpAfterDelete`
AFTER DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
  DELETE FROM `tblTenant_lkp` WHERE `id` = OLD.`id`;
END;

