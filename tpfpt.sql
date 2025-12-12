CREATE TABLE `tblEmailAddressSmtpEvent` (
  `id` bigint NOT NULL,
  `intEmailAddressID` bigint NOT NULL,
  `intEmailAddressStatusID` bigint DEFAULT NULL,
  `intSmtpEventID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblEmailAddressSmtpEventIntEmailAddressIDIntSmtpEventID` (`intEmailAddressID`,`intSmtpEventID`),
  KEY `fkTblEmailAddressSmtpEventToTblEmailAddressStatusViaI1603196096` (`intEmailAddressStatusID`),
  KEY `fkTblEmailAddressSmtpEventToTblSmtpEventViaIntSmtpEventID` (`intSmtpEventID`),
  CONSTRAINT `fkTblEmailAddressSmtpEventToTblEmailAddressStatusViaI1603196096` FOREIGN KEY (`intEmailAddressStatusID`) REFERENCES `tblEmailAddressStatus` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblEmailAddressSmtpEventToTblEmailAddressViaIntEmailAddressID` FOREIGN KEY (`intEmailAddressID`) REFERENCES `tblEmailAddress` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblEmailAddressSmtpEventToTblSmtpEventViaIntSmtpEventID` FOREIGN KEY (`intSmtpEventID`) REFERENCES `tblSmtpEvent` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;