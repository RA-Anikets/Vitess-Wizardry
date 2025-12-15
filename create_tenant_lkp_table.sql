DROP TABLE IF EXISTS `tblTenant_lkp`;

CREATE TABLE `tblTenant_lkp` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTenantLkpIntTenantID` (`intTenantID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

INSERT INTO `tblTenant_lkp` (`id`, `intTenantID`)
SELECT `id`, `id` AS `intTenantID`
FROM `tblTenant`
ON DUPLICATE KEY UPDATE `intTenantID` = VALUES(`intTenantID`);
