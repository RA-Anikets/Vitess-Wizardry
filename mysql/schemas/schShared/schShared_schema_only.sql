
DROP TABLE IF EXISTS `JGROUPSPING`;

CREATE TABLE `JGROUPSPING` (
  `own_addr` varchar(200) NOT NULL,
  `cluster_name` varchar(200) NOT NULL,
  `ping_data` varbinary(5000) DEFAULT NULL,
  PRIMARY KEY (`own_addr`,`cluster_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;

CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `QRTZ_CALENDARS`;

CREATE TABLE `QRTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;

CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;

CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint NOT NULL,
  `SCHED_TIME` bigint NOT NULL,
  `PRIORITY` int NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;

CREATE TABLE `QRTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` mediumblob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `QRTZ_LOCKS`;

CREATE TABLE `QRTZ_LOCKS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;

CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;

CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint NOT NULL,
  `CHECKIN_INTERVAL` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;

CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint NOT NULL,
  `REPEAT_INTERVAL` bigint NOT NULL,
  `TIMES_TRIGGERED` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;

CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int DEFAULT NULL,
  `INT_PROP_2` int DEFAULT NULL,
  `LONG_PROP_1` bigint DEFAULT NULL,
  `LONG_PROP_2` bigint DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;

CREATE TABLE `QRTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint DEFAULT NULL,
  `PREV_FIRE_TIME` bigint DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint NOT NULL,
  `END_TIME` bigint DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint DEFAULT NULL,
  `JOB_DATA` mediumblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `QRTZ_JOB_DETAILS` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `tblAccount`;

CREATE TABLE `tblAccount` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intUpdated` bigint NOT NULL,
  `strCode` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `strDescription` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAccountIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblAccountIntTenantIDStrCode` (`intTenantID`,`strCode`),
  UNIQUE KEY `xuTblAccountStrUuid` (`strUuid`),
  KEY `xTblAccountIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  CONSTRAINT `fkTblAccountToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAccountAddress`;

CREATE TABLE `tblAccountAddress` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDateUpdated` datetime DEFAULT NULL,
  `intAccountAddressTypeID` bigint NOT NULL,
  `intCountryID` bigint NOT NULL,
  `strAddress1` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `strAddress2` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `strAttention` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `strCity` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPostalCode` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `strState` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAccountAddressIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblAccountAddressToTblCountryViaIntCountryID` (`intCountryID`),
  KEY `fkTblAccountAddressToTblAccountAddressTypeViaIntAccoun758240575` (`intAccountAddressTypeID`),
  CONSTRAINT `fkTblAccountAddressToTblAccountAddressTypeViaIntAccoun758240575` FOREIGN KEY (`intAccountAddressTypeID`) REFERENCES `tblAccountAddressType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAccountAddressToTblCountryViaIntCountryID` FOREIGN KEY (`intCountryID`) REFERENCES `tblCountry` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAccountAddressToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAccountAddressType`;

CREATE TABLE `tblAccountAddressType` (
  `id` bigint NOT NULL,
  `strName` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAccountLog`;

CREATE TABLE `tblAccountLog` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblDiscount` double DEFAULT NULL,
  `dblTotalPrice` double DEFAULT NULL,
  `dblUnitPrice` double DEFAULT NULL,
  `dtmDate` datetime NOT NULL,
  `intAccountLogStatusID` bigint NOT NULL,
  `intAccountLogTypeID` bigint NOT NULL,
  `intClientSessionID` bigint DEFAULT NULL,
  `intNumberSeats` bigint DEFAULT NULL,
  `intProductTierId` bigint DEFAULT NULL,
  `intRecurringTypeId` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  `strException` longtext COLLATE utf8mb3_bin,
  `strKey` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strNotes` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAccountLogIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblAccountLogToTblAccountLogTypeViaIntAccountLogTypeID` (`intAccountLogTypeID`),
  KEY `fkTblAccountLogToTblClientSessionViaIntClientSessionID` (`intClientSessionID`),
  KEY `fkTblAccountLogToTblAccountLogStatusViaIntAccountLogStatusID` (`intAccountLogStatusID`),
  KEY `fkTblAccountLogToTblProductTierViaIntProductTierId` (`intProductTierId`),
  KEY `fkTblAccountLogToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblAccountLogToTblRecurringTypeViaIntRecurringTypeId` (`intRecurringTypeId`),
  CONSTRAINT `fkTblAccountLogToTblAccountLogStatusViaIntAccountLogStatusID` FOREIGN KEY (`intAccountLogStatusID`) REFERENCES `tblAccountLogStatus` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAccountLogToTblAccountLogTypeViaIntAccountLogTypeID` FOREIGN KEY (`intAccountLogTypeID`) REFERENCES `tblAccountLogType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAccountLogToTblClientSessionViaIntClientSessionID` FOREIGN KEY (`intClientSessionID`) REFERENCES `tblClientSession` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAccountLogToTblProductTierViaIntProductTierId` FOREIGN KEY (`intProductTierId`) REFERENCES `tblProductTier` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAccountLogToTblRecurringTypeViaIntRecurringTypeId` FOREIGN KEY (`intRecurringTypeId`) REFERENCES `tblRecurringType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAccountLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAccountLogToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAccountLogDiscount`;

CREATE TABLE `tblAccountLogDiscount` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblTotalDiscount` double DEFAULT NULL,
  `dblUnitDiscount` double DEFAULT NULL,
  `dtmDateEnd` datetime DEFAULT NULL,
  `dtmDateStart` datetime DEFAULT NULL,
  `duration` bigint DEFAULT NULL,
  `intAccountLogID` bigint NOT NULL,
  `intLineItemID` bigint DEFAULT NULL,
  `intOrderID` bigint DEFAULT NULL,
  `intProductAppliedID` bigint DEFAULT NULL,
  `intPromotionAppliedID` bigint DEFAULT NULL,
  `intQuantity` bigint DEFAULT NULL,
  `intSubscriptionPlanID` bigint DEFAULT NULL,
  `strNotes` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAccountLogDiscountIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblAccountLogDiscountToTblAccountLogViaIntAccountLogID` (`intAccountLogID`),
  KEY `fkTblAccountLogDiscountToTblProductViaIntProductAppliedID` (`intProductAppliedID`),
  KEY `fkTblAccountLogDiscountToTblPromotionalOfferViaIntPro1160027146` (`intPromotionAppliedID`),
  CONSTRAINT `fkTblAccountLogDiscountToTblAccountLogViaIntAccountLogID` FOREIGN KEY (`intAccountLogID`) REFERENCES `tblAccountLog` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAccountLogDiscountToTblProductViaIntProductAppliedID` FOREIGN KEY (`intProductAppliedID`) REFERENCES `tblProduct` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAccountLogDiscountToTblPromotionalOfferViaIntPro1160027146` FOREIGN KEY (`intPromotionAppliedID`) REFERENCES `tblPromotionalOffer` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAccountLogDiscountToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAccountLogOrder`;

CREATE TABLE `tblAccountLogOrder` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `datBillingPeriodEnd` datetime DEFAULT NULL,
  `datBillingPeriodStart` datetime DEFAULT NULL,
  `intAccountLogID` bigint NOT NULL,
  `intOrderID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAccountLogOrderIntAccountLogIDIntOrderID` (`intAccountLogID`,`intOrderID`),
  UNIQUE KEY `xuTblAccountLogOrderIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblAccountLogOrderToTblOrderViaIntOrderID` (`intOrderID`),
  CONSTRAINT `fkTblAccountLogOrderToTblAccountLogViaIntAccountLogID` FOREIGN KEY (`intAccountLogID`) REFERENCES `tblAccountLog` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAccountLogOrderToTblOrderViaIntOrderID` FOREIGN KEY (`intOrderID`) REFERENCES `tblOrder` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAccountLogOrderToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAccountLogStatus`;

CREATE TABLE `tblAccountLogStatus` (
  `id` bigint NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAccountLogStatusStrName` (`strName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAccountLogType`;

CREATE TABLE `tblAccountLogType` (
  `id` bigint NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAccountLogTypeStrName` (`strName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAccountNotes`;

CREATE TABLE `tblAccountNotes` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolReminderSent` tinyint DEFAULT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDateRemind` datetime DEFAULT NULL,
  `intCreatedByUserID` bigint DEFAULT NULL,
  `intScheduledJobID` bigint DEFAULT NULL,
  `strNotes` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAccountNotesIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblAccountNotesToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`),
  CONSTRAINT `fkTblAccountNotesToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAccountNotesToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblActivityLog`;

CREATE TABLE `tblActivityLog` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDate` datetime NOT NULL,
  `intActivityLogStatusID` bigint NOT NULL,
  `intActivityLogTypeID` bigint NOT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intIntegrationActionID` bigint DEFAULT NULL,
  `intScheduledMaintenanceID` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  `strException` longtext COLLATE utf8mb3_bin,
  `strNotes` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblActivityLogIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblActivityLogToTblActivityLogTypeViaIntActivityLogTypeID` (`intActivityLogTypeID`),
  KEY `fkTblActivityLogToTblScheduledMaintenanceViaIntSchedu1232720111` (`intScheduledMaintenanceID`),
  KEY `fkTblActivityLogToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblActivityLogToTblActivityLogStatusViaIntActivityLogStatusID` (`intActivityLogStatusID`),
  KEY `fkTblActivityLogToTblAssetViaIntAssetID` (`intAssetID`),
  KEY `fkTblActivityLogToTblIntegrationActionViaIntIntegrationActionID` (`intIntegrationActionID`),
  CONSTRAINT `fkTblActivityLogToTblActivityLogStatusViaIntActivityLogStatusID` FOREIGN KEY (`intActivityLogStatusID`) REFERENCES `tblActivityLogStatus` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblActivityLogToTblActivityLogTypeViaIntActivityLogTypeID` FOREIGN KEY (`intActivityLogTypeID`) REFERENCES `tblActivityLogType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblActivityLogToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblActivityLogToTblIntegrationActionViaIntIntegrationActionID` FOREIGN KEY (`intIntegrationActionID`) REFERENCES `tblIntegrationAction` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblActivityLogToTblScheduledMaintenanceViaIntSchedu1232720111` FOREIGN KEY (`intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblActivityLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblActivityLogToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblActivityLogStatus`;

CREATE TABLE `tblActivityLogStatus` (
  `id` bigint NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblActivityLogStatusStrName` (`strName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblActivityLogType`;

CREATE TABLE `tblActivityLogType` (
  `id` bigint NOT NULL,
  `intEntityOwnerId` bigint NOT NULL,
  `strName` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblActivityLogTypeStrName` (`strName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAddressGeocode`;

CREATE TABLE `tblAddressGeocode` (
  `id` bigint NOT NULL,
  `dblLatitude` double DEFAULT NULL,
  `dblLongitude` double DEFAULT NULL,
  `strAddress` varchar(768) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAddressGeocodeStrAddress` (`strAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAffiliateProgram`;

CREATE TABLE `tblAffiliateProgram` (
  `id` bigint NOT NULL,
  `strApiKey` varchar(512) COLLATE utf8mb3_bin NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblApiConsumer`;

CREATE TABLE `tblApiConsumer` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `bolIsInternal` tinyint DEFAULT NULL,
  `dmtDeactivated` datetime DEFAULT NULL,
  `dtmCreated` datetime NOT NULL,
  `intApiConsumerDistributionParentID` bigint DEFAULT NULL,
  `intApiConsumerTypeID` bigint DEFAULT NULL,
  `strApiKey` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  `strApplicationSignature` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDescription` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strRedirectURL` varchar(512) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xTblApiConsumerIntTenantIDStrApplicationSignatureStrApiKey` (`intTenantID`,`strApplicationSignature`,`strApiKey`),
  KEY `fkTblApiConsumerToTblApiConsumerViaIntApiConsumerDistr939616916` (`intApiConsumerDistributionParentID`),
  KEY `fkTblApiConsumerToTblApiConsumerTypeViaIntApiConsumerTypeID` (`intApiConsumerTypeID`),
  CONSTRAINT `fkTblApiConsumerToTblApiConsumerTypeViaIntApiConsumerTypeID` FOREIGN KEY (`intApiConsumerTypeID`) REFERENCES `tblApiConsumerType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblApiConsumerToTblApiConsumerViaIntApiConsumerDistr939616916` FOREIGN KEY (`intApiConsumerDistributionParentID`) REFERENCES `tblApiConsumer` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblApiConsumerToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblApiConsumerType`;

CREATE TABLE `tblApiConsumerType` (
  `id` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblApiConsumerUsage`;

CREATE TABLE `tblApiConsumerUsage` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDatePeriodEnd` datetime DEFAULT NULL,
  `dtmDatePeriodStart` datetime DEFAULT NULL,
  `intApiConsumerDistributionParentID` bigint DEFAULT NULL,
  `intApiConsumerID` bigint DEFAULT NULL,
  `intDay` bigint NOT NULL,
  `intMonth` bigint NOT NULL,
  `intRequestCount` bigint NOT NULL,
  `intYear` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblApiConsumerUsageIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblApiConsumerUsageIntApiConsumerDistributionParentI1620179004` (`intApiConsumerDistributionParentID`,`intYear`,`intMonth`),
  KEY `fkTblApiConsumerUsageToTblApiConsumerViaIntApiConsumerID` (`intApiConsumerID`),
  CONSTRAINT `fkTblApiConsumerUsageToTblApiConsumerViaIntApiConsume1358243839` FOREIGN KEY (`intApiConsumerDistributionParentID`) REFERENCES `tblApiConsumer` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblApiConsumerUsageToTblApiConsumerViaIntApiConsumerID` FOREIGN KEY (`intApiConsumerID`) REFERENCES `tblApiConsumer` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblApiConsumerUsageToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblApiUsage`;

CREATE TABLE `tblApiUsage` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intApiID` bigint NOT NULL,
  `intAuthorizationTypeID` bigint NOT NULL,
  `intDay` bigint NOT NULL,
  `intMonth` bigint NOT NULL,
  `intRequestCount` bigint NOT NULL,
  `intYear` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblApiUsageIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblApiUsageIntTenantIDIntDayIntMonthIntYearIntApiID1286679239` (`intTenantID`,`intDay`,`intMonth`,`intYear`,`intApiID`,`intAuthorizationTypeID`),
  CONSTRAINT `fkTblApiUsageToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblApplication`;

CREATE TABLE `tblApplication` (
  `id` bigint NOT NULL,
  `strLabel` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblApplicationStrName` (`strName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAppWindow`;

CREATE TABLE `tblAppWindow` (
  `id` bigint NOT NULL,
  `bolIsActive` tinyint NOT NULL,
  `intUi` int NOT NULL,
  `intVideoLength` int DEFAULT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  `strParam` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strVideoCategory` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strVideoDescription` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strVideoHelpUrl` varchar(1024) COLLATE utf8mb3_bin DEFAULT NULL,
  `strVideoTitle` varchar(512) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAppWindowStrNameId` (`strName`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAsset`;

CREATE TABLE `tblAsset` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `bolHasAddress` tinyint DEFAULT NULL,
  `bolImportedPriceFromV2` tinyint DEFAULT NULL,
  `bolIsBillToFacility` tinyint DEFAULT NULL,
  `bolIsCritical` tinyint DEFAULT NULL,
  `bolIsOnline` tinyint DEFAULT NULL,
  `bolIsPool` tinyint DEFAULT NULL,
  `bolIsRegion` tinyint DEFAULT NULL,
  `bolIsShippingOrReceivingFacility` tinyint DEFAULT NULL,
  `bolIsSite` tinyint DEFAULT NULL,
  `bolManageInventory` tinyint DEFAULT NULL,
  `bolNeedsCalibration` tinyint DEFAULT NULL,
  `bolUsersCanClockInOut` tinyint DEFAULT NULL,
  `cBarcode` longtext COLLATE utf8mb3_bin,
  `dblLastPrice` double DEFAULT NULL,
  `dblLatitude` double DEFAULT NULL,
  `dblLongitude` double DEFAULT NULL,
  `dblWeightedPrice` double DEFAULT NULL,
  `dtmCreated` datetime DEFAULT NULL,
  `dtmLastUpdated` datetime DEFAULT NULL,
  `intAccountID` bigint DEFAULT NULL,
  `intAssetLocationID` bigint DEFAULT NULL,
  `intAssetParentID` bigint DEFAULT NULL,
  `intAssetStatusID` bigint DEFAULT NULL,
  `intCategoryID` bigint DEFAULT NULL,
  `intChargeDepartmentID` bigint DEFAULT NULL,
  `intCountryID` bigint DEFAULT NULL,
  `intCreatedForPurchaseOrderLineItemID` bigint DEFAULT NULL,
  `intCreatedFromReceiptLineItemID` bigint DEFAULT NULL,
  `intKind` bigint DEFAULT NULL,
  `intLastMeterReadingUnitID` bigint DEFAULT NULL,
  `intLastPriceCurrencyID` bigint DEFAULT NULL,
  `intLayoutX` bigint DEFAULT NULL,
  `intLayoutY` bigint DEFAULT NULL,
  `intPhysicalLocationID` bigint DEFAULT NULL,
  `intSiteID` bigint DEFAULT NULL,
  `intSuperAssetCategoryID` bigint DEFAULT NULL,
  `intSuperCategoryID` bigint DEFAULT NULL,
  `intSuperCategorySysCode` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `qtyMinStockCount` double DEFAULT NULL,
  `qtyStockCount` double DEFAULT NULL,
  `strAddress` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strAisle` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strBarcode` varchar(512) COLLATE utf8mb3_bin DEFAULT NULL,
  `strBinNumber` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strCity` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strCode` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strCriticality` varchar(20) COLLATE utf8mb3_bin DEFAULT NULL,
  `strCustomerIds` longtext COLLATE utf8mb3_bin,
  `strCustomers` longtext COLLATE utf8mb3_bin,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strInventoryCode` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strMASourceProduct` longtext COLLATE utf8mb3_bin,
  `strMake` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strModel` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strNotes` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPostalCode` varchar(32) COLLATE utf8mb3_bin DEFAULT NULL,
  `strProvince` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strQuotingTerms` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strRFQTriggerSiteLevelSetting` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `strRow` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSerialNumber` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strShippingTerms` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strStockLocation` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSysCustomColumnValues` longtext COLLATE utf8mb3_bin,
  `strTimezone` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUnspcCode` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  `strVendorIds` longtext COLLATE utf8mb3_bin,
  `strVendors` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblAssetIntTenantIDStrUuid` (`intTenantID`,`strUuid`),
  UNIQUE KEY `xuTblAssetIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  KEY `xTblAssetIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `xTblAssetIntTenantIDBolIsSite` (`intTenantID`,`bolIsSite`),
  KEY `fkTblAssetToTblAssetStatusViaIntAssetStatusID` (`intAssetStatusID`),
  KEY `fkTblAssetToTblAssetViaIntAssetLocationIDAndIntTenantID` (`intTenantID`,`intAssetLocationID`),
  KEY `fkTblAssetToTblChargeDepartmentViaIntChargeDepartment1215857167` (`intTenantID`,`intChargeDepartmentID`),
  KEY `fkTblAssetToTblAssetCategoryViaIntSuperCategoryID` (`intSuperCategoryID`),
  KEY `fkTblAssetToTblPurchaseOrderLineItemViaIntCreatedForPu518539163` (`intCreatedForPurchaseOrderLineItemID`),
  KEY `fkTblAssetToTblAccountViaIntAccountIDAndIntTenantID` (`intTenantID`,`intAccountID`),
  KEY `fkTblAssetToTblAssetCategoryViaIntCategoryIDAndIntTenantID` (`intTenantID`,`intCategoryID`),
  KEY `fkTblAssetToTblCurrencyViaIntLastPriceCurrencyID` (`intLastPriceCurrencyID`),
  KEY `fkTblAssetToTblAssetCategoryViaIntSuperAssetCategoryID` (`intSuperAssetCategoryID`),
  KEY `fkTblAssetToTblMeterReadingUnitViaIntLastMeterReadingUnitID` (`intLastMeterReadingUnitID`),
  KEY `fkTblAssetToTblReceiptLineItemViaIntCreatedFromReceipt145304412` (`intCreatedFromReceiptLineItemID`),
  KEY `fkTblAssetToTblAssetViaIntAssetParentIDAndIntTenantID` (`intTenantID`,`intAssetParentID`),
  KEY `fkTblAssetToTblAssetViaIntSiteIDAndIntTenantID` (`intTenantID`,`intSiteID`),
  KEY `fkTblAssetToTblCountryViaIntCountryID` (`intCountryID`),
  CONSTRAINT `fkTblAssetToTblAccountViaIntAccountIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAccountID`) REFERENCES `tblAccount` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetToTblAssetCategoryViaIntCategoryIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intCategoryID`) REFERENCES `tblAssetCategory` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetToTblAssetCategoryViaIntSuperAssetCategoryID` FOREIGN KEY (`intSuperAssetCategoryID`) REFERENCES `tblAssetCategory` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetToTblAssetCategoryViaIntSuperCategoryID` FOREIGN KEY (`intSuperCategoryID`) REFERENCES `tblAssetCategory` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetToTblAssetStatusViaIntAssetStatusID` FOREIGN KEY (`intAssetStatusID`) REFERENCES `tblAssetStatus` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetToTblAssetViaIntAssetLocationIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetLocationID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetToTblAssetViaIntAssetParentIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetParentID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intSiteID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetToTblChargeDepartmentViaIntChargeDepartment1215857167` FOREIGN KEY (`intTenantID`, `intChargeDepartmentID`) REFERENCES `tblChargeDepartment` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetToTblCountryViaIntCountryID` FOREIGN KEY (`intCountryID`) REFERENCES `tblCountry` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetToTblCurrencyViaIntLastPriceCurrencyID` FOREIGN KEY (`intLastPriceCurrencyID`) REFERENCES `tblCurrency` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetToTblMeterReadingUnitViaIntLastMeterReadingUnitID` FOREIGN KEY (`intLastMeterReadingUnitID`) REFERENCES `tblMeterReadingUnit` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetToTblPurchaseOrderLineItemViaIntCreatedForPu518539163` FOREIGN KEY (`intCreatedForPurchaseOrderLineItemID`) REFERENCES `tblPurchaseOrderLineItem` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblAssetToTblReceiptLineItemViaIntCreatedFromReceipt145304412` FOREIGN KEY (`intCreatedFromReceiptLineItemID`) REFERENCES `tblReceiptLineItem` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblAssetToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetActivityLog`;

CREATE TABLE `tblAssetActivityLog` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDate` datetime DEFAULT NULL,
  `intActivityLogID` bigint NOT NULL,
  `intMoveAssetID` bigint DEFAULT NULL,
  `intMoveBackAssetID` bigint DEFAULT NULL,
  `intMoveBackID` bigint DEFAULT NULL,
  `intMoveID` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetActivityLogIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblAssetActivityLogIntTenantIDIntActivityLogID` (`intTenantID`,`intActivityLogID`),
  KEY `fkTblAssetActivityLogToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblAssetActivityLogToTblMoveViaIntMoveIDAndIntTenantID` (`intTenantID`,`intMoveID`),
  KEY `fkTblAssetActivityLogToTblMoveAssetViaIntMoveAssetIDA1114051204` (`intTenantID`,`intMoveAssetID`),
  KEY `fkTblAssetActivityLogToTblMoveBackAssetViaIntMoveBack1654161444` (`intTenantID`,`intMoveBackAssetID`),
  KEY `fkTblAssetActivityLogToTblActivityLogViaIntActivityLogID` (`intActivityLogID`),
  KEY `fkTblAssetActivityLogToTblMoveBackViaIntMoveBackIDAndI730605486` (`intTenantID`,`intMoveBackID`),
  CONSTRAINT `fkTblAssetActivityLogToTblActivityLogViaIntActivityLogID` FOREIGN KEY (`intActivityLogID`) REFERENCES `tblActivityLog` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAssetActivityLogToTblMoveAssetViaIntMoveAssetIDA1114051204` FOREIGN KEY (`intTenantID`, `intMoveAssetID`) REFERENCES `tblMoveAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetActivityLogToTblMoveBackAssetViaIntMoveBack1654161444` FOREIGN KEY (`intTenantID`, `intMoveBackAssetID`) REFERENCES `tblMoveBackAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetActivityLogToTblMoveBackViaIntMoveBackIDAndI730605486` FOREIGN KEY (`intTenantID`, `intMoveBackID`) REFERENCES `tblMoveBack` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetActivityLogToTblMoveViaIntMoveIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intMoveID`) REFERENCES `tblMove` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetActivityLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetActivityLogToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetBusiness`;

CREATE TABLE `tblAssetBusiness` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolAddShipmentAddressToRFQ` tinyint DEFAULT NULL,
  `bolEnableBusinessTrackingSync` tinyint DEFAULT NULL,
  `bolPreferredVendor` tinyint DEFAULT NULL,
  `bolPrimary` tinyint DEFAULT NULL,
  `bolSendRFQs` tinyint DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intBusinessGroupID` bigint DEFAULT NULL,
  `intBusinessID` bigint DEFAULT NULL,
  `intBusinessRoleTypeID` bigint DEFAULT NULL,
  `intRFQNumDaysForDelivery` bigint DEFAULT NULL,
  `qtyEconomicBatchQuantity` double DEFAULT NULL,
  `strBusinessAssetNumber` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strCatalog` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strProductURL` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSolrID` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetBusinessIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblAssetBusinessStrUuid` (`strUuid`),
  KEY `xTblAssetBusinessStrBusinessAssetNumber` (`strBusinessAssetNumber`),
  KEY `fkTblAssetBusinessToTblBusinessRoleTypeViaIntBusinessRoleTypeID` (`intBusinessRoleTypeID`),
  KEY `fkTblAssetBusinessToTblBusinessGroupViaIntBusinessGro1690629891` (`intTenantID`,`intBusinessGroupID`),
  KEY `fkTblAssetBusinessToTblAssetViaIntAssetIDAndIntTenantID` (`intTenantID`,`intAssetID`),
  KEY `fkTblAssetBusinessToTblBusinessViaIntBusinessIDAndIntTenantID` (`intTenantID`,`intBusinessID`),
  CONSTRAINT `fkTblAssetBusinessToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAssetBusinessToTblBusinessGroupViaIntBusinessGro1690629891` FOREIGN KEY (`intTenantID`, `intBusinessGroupID`) REFERENCES `tblBusinessGroup` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetBusinessToTblBusinessRoleTypeViaIntBusinessRoleTypeID` FOREIGN KEY (`intBusinessRoleTypeID`) REFERENCES `tblBusinessRoleType` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAssetBusinessToTblBusinessViaIntBusinessIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intBusinessID`) REFERENCES `tblBusiness` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetBusinessToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetCategory`;

CREATE TABLE `tblAssetCategory` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `bolOverrideRules` tinyint DEFAULT NULL,
  `intParentID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetCategoryIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblAssetCategoryStrUuid` (`strUuid`),
  UNIQUE KEY `xuTblAssetCategoryIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  KEY `xTblAssetCategoryIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblAssetCategoryToTblAssetCategoryViaIntParentIDAndI815481187` (`intTenantID`,`intParentID`),
  CONSTRAINT `fkTblAssetCategoryToTblAssetCategoryViaIntParentIDAndI815481187` FOREIGN KEY (`intTenantID`, `intParentID`) REFERENCES `tblAssetCategory` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetCategoryToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetCategoryBarcodeFormatType`;

CREATE TABLE `tblAssetCategoryBarcodeFormatType` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intAssetCategoryID` bigint DEFAULT NULL,
  `intBarcodeFormatTypeID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `strBarcodeStartSymbol` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL,
  `strBarcodeStopSymbol` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetCategoryBarcodeFormatTypeIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblAssetCategoryBarcodeFormatTypeIntBarcodeFormatTy1825965189` (`intBarcodeFormatTypeID`,`intAssetCategoryID`),
  KEY `xTblAssetCategoryBarcodeFormatTypeIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblAssetCategoryBarcodeFormatTypeToTblAssetCategory1870575391` (`intAssetCategoryID`),
  CONSTRAINT `fkTblAssetCategoryBarcodeFormatTypeToTblAssetCategory1870575391` FOREIGN KEY (`intAssetCategoryID`) REFERENCES `tblAssetCategory` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetCategoryBarcodeFormatTypeToTblBarcodeFormat1615070719` FOREIGN KEY (`intBarcodeFormatTypeID`) REFERENCES `tblBarcodeFormatType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetCategoryBarcodeFormatTypeToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetCategoryResolved`;

CREATE TABLE `tblAssetCategoryResolved` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intChildID` bigint DEFAULT NULL,
  `intParentID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetCategoryResolvedIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblAssetCategoryResolvedToTblAssetCategoryViaIntPar1912925573` (`intTenantID`,`intParentID`),
  KEY `fkTblAssetCategoryResolvedToTblAssetCategoryViaIntChi1687121893` (`intTenantID`,`intChildID`),
  CONSTRAINT `fkTblAssetCategoryResolvedToTblAssetCategoryViaIntChi1687121893` FOREIGN KEY (`intTenantID`, `intChildID`) REFERENCES `tblAssetCategory` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAssetCategoryResolvedToTblAssetCategoryViaIntPar1912925573` FOREIGN KEY (`intTenantID`, `intParentID`) REFERENCES `tblAssetCategory` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAssetCategoryResolvedToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetClassification`;

CREATE TABLE `tblAssetClassification` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intAssetID` bigint NOT NULL,
  `intClassificationID` bigint DEFAULT NULL,
  `intSiteID` bigint NOT NULL,
  `qtyAnnualUsage` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetClassificationIntTenantIDIntAssetIDIntSiteID` (`intTenantID`,`intAssetID`,`intSiteID`),
  UNIQUE KEY `xuTblAssetClassificationIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblAssetClassificationToTblAssetViaIntSiteID` (`intSiteID`),
  KEY `fkTblAssetClassificationToTblAssetViaIntAssetID` (`intAssetID`),
  CONSTRAINT `fkTblAssetClassificationToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAssetClassificationToTblAssetViaIntSiteID` FOREIGN KEY (`intSiteID`) REFERENCES `tblAsset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAssetClassificationToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetClassificationLog`;

CREATE TABLE `tblAssetClassificationLog` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateApplied` datetime NOT NULL,
  `intAssetID` bigint NOT NULL,
  `intClassificationID` bigint DEFAULT NULL,
  `intSiteID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetClassificationLogIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblAssetClassificationLogToTblAssetViaIntAssetIDAndI882329203` (`intTenantID`,`intAssetID`),
  KEY `fkTblAssetClassificationLogToTblAssetViaIntSiteIDAndIntTenantID` (`intTenantID`,`intSiteID`),
  CONSTRAINT `fkTblAssetClassificationLogToTblAssetViaIntAssetIDAndI882329203` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAssetClassificationLogToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intSiteID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAssetClassificationLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetConsumingReference`;

CREATE TABLE `tblAssetConsumingReference` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intBOMControlID` bigint DEFAULT NULL,
  `intBOMPartControlID` bigint DEFAULT NULL,
  `intConsumesAssetID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `qtyMaxConsumption` double DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetConsumingReferenceIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblAssetConsumingReferenceStrUuid` (`strUuid`),
  KEY `xTblAssetConsumingReferenceIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblAssetConsumingReferenceToTblBOMGroupPartViaIntBO2061768786` (`intBOMPartControlID`),
  KEY `fkTblAssetConsumingReferenceToTblAssetViaIntAssetIDAn2031227025` (`intTenantID`,`intAssetID`),
  KEY `fkTblAssetConsumingReferenceToTblBOMGroupViaIntBOMControlID` (`intBOMControlID`),
  KEY `fkTblAssetConsumingReferenceToTblAssetViaIntConsumesA1292758054` (`intTenantID`,`intConsumesAssetID`),
  CONSTRAINT `fkTblAssetConsumingReferenceToTblAssetViaIntAssetIDAn2031227025` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetConsumingReferenceToTblAssetViaIntConsumesA1292758054` FOREIGN KEY (`intTenantID`, `intConsumesAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetConsumingReferenceToTblBOMGroupPartViaIntBO2061768786` FOREIGN KEY (`intBOMPartControlID`) REFERENCES `tblBOMGroupPart` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetConsumingReferenceToTblBOMGroupViaIntBOMControlID` FOREIGN KEY (`intBOMControlID`) REFERENCES `tblBOMGroup` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetConsumingReferenceToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetDepletionTracking`;

CREATE TABLE `tblAssetDepletionTracking` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intAssetPurchaseTrackingID` bigint DEFAULT NULL,
  `intWorkOrderPartID` bigint DEFAULT NULL,
  `qtyQuantityUsed` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetDepletionTrackingIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblAssetDepletionTrackingToTblAssetPurchaseTrackingV698527743` (`intAssetPurchaseTrackingID`),
  KEY `fkTblAssetDepletionTrackingToTblWorkOrderPartViaIntWo1744765951` (`intWorkOrderPartID`),
  CONSTRAINT `fkTblAssetDepletionTrackingToTblAssetPurchaseTrackingV698527743` FOREIGN KEY (`intAssetPurchaseTrackingID`) REFERENCES `tblAssetPurchaseTracking` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAssetDepletionTrackingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetDepletionTrackingToTblWorkOrderPartViaIntWo1744765951` FOREIGN KEY (`intWorkOrderPartID`) REFERENCES `tblWorkOrderPart` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetEvent`;

CREATE TABLE `tblAssetEvent` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateSubmitted` datetime NOT NULL,
  `intAssetEventTypeID` bigint NOT NULL,
  `intAssetID` bigint NOT NULL,
  `intSubmittedByUserID` bigint DEFAULT NULL,
  `intWorkOrderID` bigint DEFAULT NULL,
  `strAdditionalDescription` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetEventIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblAssetEventToTblAssetEventTypeViaIntAssetEventTyp1939736897` (`intTenantID`,`intAssetEventTypeID`),
  KEY `fkTblAssetEventToTblUserViaIntSubmittedByUserID` (`intSubmittedByUserID`),
  KEY `fkTblAssetEventToTblAssetViaIntAssetID` (`intAssetID`),
  KEY `fkTblAssetEventToTblWorkOrderViaIntWorkOrderIDAndIntTenantID` (`intTenantID`,`intWorkOrderID`),
  CONSTRAINT `fkTblAssetEventToTblAssetEventTypeViaIntAssetEventTyp1939736897` FOREIGN KEY (`intTenantID`, `intAssetEventTypeID`) REFERENCES `tblAssetEventType` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetEventToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAssetEventToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetEventToTblUserViaIntSubmittedByUserID` FOREIGN KEY (`intSubmittedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetEventToTblWorkOrderViaIntWorkOrderIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intWorkOrderID`) REFERENCES `tblWorkOrder` (`intTenantID`, `id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetEventType`;

CREATE TABLE `tblAssetEventType` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolArchived` tinyint DEFAULT NULL,
  `strEventCode` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `strEventDescription` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strEventName` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetEventTypeIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblAssetEventTypeStrUuid` (`strUuid`),
  CONSTRAINT `fkTblAssetEventTypeToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetEventTypeAsset`;

CREATE TABLE `tblAssetEventTypeAsset` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intAssetEventTypeID` bigint NOT NULL,
  `intAssetID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetEventTypeAssetIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblAssetEventTypeAssetToTblAssetEventTypeViaIntAsse1340966513` (`intTenantID`,`intAssetEventTypeID`),
  KEY `fkTblAssetEventTypeAssetToTblAssetViaIntAssetIDAndIntTenantID` (`intTenantID`,`intAssetID`),
  CONSTRAINT `fkTblAssetEventTypeAssetToTblAssetEventTypeViaIntAsse1340966513` FOREIGN KEY (`intTenantID`, `intAssetEventTypeID`) REFERENCES `tblAssetEventType` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetEventTypeAssetToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetEventTypeAssetToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetOfflineTracker`;

CREATE TABLE `tblAssetOfflineTracker` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblProductionHoursAffected` double DEFAULT NULL,
  `dtmOffLineTo` datetime DEFAULT NULL,
  `dtmOfflineFrom` datetime NOT NULL,
  `intAssetEventTypeID` bigint DEFAULT NULL,
  `intAssetID` bigint NOT NULL,
  `intAssetIsLocatedAtAsssetID` bigint DEFAULT NULL,
  `intAssetIsPartOfAssetID` bigint DEFAULT NULL,
  `intReasonOfflineID` bigint DEFAULT NULL,
  `intReasonOnlineID` bigint DEFAULT NULL,
  `intSendToFacilityID` bigint DEFAULT NULL,
  `intSetOfflineByUserID` bigint DEFAULT NULL,
  `intSetOnlineByUserID` bigint DEFAULT NULL,
  `intStatusChangedByUserID` bigint DEFAULT NULL,
  `intSwapWithAssetID` bigint DEFAULT NULL,
  `intUpdated` bigint DEFAULT NULL,
  `intWorkOrderID` bigint DEFAULT NULL,
  `strAssetEventDescription` longtext COLLATE utf8mb3_bin,
  `strOfflineAdditionalInfo` longtext COLLATE utf8mb3_bin,
  `strOnlineAdditionalInfo` longtext COLLATE utf8mb3_bin,
  `strRbAssetLocation` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `strRbMovement` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSendToAisle` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSendToBin` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSendToRow` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetOfflineTrackerIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblAssetOfflineTrackerStrUuid` (`strUuid`),
  KEY `xTblAssetOfflineTrackerIntTenantIDIntWorkOrderID` (`intTenantID`,`intWorkOrderID`),
  KEY `fkTblAssetOfflineTrackerToTblAssetViaIntSwapWithAssetID` (`intSwapWithAssetID`),
  KEY `fkTblAssetOfflineTrackerToTblUserViaIntSetOfflineByUserID` (`intSetOfflineByUserID`),
  KEY `fkTblAssetOfflineTrackerToTblUserViaIntSetOnlineByUserID` (`intSetOnlineByUserID`),
  KEY `fkTblAssetOfflineTrackerToTblAssetEventTypeViaIntAsse1328600581` (`intAssetEventTypeID`),
  KEY `fkTblAssetOfflineTrackerToTblReasonToSetAssetOnlineVia478542041` (`intTenantID`,`intReasonOnlineID`),
  KEY `fkTblAssetOfflineTrackerToTblAssetViaIntAssetIsPartOfAssetID` (`intAssetIsPartOfAssetID`),
  KEY `fkTblAssetOfflineTrackerToTblAssetViaIntSendToFacilityID` (`intSendToFacilityID`),
  KEY `fkTblAssetOfflineTrackerToTblAssetViaIntAssetIDAndIntTenantID` (`intTenantID`,`intAssetID`),
  KEY `fkTblAssetOfflineTrackerToTblAssetViaIntAssetIsLocate1063347007` (`intAssetIsLocatedAtAsssetID`),
  KEY `fkTblAssetOfflineTrackerToTblUserViaIntStatusChangedByUserID` (`intStatusChangedByUserID`),
  KEY `fkTblAssetOfflineTrackerToTblReasonToSetAssetOfflineV1944624567` (`intTenantID`,`intReasonOfflineID`),
  KEY `fkTblAssetOfflineTrackerToTblWorkOrderViaIntWorkOrderID` (`intWorkOrderID`),
  CONSTRAINT `fkTblAssetOfflineTrackerToTblAssetEventTypeViaIntAsse1328600581` FOREIGN KEY (`intAssetEventTypeID`) REFERENCES `tblAssetEventType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetOfflineTrackerToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAssetOfflineTrackerToTblAssetViaIntAssetIsLocate1063347007` FOREIGN KEY (`intAssetIsLocatedAtAsssetID`) REFERENCES `tblAsset` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblAssetOfflineTrackerToTblAssetViaIntAssetIsPartOfAssetID` FOREIGN KEY (`intAssetIsPartOfAssetID`) REFERENCES `tblAsset` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblAssetOfflineTrackerToTblAssetViaIntSendToFacilityID` FOREIGN KEY (`intSendToFacilityID`) REFERENCES `tblAsset` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblAssetOfflineTrackerToTblAssetViaIntSwapWithAssetID` FOREIGN KEY (`intSwapWithAssetID`) REFERENCES `tblAsset` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblAssetOfflineTrackerToTblReasonToSetAssetOfflineV1944624567` FOREIGN KEY (`intTenantID`, `intReasonOfflineID`) REFERENCES `tblReasonToSetAssetOffline` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetOfflineTrackerToTblReasonToSetAssetOnlineVia478542041` FOREIGN KEY (`intTenantID`, `intReasonOnlineID`) REFERENCES `tblReasonToSetAssetOnline` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetOfflineTrackerToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetOfflineTrackerToTblUserViaIntSetOfflineByUserID` FOREIGN KEY (`intSetOfflineByUserID`) REFERENCES `tblUser` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblAssetOfflineTrackerToTblUserViaIntSetOnlineByUserID` FOREIGN KEY (`intSetOnlineByUserID`) REFERENCES `tblUser` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblAssetOfflineTrackerToTblUserViaIntStatusChangedByUserID` FOREIGN KEY (`intStatusChangedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblAssetOfflineTrackerToTblWorkOrderViaIntWorkOrderID` FOREIGN KEY (`intWorkOrderID`) REFERENCES `tblWorkOrder` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetProperty`;

CREATE TABLE `tblAssetProperty` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intAssetPropertyTypeID` bigint DEFAULT NULL,
  `intMeterReadingUnitID` bigint DEFAULT NULL,
  `strCode` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetPropertyIntTenantIDStrName` (`intTenantID`,`strName`),
  UNIQUE KEY `xuTblAssetPropertyIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblAssetPropertyIntTenantIDStrCode` (`intTenantID`,`strCode`),
  KEY `fkTblAssetPropertyToTblAssetPropertyTypeViaIntAssetPr1673953103` (`intAssetPropertyTypeID`),
  KEY `fkTblAssetPropertyToTblAssetViaIntAssetIDAndIntTenantID` (`intTenantID`,`intAssetID`),
  KEY `fkTblAssetPropertyToTblMeterReadingUnitViaIntMeterRea2078634338` (`intTenantID`,`intMeterReadingUnitID`),
  CONSTRAINT `fkTblAssetPropertyToTblAssetPropertyTypeViaIntAssetPr1673953103` FOREIGN KEY (`intAssetPropertyTypeID`) REFERENCES `tblAssetPropertyType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetPropertyToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetPropertyToTblMeterReadingUnitViaIntMeterRea2078634338` FOREIGN KEY (`intTenantID`, `intMeterReadingUnitID`) REFERENCES `tblMeterReadingUnit` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetPropertyToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetPropertyDomainElement`;

CREATE TABLE `tblAssetPropertyDomainElement` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intAssetPropertyID` bigint DEFAULT NULL,
  `intOrder` bigint DEFAULT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetPropertyDomainElementIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblAssetPropertyDomainElementIntTenantIDStrName` (`intTenantID`,`strName`),
  KEY `fkTblAssetPropertyDomainElementToTblAssetPropertyViaIn510438062` (`intTenantID`,`intAssetPropertyID`),
  CONSTRAINT `fkTblAssetPropertyDomainElementToTblAssetPropertyViaIn510438062` FOREIGN KEY (`intTenantID`, `intAssetPropertyID`) REFERENCES `tblAssetProperty` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAssetPropertyDomainElementToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetPropertyType`;

CREATE TABLE `tblAssetPropertyType` (
  `id` bigint NOT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetPropertyTypeStrName` (`strName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetPropertyValue`;

CREATE TABLE `tblAssetPropertyValue` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblElevation` double DEFAULT NULL,
  `dblLatitude` double DEFAULT NULL,
  `dblLongitude` double DEFAULT NULL,
  `dblValue` double DEFAULT NULL,
  `dtmCreateDate` datetime NOT NULL,
  `dtmSourceDate` datetime NOT NULL,
  `intAssetEventTypeId` bigint DEFAULT NULL,
  `intAssetPropertyDomainElementID` bigint DEFAULT NULL,
  `intAssetPropertyID` bigint DEFAULT NULL,
  `intCreatedByApiUserID` bigint NOT NULL,
  `intCreatedByUserID` bigint NOT NULL,
  `intSensorOrDeviceID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetPropertyValueIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblAssetPropertyValueToTblAssetEventTypeViaIntAssetE434192927` (`intTenantID`,`intAssetEventTypeId`),
  KEY `fkTblAssetPropertyValueToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`),
  KEY `fkTblAssetPropertyValueToTblAssetPropertyDomainElement549001757` (`intTenantID`,`intAssetPropertyDomainElementID`),
  KEY `fkTblAssetPropertyValueToTblAssetPropertyViaIntAssetPr923834485` (`intTenantID`,`intAssetPropertyID`),
  KEY `fkTblAssetPropertyValueToTblAssetViaIntSensorOrDeviceID` (`intSensorOrDeviceID`),
  KEY `fkTblAssetPropertyValueToTblUserViaIntCreatedByApiUserID` (`intCreatedByApiUserID`),
  CONSTRAINT `fkTblAssetPropertyValueToTblAssetEventTypeViaIntAssetE434192927` FOREIGN KEY (`intTenantID`, `intAssetEventTypeId`) REFERENCES `tblAssetEventType` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetPropertyValueToTblAssetPropertyDomainElement549001757` FOREIGN KEY (`intTenantID`, `intAssetPropertyDomainElementID`) REFERENCES `tblAssetPropertyDomainElement` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetPropertyValueToTblAssetPropertyViaIntAssetPr923834485` FOREIGN KEY (`intTenantID`, `intAssetPropertyID`) REFERENCES `tblAssetProperty` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetPropertyValueToTblAssetViaIntSensorOrDeviceID` FOREIGN KEY (`intSensorOrDeviceID`) REFERENCES `tblAsset` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetPropertyValueToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetPropertyValueToTblUserViaIntCreatedByApiUserID` FOREIGN KEY (`intCreatedByApiUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetPropertyValueToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetPurchaseTracking`;

CREATE TABLE `tblAssetPurchaseTracking` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolMigrated` tinyint DEFAULT NULL,
  `dblPurchasePricePerUnit` double DEFAULT NULL,
  `dblPurchasePriceTotal` double DEFAULT NULL,
  `dtmDateExpiryOfInventoryItems` datetime DEFAULT NULL,
  `dtmDateOrdered` datetime DEFAULT NULL,
  `dtmDateReceived` datetime DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intBusinessID` bigint DEFAULT NULL,
  `intPurchaseCurrencyID` bigint DEFAULT NULL,
  `intV2ID` bigint DEFAULT NULL,
  `qtyQuantityLeft` double DEFAULT NULL,
  `qtyQuantityLeftAtTimeOfOrder` double DEFAULT NULL,
  `qtyQuantityPurchased` double DEFAULT NULL,
  `qtyQuantityUsed` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetPurchaseTrackingIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblAssetPurchaseTrackingToTblCurrencyViaIntPurchaseCurrencyID` (`intPurchaseCurrencyID`),
  KEY `fkTblAssetPurchaseTrackingToTblAssetViaIntAssetID` (`intAssetID`),
  KEY `fkTblAssetPurchaseTrackingToTblBusinessViaIntBusinessID` (`intBusinessID`),
  CONSTRAINT `fkTblAssetPurchaseTrackingToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAssetPurchaseTrackingToTblBusinessViaIntBusinessID` FOREIGN KEY (`intBusinessID`) REFERENCES `tblBusiness` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetPurchaseTrackingToTblCurrencyViaIntPurchaseCurrencyID` FOREIGN KEY (`intPurchaseCurrencyID`) REFERENCES `tblCurrency` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetPurchaseTrackingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetResolved`;

CREATE TABLE `tblAssetResolved` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intAncestorID` bigint DEFAULT NULL,
  `intDescendantID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetResolvedIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblAssetResolvedToTblAssetViaIntDescendantIDAndIntTenantID` (`intTenantID`,`intDescendantID`),
  KEY `fkTblAssetResolvedToTblAssetViaIntAncestorIDAndIntTenantID` (`intTenantID`,`intAncestorID`),
  CONSTRAINT `fkTblAssetResolvedToTblAssetViaIntAncestorIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAncestorID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAssetResolvedToTblAssetViaIntDescendantIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intDescendantID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAssetResolvedToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetSelection`;

CREATE TABLE `tblAssetSelection` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateCreated` datetime NOT NULL,
  `intAssetId` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetSelectionIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblAssetSelectionToTblAssetViaIntAssetIdAndIntTenantID` (`intTenantID`,`intAssetId`),
  CONSTRAINT `fkTblAssetSelectionToTblAssetViaIntAssetIdAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetId`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAssetSelectionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetStatus`;

CREATE TABLE `tblAssetStatus` (
  `id` bigint NOT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetUser`;

CREATE TABLE `tblAssetUser` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolCanClockIn` tinyint DEFAULT NULL,
  `dtmDateAdded` datetime DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intAssetUserTypeID` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetUserIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblAssetUserToTblAssetViaIntAssetIDAndIntTenantID` (`intTenantID`,`intAssetID`),
  KEY `fkTblAssetUserToTblAssetUserTypeViaIntAssetUserTypeID` (`intAssetUserTypeID`),
  KEY `fkTblAssetUserToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblAssetUserToTblAssetUserTypeViaIntAssetUserTypeID` FOREIGN KEY (`intAssetUserTypeID`) REFERENCES `tblAssetUserType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetUserToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAssetUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAssetUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetUserType`;

CREATE TABLE `tblAssetUserType` (
  `id` bigint NOT NULL,
  `strName` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAuditLog`;

CREATE TABLE `tblAuditLog` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmLogDate` datetime NOT NULL,
  `intEntityId` bigint NOT NULL,
  `intUserID` bigint DEFAULT NULL,
  `strAction` varchar(32) COLLATE utf8mb3_bin DEFAULT NULL,
  `strContext` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strContextShort` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strEntityName` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `strEntityOp` varchar(16) COLLATE utf8mb3_bin NOT NULL,
  `strImpactedFields` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAuditLogIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblAuditLogToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblAuditLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAuditLogToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAuditLogArchive`;

CREATE TABLE `tblAuditLogArchive` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmLogDate` datetime NOT NULL,
  `intEntityId` bigint NOT NULL,
  `intUserID` bigint DEFAULT NULL,
  `strAction` varchar(32) COLLATE utf8mb3_bin DEFAULT NULL,
  `strContext` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strContextShort` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strEntityName` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `strEntityOp` varchar(16) COLLATE utf8mb3_bin NOT NULL,
  `strImpactedFields` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAuditLogArchiveIntTenantIDId` (`intTenantID`,`id`),
  CONSTRAINT `fkTblAuditLogArchiveToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAuthorization`;

CREATE TABLE `tblAuthorization` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dmtDeactivated` datetime DEFAULT NULL,
  `dtmCreated` datetime NOT NULL,
  `dtmExpiry` datetime DEFAULT NULL,
  `intApiConsumerID` bigint NOT NULL,
  `intType` bigint NOT NULL,
  `intUserId` bigint NOT NULL,
  `strValue1` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  `strValue2` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strValue3` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xTblAuthorizationStrValue1IntTenantIDDmtDeactivatedDtmExpiry` (`strValue1`,`intTenantID`,`dmtDeactivated`,`dtmExpiry`),
  KEY `fkTblAuthorizationToTblUserViaIntUserId` (`intUserId`),
  KEY `fkTblAuthorizationToTblApiConsumerViaIntApiConsumerID` (`intApiConsumerID`),
  KEY `fkTblAuthorizationToTblTenantViaIntTenantID` (`intTenantID`),
  CONSTRAINT `fkTblAuthorizationToTblApiConsumerViaIntApiConsumerID` FOREIGN KEY (`intApiConsumerID`) REFERENCES `tblApiConsumer` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblAuthorizationToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblAuthorizationToTblUserViaIntUserId` FOREIGN KEY (`intUserId`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblBarcodeFormatType`;

CREATE TABLE `tblBarcodeFormatType` (
  `id` bigint NOT NULL,
  `bolActive` tinyint DEFAULT NULL,
  `intTotalLength` bigint DEFAULT NULL,
  `strDescription` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strExample` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(40) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblBillingTaxes`;

CREATE TABLE `tblBillingTaxes` (
  `id` bigint NOT NULL,
  `bolZipCodeBased` tinyint DEFAULT NULL,
  `dblTaxRate` double NOT NULL,
  `intCountryID` bigint NOT NULL,
  `strStateCode` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `strTaxLabel` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblBillingTaxesToTblCountryViaIntCountryID` (`intCountryID`),
  CONSTRAINT `fkTblBillingTaxesToTblCountryViaIntCountryID` FOREIGN KEY (`intCountryID`) REFERENCES `tblCountry` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblBillingTerm`;

CREATE TABLE `tblBillingTerm` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intUpdated` bigint NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblBillingTermIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblBillingTermIntTenantIDStrName` (`intTenantID`,`strName`),
  KEY `xTblBillingTermIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  CONSTRAINT `fkTblBillingTermToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblBillingType`;

CREATE TABLE `tblBillingType` (
  `id` bigint NOT NULL,
  `strName` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblBOMGroup`;

CREATE TABLE `tblBOMGroup` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmLastUpdated` datetime DEFAULT NULL,
  `intCreatedByUserID` bigint DEFAULT NULL,
  `intLastUpdatedByUserID` bigint DEFAULT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblBOMGroupIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblBOMGroupStrUuid` (`strUuid`),
  KEY `fkTblBOMGroupToTblUserViaIntLastUpdatedByUserID` (`intLastUpdatedByUserID`),
  KEY `fkTblBOMGroupToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`),
  CONSTRAINT `fkTblBOMGroupToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblBOMGroupToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblBOMGroupToTblUserViaIntLastUpdatedByUserID` FOREIGN KEY (`intLastUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblBOMGroupPart`;

CREATE TABLE `tblBOMGroupPart` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intBOMGroupID` bigint NOT NULL,
  `qtyMaxConsumption` double DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblBOMGroupPartIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblBOMGroupPartStrUuid` (`strUuid`),
  KEY `fkTblBOMGroupPartToTblBOMGroupViaIntBOMGroupID` (`intBOMGroupID`),
  KEY `fkTblBOMGroupPartToTblAssetViaIntAssetID` (`intAssetID`),
  CONSTRAINT `fkTblBOMGroupPartToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblBOMGroupPartToTblBOMGroupViaIntBOMGroupID` FOREIGN KEY (`intBOMGroupID`) REFERENCES `tblBOMGroup` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblBOMGroupPartToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblBorgSetting`;

CREATE TABLE `tblBorgSetting` (
  `id` bigint NOT NULL,
  `datDateValue` datetime DEFAULT NULL,
  `dblDoubleValue` double DEFAULT NULL,
  `dtmDateTimeValue` datetime DEFAULT NULL,
  `intIntValue` bigint DEFAULT NULL,
  `strClobValue` longtext COLLATE utf8mb3_bin,
  `strGroupName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strStringValue` varchar(512) COLLATE utf8mb3_bin DEFAULT NULL,
  `strType` varchar(3) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblBorgSettingStrName` (`strName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblBranding`;

CREATE TABLE `tblBranding` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intBrandingTypeID` bigint DEFAULT NULL,
  `intFileContentsID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblBrandingIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblBrandingToTblFileContentsViaIntFileContentsID` (`intFileContentsID`),
  CONSTRAINT `fkTblBrandingToTblFileContentsViaIntFileContentsID` FOREIGN KEY (`intFileContentsID`) REFERENCES `tblFileContents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblBrandingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblBusiness`;

CREATE TABLE `tblBusiness` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `bolDefaultCompany` tinyint DEFAULT NULL,
  `bolGroupQuotes` tinyint DEFAULT NULL,
  `bolIsMASourceVendor` tinyint DEFAULT NULL,
  `bolOurBusiness` tinyint DEFAULT NULL,
  `bolPreferredBusiness` tinyint DEFAULT NULL,
  `bolPublicCommunity` tinyint DEFAULT NULL,
  `dtmLastScheduledMaintenanceRunTime` datetime DEFAULT NULL,
  `intBusinessClassificationID` bigint DEFAULT NULL,
  `intBusinessTypeID` bigint DEFAULT NULL,
  `intCohortID` bigint DEFAULT NULL,
  `intCountryID` bigint DEFAULT NULL,
  `intMASourceSellerID` bigint DEFAULT NULL,
  `intPrimaryCurrencyID` bigint DEFAULT NULL,
  `intRFQTemplateID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `strAddress` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strBusinessCorpID` varchar(32) COLLATE utf8mb3_bin DEFAULT NULL,
  `strCity` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strCode` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strCommunityPassword` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strCommunityPrivateKey` varchar(512) COLLATE utf8mb3_bin DEFAULT NULL,
  `strFax` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strNotes` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPhone` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPhone2` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPostalCode` varchar(16) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPrimaryContact` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPrimaryEmail` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strProvince` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSecondaryEmail` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strTimezone` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  `strWebSite` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblBusinessIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblBusinessStrUuid` (`strUuid`),
  UNIQUE KEY `xuTblBusinessIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  KEY `xTblBusinessIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblBusinessToTblBusinessTypeDefViaIntBusinessTypeID` (`intBusinessTypeID`),
  KEY `fkTblBusinessToTblCountryViaIntCountryID` (`intCountryID`),
  KEY `fkTblBusinessToTblBusinessClassificationViaIntBusinessCl8954574` (`intBusinessClassificationID`),
  KEY `fkTblBusinessToTblCohortViaIntCohortID` (`intCohortID`),
  KEY `fkTblBusinessToTblCurrencyViaIntPrimaryCurrencyID` (`intPrimaryCurrencyID`),
  KEY `fkTblBusinessToTblMASourceSellerViaIntMASourceSellerID` (`intMASourceSellerID`),
  KEY `fkTblBusinessToTblTemplateViaIntRFQTemplateID` (`intRFQTemplateID`),
  CONSTRAINT `fkTblBusinessToTblBusinessClassificationViaIntBusinessCl8954574` FOREIGN KEY (`intBusinessClassificationID`) REFERENCES `tblBusinessClassification` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblBusinessToTblBusinessTypeDefViaIntBusinessTypeID` FOREIGN KEY (`intBusinessTypeID`) REFERENCES `tblBusinessTypeDef` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblBusinessToTblCohortViaIntCohortID` FOREIGN KEY (`intCohortID`) REFERENCES `tblCohort` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblBusinessToTblCountryViaIntCountryID` FOREIGN KEY (`intCountryID`) REFERENCES `tblCountry` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblBusinessToTblCurrencyViaIntPrimaryCurrencyID` FOREIGN KEY (`intPrimaryCurrencyID`) REFERENCES `tblCurrency` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblBusinessToTblMASourceSellerViaIntMASourceSellerID` FOREIGN KEY (`intMASourceSellerID`) REFERENCES `tblMASourceSeller` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblBusinessToTblTemplateViaIntRFQTemplateID` FOREIGN KEY (`intRFQTemplateID`) REFERENCES `tblTemplate` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblBusinessToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblBusinessClassification`;

CREATE TABLE `tblBusinessClassification` (
  `id` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblBusinessContact`;

CREATE TABLE `tblBusinessContact` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intBusinessID` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  `strDepartment` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strTitle` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblBusinessContactIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblBusinessContactToTblBusinessViaIntBusinessID` (`intBusinessID`),
  KEY `fkTblBusinessContactToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblBusinessContactToTblBusinessViaIntBusinessID` FOREIGN KEY (`intBusinessID`) REFERENCES `tblBusiness` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblBusinessContactToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblBusinessContactToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblBusinessGroup`;

CREATE TABLE `tblBusinessGroup` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolIsDefaultManufacturer` tinyint DEFAULT NULL,
  `bolIsDefaultSupplier` tinyint DEFAULT NULL,
  `intRelationshipType` bigint NOT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblBusinessGroupIntTenantIDId` (`intTenantID`,`id`),
  CONSTRAINT `fkTblBusinessGroupToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblBusinessRole`;

CREATE TABLE `tblBusinessRole` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intBusinessGroupID` bigint DEFAULT NULL,
  `intBusinessID` bigint NOT NULL,
  `intBusinessRoleTypeID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblBusinessRoleIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblBusinessRoleToTblBusinessRoleTypeViaIntBusinessRoleTypeID` (`intBusinessRoleTypeID`),
  KEY `fkTblBusinessRoleToTblBusinessViaIntBusinessID` (`intBusinessID`),
  KEY `fkTblBusinessRoleToTblBusinessGroupViaIntBusinessGroupID` (`intBusinessGroupID`),
  CONSTRAINT `fkTblBusinessRoleToTblBusinessGroupViaIntBusinessGroupID` FOREIGN KEY (`intBusinessGroupID`) REFERENCES `tblBusinessGroup` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblBusinessRoleToTblBusinessRoleTypeViaIntBusinessRoleTypeID` FOREIGN KEY (`intBusinessRoleTypeID`) REFERENCES `tblBusinessRoleType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblBusinessRoleToTblBusinessViaIntBusinessID` FOREIGN KEY (`intBusinessID`) REFERENCES `tblBusiness` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblBusinessRoleToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblBusinessRoleType`;

CREATE TABLE `tblBusinessRoleType` (
  `id` bigint NOT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblBusinessRoleTypeStrName` (`strName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblBusinessTypeDef`;

CREATE TABLE `tblBusinessTypeDef` (
  `id` bigint NOT NULL,
  `bolDefinable` tinyint DEFAULT NULL,
  `intDefaultParentID` bigint DEFAULT NULL,
  `strAllParent` varchar(200) COLLATE utf8mb3_bin DEFAULT NULL,
  `strBusinessTypeDefName` varchar(200) COLLATE utf8mb3_bin DEFAULT NULL,
  `strBusinessTypeDefShort` varchar(200) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblBusinessTypeDefToTblBusinessTypeDefViaIntDefaultParentID` (`intDefaultParentID`),
  CONSTRAINT `fkTblBusinessTypeDefToTblBusinessTypeDefViaIntDefaultParentID` FOREIGN KEY (`intDefaultParentID`) REFERENCES `tblBusinessTypeDef` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblCalendarEvent`;

CREATE TABLE `tblCalendarEvent` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblTimeTotalEstimatedHours` double DEFAULT NULL,
  `dtmDate` datetime NOT NULL,
  `intScheduleTriggerID` bigint NOT NULL,
  `intScheduledMaintenanceID` bigint DEFAULT NULL,
  `strScheduledMaintenanceNestingNames` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblCalendarEventIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblCalendarEventIntTenantIDIntScheduleTriggerIDDtmDate` (`intTenantID`,`intScheduleTriggerID`,`dtmDate`),
  KEY `fkTblCalendarEventToTblScheduledMaintenanceViaIntSche1489515749` (`intTenantID`,`intScheduledMaintenanceID`),
  KEY `fkTblCalendarEventToTblScheduleTriggerViaIntScheduleTriggerID` (`intScheduleTriggerID`),
  CONSTRAINT `fkTblCalendarEventToTblScheduledMaintenanceViaIntSche1489515749` FOREIGN KEY (`intTenantID`, `intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblCalendarEventToTblScheduleTriggerViaIntScheduleTriggerID` FOREIGN KEY (`intScheduleTriggerID`) REFERENCES `tblScheduleTrigger` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblCalendarEventToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblCategorySetting`;

CREATE TABLE `tblCategorySetting` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolBlockMovingAssetsWithOverdueMaintenance` tinyint DEFAULT NULL,
  `bolBlockMovingBackAssetsWithOverdueMaintenance` tinyint DEFAULT NULL,
  `bolBlockMovingBackOfflineAssets` tinyint DEFAULT NULL,
  `bolBlockMovingOfflineAssets` tinyint DEFAULT NULL,
  `bolEnableCalibration` tinyint DEFAULT NULL,
  `bolEnableCheckInCheckOutQuickActions` tinyint DEFAULT NULL,
  `bolEnableMoveControl` tinyint DEFAULT NULL,
  `bolEnableMoveTracking` tinyint DEFAULT NULL,
  `intCategoryID` bigint NOT NULL,
  `intDefaultDestinationTypeID` int DEFAULT NULL,
  `intIntervalForUpcomingEventWarning` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblCategorySettingIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblCategorySettingIntTenantIDIntCategoryID` (`intTenantID`,`intCategoryID`),
  KEY `fkTblCategorySettingToTblAssetCategoryViaIntCategoryID` (`intCategoryID`),
  CONSTRAINT `fkTblCategorySettingToTblAssetCategoryViaIntCategoryID` FOREIGN KEY (`intCategoryID`) REFERENCES `tblAssetCategory` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblCategorySettingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblCertification`;

CREATE TABLE `tblCertification` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblCertificationIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblCertificationIntTenantIDStrName` (`intTenantID`,`strName`),
  CONSTRAINT `fkTblCertificationToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblChargeDepartment`;

CREATE TABLE `tblChargeDepartment` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intFacilityID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `strCode` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `strDescription` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblChargeDepartmentIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblChargeDepartmentIntTenantIDStrCode` (`intTenantID`,`strCode`),
  UNIQUE KEY `xuTblChargeDepartmentStrUuid` (`strUuid`),
  KEY `xTblChargeDepartmentIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblChargeDepartmentToTblAssetViaIntFacilityIDAndIntTenantID` (`intTenantID`,`intFacilityID`),
  CONSTRAINT `fkTblChargeDepartmentToTblAssetViaIntFacilityIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intFacilityID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblChargeDepartmentToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblClientSession`;

CREATE TABLE `tblClientSession` (
  `id` bigint NOT NULL,
  `intTenantID` bigint DEFAULT NULL,
  `bolTerminated` tinyint DEFAULT NULL,
  `dtmClosed` datetime DEFAULT NULL,
  `dtmCreated` datetime NOT NULL,
  `intClientMajorVersion` int DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  `strCSessionId` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strClientInfo` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strClientPlatform` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strClientType` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strServerKey` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSourceIp` varchar(16) COLLATE utf8mb3_bin DEFAULT NULL,
  `strXForwardedFor` varchar(1024) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xTblClientSessionDtmCreated` (`dtmCreated`),
  KEY `xTblClientSessionStrServerKey` (`strServerKey`),
  KEY `xTblClientSessionIntTenantIDDtmCreatedIntUserID` (`intTenantID`,`dtmCreated`,`intUserID`),
  KEY `fkTblClientSessionToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblClientSessionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblClientSessionToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblCohort`;

CREATE TABLE `tblCohort` (
  `id` bigint NOT NULL,
  `bolActive` tinyint DEFAULT NULL,
  `intOrder` bigint NOT NULL,
  `strLabel` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblCounter`;

CREATE TABLE `tblCounter` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intNextValue` bigint NOT NULL,
  `strTableName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblCounterIntTenantIDStrTableName` (`intTenantID`,`strTableName`),
  UNIQUE KEY `xuTblCounterIntTenantIDId` (`intTenantID`,`id`),
  CONSTRAINT `fkTblCounterToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblCountry`;

CREATE TABLE `tblCountry` (
  `id` bigint NOT NULL,
  `bolIsBlocked` tinyint DEFAULT NULL,
  `strMid` varchar(3) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(150) COLLATE utf8mb3_bin DEFAULT NULL,
  `strNotes` longtext COLLATE utf8mb3_bin,
  `strShort` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL,
  `strShort2` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblCreditCard`;

CREATE TABLE `tblCreditCard` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateExpirationNoticeSent` datetime DEFAULT NULL,
  `intExpireMonth` bigint DEFAULT NULL,
  `intExpireYear` bigint DEFAULT NULL,
  `intPaymentProfileID` bigint NOT NULL,
  `strLastFour` varchar(8) COLLATE utf8mb3_bin DEFAULT NULL,
  `strNameOnCard` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `strTokenKey` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblCreditCardIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblCreditCardToTblPaymentProfileViaIntPaymentProfileID` (`intPaymentProfileID`),
  CONSTRAINT `fkTblCreditCardToTblPaymentProfileViaIntPaymentProfileID` FOREIGN KEY (`intPaymentProfileID`) REFERENCES `tblPaymentProfile` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblCreditCardToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblCrmMetrics`;

CREATE TABLE `tblCrmMetrics` (
  `id` bigint NOT NULL,
  `intTenantID` bigint DEFAULT NULL,
  `dblValue` double DEFAULT NULL,
  `dtmDatePeriodEnd` datetime DEFAULT NULL,
  `dtmDatePeriodStart` datetime DEFAULT NULL,
  `intCrmMetricTypeID` bigint DEFAULT NULL,
  `intDay` bigint DEFAULT NULL,
  `intMonth` bigint DEFAULT NULL,
  `intValue` bigint DEFAULT NULL,
  `intYear` bigint DEFAULT NULL,
  `strPeriodType` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblCrmMetricsIntYearIntMonthIntDayStrPeriodTypeIntCr604627880` (`intYear`,`intMonth`,`intDay`,`strPeriodType`,`intCrmMetricTypeID`,`intTenantID`),
  KEY `fkTblCrmMetricsToTblCrmMetricsTypeViaIntCrmMetricTypeID` (`intCrmMetricTypeID`),
  KEY `fkTblCrmMetricsToTblTenantViaIntTenantID` (`intTenantID`),
  CONSTRAINT `fkTblCrmMetricsToTblCrmMetricsTypeViaIntCrmMetricTypeID` FOREIGN KEY (`intCrmMetricTypeID`) REFERENCES `tblCrmMetricsType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblCrmMetricsToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblCrmMetricsSettings`;

CREATE TABLE `tblCrmMetricsSettings` (
  `id` bigint NOT NULL,
  `dtmInceptionDate` datetime DEFAULT NULL,
  `dtmStartFullCalculationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblCrmMetricsType`;

CREATE TABLE `tblCrmMetricsType` (
  `id` bigint NOT NULL,
  `bolCalculatedOnly` tinyint DEFAULT NULL,
  `intCrmMetricsTypeFormatID` bigint DEFAULT NULL,
  `strDescription` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strMetric` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblCrmMetricsTypeToTblCrmMetricsTypeFormatViaIntCrm1049697325` (`intCrmMetricsTypeFormatID`),
  CONSTRAINT `fkTblCrmMetricsTypeToTblCrmMetricsTypeFormatViaIntCrm1049697325` FOREIGN KEY (`intCrmMetricsTypeFormatID`) REFERENCES `tblCrmMetricsTypeFormat` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblCrmMetricsTypeFormat`;

CREATE TABLE `tblCrmMetricsTypeFormat` (
  `id` bigint NOT NULL,
  `strFormat` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSymbol` varchar(10) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblCrmMetricsUser`;

CREATE TABLE `tblCrmMetricsUser` (
  `id` bigint NOT NULL,
  `bolMetricsHaveSameUnit` tinyint DEFAULT NULL,
  `intCrmMetric1ID` bigint DEFAULT NULL,
  `intCrmMetric2ID` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  `strPeriodType` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblCrmMetricsUserToTblCrmMetricsTypeViaIntCrmMetric2ID` (`intCrmMetric2ID`),
  KEY `fkTblCrmMetricsUserToTblCrmMetricsTypeViaIntCrmMetric1ID` (`intCrmMetric1ID`),
  KEY `fkTblCrmMetricsUserToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblCrmMetricsUserToTblCrmMetricsTypeViaIntCrmMetric1ID` FOREIGN KEY (`intCrmMetric1ID`) REFERENCES `tblCrmMetricsType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblCrmMetricsUserToTblCrmMetricsTypeViaIntCrmMetric2ID` FOREIGN KEY (`intCrmMetric2ID`) REFERENCES `tblCrmMetricsType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblCrmMetricsUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblCurrency`;

CREATE TABLE `tblCurrency` (
  `id` bigint NOT NULL,
  `strDescription` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL,
  `strISOCode` varchar(3) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSymbol` varchar(4) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblCustomField`;

CREATE TABLE `tblCustomField` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolApplyToChildren` tinyint DEFAULT NULL,
  `intAssetCategoryID` bigint DEFAULT NULL,
  `strBaseTable` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  `strName` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strType` varchar(3) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblCustomFieldIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblCustomFieldToTblAssetCategoryViaIntAssetCategoryID` (`intAssetCategoryID`),
  CONSTRAINT `fkTblCustomFieldToTblAssetCategoryViaIntAssetCategoryID` FOREIGN KEY (`intAssetCategoryID`) REFERENCES `tblAssetCategory` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblCustomFieldToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblCustomFieldValue`;

CREATE TABLE `tblCustomFieldValue` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `datDateValue` datetime DEFAULT NULL,
  `dblDoubleValue` double DEFAULT NULL,
  `dtmDateTimeValue` datetime DEFAULT NULL,
  `intBaseTableID` bigint NOT NULL,
  `intCustomFieldID` bigint NOT NULL,
  `intIntValue` bigint DEFAULT NULL,
  `qtyQuantityValue` double DEFAULT NULL,
  `strBaseTable` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  `strClobValue` longtext COLLATE utf8mb3_bin,
  `strStringValue` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblCustomFieldValueIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblCustomFieldValueIntCustomFieldIDIntIntValueIntTenantID` (`intCustomFieldID`,`intIntValue`,`intTenantID`),
  KEY `xTblCustomFieldValueIntCustomFieldIDIntBaseTableIDIntTenantID` (`intCustomFieldID`,`intBaseTableID`,`intTenantID`),
  CONSTRAINT `fkTblCustomFieldValueToTblCustomFieldViaIntCustomFieldID` FOREIGN KEY (`intCustomFieldID`) REFERENCES `tblCustomField` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblCustomFieldValueToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblCustomQuery`;

CREATE TABLE `tblCustomQuery` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolShared` tinyint NOT NULL,
  `dtmDateCreated` datetime NOT NULL,
  `intCreatedByUserID` bigint NOT NULL,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strSerializedform` longtext COLLATE utf8mb3_bin,
  `strTableName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblCustomQueryIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblCustomQueryToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`),
  CONSTRAINT `fkTblCustomQueryToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblCustomQueryToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblCycleCount`;

CREATE TABLE `tblCycleCount` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolComplete` tinyint DEFAULT NULL,
  `bolIncludeClassA` tinyint DEFAULT NULL,
  `bolIncludeClassB` tinyint DEFAULT NULL,
  `bolIncludeClassC` tinyint DEFAULT NULL,
  `bolIncludeNotClassified` tinyint DEFAULT NULL,
  `dblGrossVariance` double DEFAULT NULL,
  `dblNetVariance` double DEFAULT NULL,
  `dblTotalValueCounted` double DEFAULT NULL,
  `dblTotalValueExpected` double DEFAULT NULL,
  `dtmCompleted` datetime DEFAULT NULL,
  `dtmCreated` datetime DEFAULT NULL,
  `intCompletedBy` bigint DEFAULT NULL,
  `intCreatedBy` bigint DEFAULT NULL,
  `intFacilityID` bigint DEFAULT NULL,
  `intSiteID` bigint NOT NULL,
  `intUpdated` bigint NOT NULL,
  `strAisle` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strBin` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strRow` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblCycleCountIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblCycleCountIntTenantIDStrUuid` (`intTenantID`,`strUuid`),
  KEY `xTblCycleCountIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblCycleCountToTblUserViaIntCompletedBy` (`intCompletedBy`),
  KEY `fkTblCycleCountToTblAssetViaIntFacilityID` (`intFacilityID`),
  KEY `fkTblCycleCountToTblAssetViaIntSiteIDAndIntTenantID` (`intTenantID`,`intSiteID`),
  KEY `fkTblCycleCountToTblUserViaIntCreatedBy` (`intCreatedBy`),
  CONSTRAINT `fkTblCycleCountToTblAssetViaIntFacilityID` FOREIGN KEY (`intFacilityID`) REFERENCES `tblAsset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblCycleCountToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intSiteID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblCycleCountToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblCycleCountToTblUserViaIntCompletedBy` FOREIGN KEY (`intCompletedBy`) REFERENCES `tblUser` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblCycleCountToTblUserViaIntCreatedBy` FOREIGN KEY (`intCreatedBy`) REFERENCES `tblUser` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblDashboard`;

CREATE TABLE `tblDashboard` (
  `id` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `bolAvailable` tinyint DEFAULT NULL,
  `bolSharedDashboardTemplate` tinyint NOT NULL,
  `intDashboardType` bigint DEFAULT NULL,
  `intOwnerTenantID` bigint DEFAULT NULL,
  `intSharedDashboardTemplateID` int DEFAULT NULL,
  `intUserID` bigint NOT NULL,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strSelectedSites` varchar(15000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strTitle` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblDashboardToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblDashboardToTblTenantViaIntOwnerTenantID` (`intOwnerTenantID`),
  CONSTRAINT `fkTblDashboardToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblDashboardToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardBI` BEFORE INSERT ON `tbldashboard` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardBU` BEFORE UPDATE ON `tbldashboard` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardBD` BEFORE DELETE ON `tbldashboard` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `tblDashboardDashboardPersona`;

CREATE TABLE `tblDashboardDashboardPersona` (
  `id` bigint NOT NULL,
  `intDashboardID` bigint NOT NULL,
  `intDashboardPersonaID` bigint NOT NULL,
  `intOwnerTenantID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblDashboardDashboardPersonaIntOwnerTenantIDIntDashb428518830` (`intOwnerTenantID`,`intDashboardID`,`intDashboardPersonaID`),
  KEY `fkTblDashboardDashboardPersonaToTblDashboardViaIntDashboardID` (`intDashboardID`),
  KEY `fkTblDashboardDashboardPersonaToTblDashboardPersonaVia328257604` (`intDashboardPersonaID`),
  CONSTRAINT `fkTblDashboardDashboardPersonaToTblDashboardPersonaVia328257604` FOREIGN KEY (`intDashboardPersonaID`) REFERENCES `tblDashboardPersona` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblDashboardDashboardPersonaToTblDashboardViaIntDashboardID` FOREIGN KEY (`intDashboardID`) REFERENCES `tblDashboard` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblDashboardDashboardPersonaToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardDashboardPersonaBI` BEFORE INSERT ON `tbldashboarddashboardpersona` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardDashboardPersonaBU` BEFORE UPDATE ON `tbldashboarddashboardpersona` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardDashboardPersonaBD` BEFORE DELETE ON `tbldashboarddashboardpersona` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `tblDashboardFeatureNotice`;

CREATE TABLE `tblDashboardFeatureNotice` (
  `id` bigint NOT NULL,
  `bolActive` tinyint DEFAULT NULL,
  `bolDisplayOnTop` tinyint DEFAULT NULL,
  `intOwnerTenantID` bigint DEFAULT NULL,
  `intProductTierID` bigint DEFAULT NULL,
  `strDescription` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strStyle` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUrlOverride` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblDashboardFeatureNoticeToTblProductTierViaIntProductTierID` (`intProductTierID`),
  KEY `fkTblDashboardFeatureNoticeToTblTenantViaIntOwnerTenantID` (`intOwnerTenantID`),
  CONSTRAINT `fkTblDashboardFeatureNoticeToTblProductTierViaIntProductTierID` FOREIGN KEY (`intProductTierID`) REFERENCES `tblProductTier` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblDashboardFeatureNoticeToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardFeatureNoticeBI` BEFORE INSERT ON `tbldashboardfeaturenotice` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardFeatureNoticeBU` BEFORE UPDATE ON `tbldashboardfeaturenotice` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardFeatureNoticeBD` BEFORE DELETE ON `tbldashboardfeaturenotice` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `tblDashboardPersona`;

CREATE TABLE `tblDashboardPersona` (
  `id` bigint NOT NULL,
  `intTenantID` bigint DEFAULT NULL,
  `intSharedDashboardID` bigint DEFAULT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblDashboardPersonaToTblDashboardViaIntSharedDashboardID` (`intSharedDashboardID`),
  KEY `fkTblDashboardPersonaToTblTenantViaIntTenantID` (`intTenantID`),
  CONSTRAINT `fkTblDashboardPersonaToTblDashboardViaIntSharedDashboardID` FOREIGN KEY (`intSharedDashboardID`) REFERENCES `tblDashboard` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblDashboardPersonaToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblDashboardWidget`;

CREATE TABLE `tblDashboardWidget` (
  `id` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `bolAvailable` tinyint DEFAULT NULL,
  `bolAvailableRestricted` tinyint DEFAULT NULL,
  `bolDisplayAsPercentage` tinyint DEFAULT NULL,
  `bolRestricted` tinyint DEFAULT NULL,
  `intOwnerTenantID` bigint DEFAULT NULL,
  `intQueryTypeID` bigint DEFAULT NULL,
  `intResultPrecision` int DEFAULT NULL,
  `intUnitType` int DEFAULT NULL,
  `intWidgetCategoryID` bigint DEFAULT NULL,
  `strChartType` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strColorScheme` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strFullName` varchar(512) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUnit` varchar(8) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblDashboardWidgetIntSysCode` (`intSysCode`),
  UNIQUE KEY `xuTblDashboardWidgetStrFullName` (`strFullName`),
  KEY `fkTblDashboardWidgetToTblTenantViaIntOwnerTenantID` (`intOwnerTenantID`),
  KEY `fkTblDashboardWidgetToTblDashboardWidgetCategoryViaInt694956624` (`intWidgetCategoryID`),
  CONSTRAINT `fkTblDashboardWidgetToTblDashboardWidgetCategoryViaInt694956624` FOREIGN KEY (`intWidgetCategoryID`) REFERENCES `tblDashboardWidgetCategory` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblDashboardWidgetToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardWidgetBI` BEFORE INSERT ON `tbldashboardwidget` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardWidgetBU` BEFORE UPDATE ON `tbldashboardwidget` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardWidgetBD` BEFORE DELETE ON `tbldashboardwidget` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `tblDashboardWidgetCategory`;

CREATE TABLE `tblDashboardWidgetCategory` (
  `id` bigint NOT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblDashboardWidgetDashboardPersona`;

CREATE TABLE `tblDashboardWidgetDashboardPersona` (
  `id` bigint NOT NULL,
  `intDashboardPersonaID` bigint NOT NULL,
  `intOwnerTenantID` bigint DEFAULT NULL,
  `intWidgetID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblDashboardWidgetDashboardPersonaIntOwnerTenantIDI2101447796` (`intOwnerTenantID`,`intWidgetID`,`intDashboardPersonaID`),
  KEY `fkTblDashboardWidgetDashboardPersonaToTblDashboardPers465988632` (`intDashboardPersonaID`),
  KEY `fkTblDashboardWidgetDashboardPersonaToTblDashboardWid1798115596` (`intWidgetID`),
  CONSTRAINT `fkTblDashboardWidgetDashboardPersonaToTblDashboardPers465988632` FOREIGN KEY (`intDashboardPersonaID`) REFERENCES `tblDashboardPersona` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblDashboardWidgetDashboardPersonaToTblDashboardWid1798115596` FOREIGN KEY (`intWidgetID`) REFERENCES `tblDashboardWidget` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblDashboardWidgetDashboardPersonaToTblTenantViaInt1705383681` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardWidgetDashboardPersonaBI` BEFORE INSERT ON `tbldashboardwidgetdashboardpersona` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardWidgetDashboardPersonaBU` BEFORE UPDATE ON `tbldashboardwidgetdashboardpersona` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardWidgetDashboardPersonaBD` BEFORE DELETE ON `tbldashboardwidgetdashboardpersona` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `tblDashboardWidgetParameter`;

CREATE TABLE `tblDashboardWidgetParameter` (
  `id` bigint NOT NULL,
  `bolAllowMultipleValues` tinyint DEFAULT NULL,
  `intDashboardWidgetQueryID` bigint NOT NULL,
  `intOwnerTenantID` bigint DEFAULT NULL,
  `intParamValueType` bigint DEFAULT NULL,
  `strDefaultValueQuery` longtext COLLATE utf8mb3_bin,
  `strFullName` varchar(512) COLLATE utf8mb3_bin DEFAULT NULL,
  `strParamEntityQuery` longtext COLLATE utf8mb3_bin,
  `strParamEntityType` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strParamLabel` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strParamName` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblDashboardWidgetParameterStrFullName` (`strFullName`),
  KEY `fkTblDashboardWidgetParameterToTblDashboardWidgetQuer2050682901` (`intDashboardWidgetQueryID`),
  KEY `fkTblDashboardWidgetParameterToTblTenantViaIntOwnerTenantID` (`intOwnerTenantID`),
  CONSTRAINT `fkTblDashboardWidgetParameterToTblDashboardWidgetQuer2050682901` FOREIGN KEY (`intDashboardWidgetQueryID`) REFERENCES `tblDashboardWidgetQuery` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblDashboardWidgetParameterToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardWidgetParameterBI` BEFORE INSERT ON `tbldashboardwidgetparameter` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardWidgetParameterBU` BEFORE UPDATE ON `tbldashboardwidgetparameter` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardWidgetParameterBD` BEFORE DELETE ON `tbldashboardwidgetparameter` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `tblDashboardWidgetPosition`;

CREATE TABLE `tblDashboardWidgetPosition` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolLockAspectRatio` tinyint DEFAULT NULL,
  `intDashboardID` bigint NOT NULL,
  `intHeight` bigint DEFAULT NULL,
  `intMinHeight` bigint DEFAULT NULL,
  `intMinWidth` bigint DEFAULT NULL,
  `intWidgetID` bigint NOT NULL,
  `intWidth` bigint DEFAULT NULL,
  `intXPosition` bigint DEFAULT NULL,
  `intYPosition` bigint DEFAULT NULL,
  `strTitleOverride` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblDashboardWidgetPositionIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblDashboardWidgetPositionToTblDashboardViaIntDashboardID` (`intDashboardID`),
  KEY `fkTblDashboardWidgetPositionToTblDashboardWidgetViaIntWidgetID` (`intWidgetID`),
  CONSTRAINT `fkTblDashboardWidgetPositionToTblDashboardViaIntDashboardID` FOREIGN KEY (`intDashboardID`) REFERENCES `tblDashboard` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblDashboardWidgetPositionToTblDashboardWidgetViaIntWidgetID` FOREIGN KEY (`intWidgetID`) REFERENCES `tblDashboardWidget` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblDashboardWidgetPositionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblDashboardWidgetPositionFilter`;

CREATE TABLE `tblDashboardWidgetPositionFilter` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolActive` tinyint DEFAULT NULL,
  `intSubQueryID` bigint NOT NULL,
  `intWidgetPositionID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblDashboardWidgetPositionFilterIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblDashboardWidgetPositionFilterIntTenantIDIntWidget638798889` (`intTenantID`,`intWidgetPositionID`,`intSubQueryID`),
  KEY `fkTblDashboardWidgetPositionFilterToTblDashboardWidge1437204759` (`intSubQueryID`),
  CONSTRAINT `fkTblDashboardWidgetPositionFilterToTblDashboardWidge1437204759` FOREIGN KEY (`intSubQueryID`) REFERENCES `tblDashboardWidgetQuery` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblDashboardWidgetPositionFilterToTblDashboardWidge1913181316` FOREIGN KEY (`intTenantID`, `intWidgetPositionID`) REFERENCES `tblDashboardWidgetPosition` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblDashboardWidgetPositionFilterToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblDashboardWidgetPositionParameter`;

CREATE TABLE `tblDashboardWidgetPositionParameter` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intDashboardWidgetParameterID` bigint NOT NULL,
  `intWidgetPositionID` bigint NOT NULL,
  `strParamValue` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblDashboardWidgetPositionParameterIntTenantIDIntWi1510390319` (`intTenantID`,`intWidgetPositionID`,`intDashboardWidgetParameterID`),
  UNIQUE KEY `xuTblDashboardWidgetPositionParameterIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblDashboardWidgetPositionParameterToTblDashboardWi1451014240` (`intDashboardWidgetParameterID`),
  CONSTRAINT `fkTblDashboardWidgetPositionParameterToTblDashboardWi1451014240` FOREIGN KEY (`intDashboardWidgetParameterID`) REFERENCES `tblDashboardWidgetParameter` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblDashboardWidgetPositionParameterToTblDashboardWid730743525` FOREIGN KEY (`intTenantID`, `intWidgetPositionID`) REFERENCES `tblDashboardWidgetPosition` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblDashboardWidgetPositionParameterToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblDashboardWidgetQuery`;

CREATE TABLE `tblDashboardWidgetQuery` (
  `id` bigint NOT NULL,
  `intDashboardWidgetID` bigint NOT NULL,
  `intOrder` bigint DEFAULT NULL,
  `intOwnerTenantID` bigint DEFAULT NULL,
  `intSubQueryTypeID` bigint DEFAULT NULL,
  `strFullName` varchar(512) COLLATE utf8mb3_bin DEFAULT NULL,
  `strLabel` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strQuery` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblDashboardWidgetQueryStrFullName` (`strFullName`),
  KEY `fkTblDashboardWidgetQueryToTblDashboardWidgetViaIntDas156836436` (`intDashboardWidgetID`),
  KEY `fkTblDashboardWidgetQueryToTblTenantViaIntOwnerTenantID` (`intOwnerTenantID`),
  CONSTRAINT `fkTblDashboardWidgetQueryToTblDashboardWidgetViaIntDas156836436` FOREIGN KEY (`intDashboardWidgetID`) REFERENCES `tblDashboardWidget` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblDashboardWidgetQueryToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardWidgetQueryBI` BEFORE INSERT ON `tbldashboardwidgetquery` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardWidgetQueryBU` BEFORE UPDATE ON `tbldashboardwidgetquery` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDashboardWidgetQueryBD` BEFORE DELETE ON `tbldashboardwidgetquery` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `tblDatabaseExport`;

CREATE TABLE `tblDatabaseExport` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolExcludeFromLimitChecking` tinyint DEFAULT NULL,
  `bolIncludeFiles` tinyint DEFAULT NULL,
  `bolPasswordProtected` tinyint DEFAULT NULL,
  `dtmGenerationFinished` datetime DEFAULT NULL,
  `dtmGenerationStarted` datetime DEFAULT NULL,
  `intApplicationID` bigint NOT NULL,
  `intErrorCode` int DEFAULT NULL,
  `intFileContentsID` bigint DEFAULT NULL,
  `intGeneratedByUserID` bigint DEFAULT NULL,
  `intWorkerID` bigint DEFAULT NULL,
  `strIncludedTenants` longtext COLLATE utf8mb3_bin,
  `strName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblDatabaseExportIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblDatabaseExportToTblFileContentsViaIntFileContentsID` (`intFileContentsID`),
  KEY `fkTblDatabaseExportToTblUserViaIntGeneratedByUserID` (`intGeneratedByUserID`),
  KEY `fkTblDatabaseExportToTblApplicationViaIntApplicationID` (`intApplicationID`),
  CONSTRAINT `fkTblDatabaseExportToTblApplicationViaIntApplicationID` FOREIGN KEY (`intApplicationID`) REFERENCES `tblApplication` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblDatabaseExportToTblFileContentsViaIntFileContentsID` FOREIGN KEY (`intFileContentsID`) REFERENCES `tblFileContents` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblDatabaseExportToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblDatabaseExportToTblUserViaIntGeneratedByUserID` FOREIGN KEY (`intGeneratedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblDdColumn`;

CREATE TABLE `tblDdColumn` (
  `id` bigint NOT NULL,
  `intTenantID` bigint DEFAULT NULL,
  `bolCustom` tinyint NOT NULL,
  `bolLegacyApplyToChildren` tinyint DEFAULT NULL,
  `intDdColumnTypeID` bigint NOT NULL,
  `intDdTableID` bigint NOT NULL,
  `intImportedFromCustomFieldID` bigint DEFAULT NULL,
  `intLegacyAssetCategoryID` bigint DEFAULT NULL,
  `intPkDdTableID` bigint DEFAULT NULL,
  `strLabel` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblDdColumnStrNameIntDdTableIDIntTenantID` (`strName`,`intDdTableID`,`intTenantID`),
  KEY `fkTblDdColumnToTblDdTableViaIntPkDdTableID` (`intPkDdTableID`),
  KEY `fkTblDdColumnToTblAssetCategoryViaIntLegacyAssetCategoryID` (`intLegacyAssetCategoryID`),
  KEY `fkTblDdColumnToTblDdTableViaIntDdTableID` (`intDdTableID`),
  KEY `fkTblDdColumnToTblCustomFieldViaIntImportedFromCustomFieldID` (`intImportedFromCustomFieldID`),
  KEY `fkTblDdColumnToTblTenantViaIntTenantID` (`intTenantID`),
  KEY `fkTblDdColumnToTblDdColumnTypeViaIntDdColumnTypeID` (`intDdColumnTypeID`),
  CONSTRAINT `fkTblDdColumnToTblAssetCategoryViaIntLegacyAssetCategoryID` FOREIGN KEY (`intLegacyAssetCategoryID`) REFERENCES `tblAssetCategory` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblDdColumnToTblCustomFieldViaIntImportedFromCustomFieldID` FOREIGN KEY (`intImportedFromCustomFieldID`) REFERENCES `tblCustomField` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblDdColumnToTblDdColumnTypeViaIntDdColumnTypeID` FOREIGN KEY (`intDdColumnTypeID`) REFERENCES `tblDdColumnType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblDdColumnToTblDdTableViaIntDdTableID` FOREIGN KEY (`intDdTableID`) REFERENCES `tblDdTable` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblDdColumnToTblDdTableViaIntPkDdTableID` FOREIGN KEY (`intPkDdTableID`) REFERENCES `tblDdTable` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblDdColumnToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDdColumnBI` BEFORE INSERT ON `tblddcolumn` FOR EACH ROW BEGIN 
	IF NEW.intTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDdColumnBU` BEFORE UPDATE ON `tblddcolumn` FOR EACH ROW BEGIN 
	IF NEW.intTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDdColumnBD` BEFORE DELETE ON `tblddcolumn` FOR EACH ROW BEGIN 
	IF OLD.intTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `tblDdColumnType`;

CREATE TABLE `tblDdColumnType` (
  `id` bigint NOT NULL,
  `strLabel` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblDdCustomTableRow`;

CREATE TABLE `tblDdCustomTableRow` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intDdTableID` bigint NOT NULL,
  `strSysCustomColumnValues` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblDdCustomTableRowIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblDdCustomTableRowToTblDdTableViaIntDdTableID` (`intDdTableID`),
  CONSTRAINT `fkTblDdCustomTableRowToTblDdTableViaIntDdTableID` FOREIGN KEY (`intDdTableID`) REFERENCES `tblDdTable` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblDdCustomTableRowToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblDdTable`;

CREATE TABLE `tblDdTable` (
  `id` bigint NOT NULL,
  `intTenantID` bigint DEFAULT NULL,
  `bolCustom` tinyint NOT NULL,
  `intDdTableTypeID` bigint NOT NULL,
  `intLabelDdColumnID` bigint DEFAULT NULL,
  `strLabel` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblDdTableStrNameIntTenantID` (`strName`,`intTenantID`),
  KEY `fkTblDdTableToTblDdTableTypeViaIntDdTableTypeID` (`intDdTableTypeID`),
  KEY `fkTblDdTableToTblDdColumnViaIntLabelDdColumnID` (`intLabelDdColumnID`),
  KEY `fkTblDdTableToTblTenantViaIntTenantID` (`intTenantID`),
  CONSTRAINT `fkTblDdTableToTblDdColumnViaIntLabelDdColumnID` FOREIGN KEY (`intLabelDdColumnID`) REFERENCES `tblDdColumn` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblDdTableToTblDdTableTypeViaIntDdTableTypeID` FOREIGN KEY (`intDdTableTypeID`) REFERENCES `tblDdTableType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblDdTableToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDdTableBI` BEFORE INSERT ON `tblddtable` FOR EACH ROW BEGIN 
	IF NEW.intTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDdTableBU` BEFORE UPDATE ON `tblddtable` FOR EACH ROW BEGIN 
	IF NEW.intTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblDdTableBD` BEFORE DELETE ON `tblddtable` FOR EACH ROW BEGIN 
	IF OLD.intTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `tblDdTableType`;

CREATE TABLE `tblDdTableType` (
  `id` bigint NOT NULL,
  `strLabel` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblDistribution`;

CREATE TABLE `tblDistribution` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolActive` tinyint DEFAULT NULL,
  `intDistributionBillingPlanID` bigint NOT NULL,
  `strNotes` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblDistributionIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblDistributionIntTenantIDIntDistributionBillingPlanID` (`intTenantID`,`intDistributionBillingPlanID`),
  KEY `fkTblDistributionToTblDistributionBillingPlanViaIntDis844418560` (`intDistributionBillingPlanID`),
  CONSTRAINT `fkTblDistributionToTblDistributionBillingPlanViaIntDis844418560` FOREIGN KEY (`intDistributionBillingPlanID`) REFERENCES `tblDistributionBillingPlan` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblDistributionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblDistributionBillingPlan`;

CREATE TABLE `tblDistributionBillingPlan` (
  `id` bigint NOT NULL,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblDistributionPaymentMethod`;

CREATE TABLE `tblDistributionPaymentMethod` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intDistributionID` bigint NOT NULL,
  `intPaymentMethodID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblDistributionPaymentMethodIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblDistributionPaymentMethodIntDistributionIDIntPaym726019519` (`intDistributionID`,`intPaymentMethodID`),
  KEY `fkTblDistributionPaymentMethodToTblPaymentMethodViaIn1784404493` (`intPaymentMethodID`),
  CONSTRAINT `fkTblDistributionPaymentMethodToTblDistributionViaIntD588153981` FOREIGN KEY (`intDistributionID`) REFERENCES `tblDistribution` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblDistributionPaymentMethodToTblPaymentMethodViaIn1784404493` FOREIGN KEY (`intPaymentMethodID`) REFERENCES `tblPaymentMethod` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblDistributionPaymentMethodToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblDistributionPricingTier`;

CREATE TABLE `tblDistributionPricingTier` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolActive` tinyint DEFAULT NULL,
  `bolApplyAutoDiscounts` tinyint DEFAULT NULL,
  `dblDefaultPrice` double DEFAULT NULL,
  `intDistributionID` bigint NOT NULL,
  `intPricingTierID` bigint DEFAULT NULL,
  `intQuantity` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblDistributionPricingTierIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblDistributionPricingTierIntDistributionIDIntPricingTierID` (`intDistributionID`,`intPricingTierID`),
  KEY `fkTblDistributionPricingTierToTblPricingTierViaIntPricingTierID` (`intPricingTierID`),
  CONSTRAINT `fkTblDistributionPricingTierToTblDistributionViaIntDi1412099044` FOREIGN KEY (`intDistributionID`) REFERENCES `tblDistribution` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblDistributionPricingTierToTblPricingTierViaIntPricingTierID` FOREIGN KEY (`intPricingTierID`) REFERENCES `tblPricingTier` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblDistributionPricingTierToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblDistributionRecurringType`;

CREATE TABLE `tblDistributionRecurringType` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intDistributionID` bigint NOT NULL,
  `intRecurringTypeID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblDistributionRecurringTypeIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblDistributionRecurringTypeIntDistributionIDIntRec1010134081` (`intDistributionID`,`intRecurringTypeID`),
  KEY `fkTblDistributionRecurringTypeToTblRecurringTypeViaInt313665341` (`intRecurringTypeID`),
  CONSTRAINT `fkTblDistributionRecurringTypeToTblDistributionViaIntD702617933` FOREIGN KEY (`intDistributionID`) REFERENCES `tblDistribution` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblDistributionRecurringTypeToTblRecurringTypeViaInt313665341` FOREIGN KEY (`intRecurringTypeID`) REFERENCES `tblRecurringType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblDistributionRecurringTypeToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblDistributionUnitPricingRule`;

CREATE TABLE `tblDistributionUnitPricingRule` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblPrice` double NOT NULL,
  `intCeilingQuantity` bigint NOT NULL,
  `intDistributionPricingTierID` bigint NOT NULL,
  `intFloorQuantity` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblDistributionUnitPricingRuleIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblDistributionUnitPricingRuleToTblDistributionPric1148256324` (`intDistributionPricingTierID`),
  CONSTRAINT `fkTblDistributionUnitPricingRuleToTblDistributionPric1148256324` FOREIGN KEY (`intDistributionPricingTierID`) REFERENCES `tblDistributionPricingTier` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblDistributionUnitPricingRuleToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblEmailAddress`;

CREATE TABLE `tblEmailAddress` (
  `id` bigint NOT NULL,
  `intLastEmailAddressStatusID` bigint NOT NULL,
  `intLastEmailStatusCount` bigint DEFAULT NULL,
  `strNormalizedDomain` varchar(1024) COLLATE utf8mb3_bin NOT NULL,
  `strNormalizedEmailAddress` varchar(1024) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblEmailAddressStrNormalizedEmailAddress` (`strNormalizedEmailAddress`),
  KEY `fkTblEmailAddressToTblEmailAddressStatusViaIntLastEmai898905720` (`intLastEmailAddressStatusID`),
  CONSTRAINT `fkTblEmailAddressToTblEmailAddressStatusViaIntLastEmai898905720` FOREIGN KEY (`intLastEmailAddressStatusID`) REFERENCES `tblEmailAddressStatus` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblEmailAddressSmtpEvent`;

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

DROP TABLE IF EXISTS `tblEmailAddressStatus`;

CREATE TABLE `tblEmailAddressStatus` (
  `id` bigint NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblEmailAddressStatusStrName` (`strName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblEmailAttachment`;

CREATE TABLE `tblEmailAttachment` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intEmailMessageID` bigint NOT NULL,
  `intSize` bigint DEFAULT NULL,
  `strMimeType` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblEmailAttachmentIntTenantIDIntEmailMessageIDStrName` (`intTenantID`,`intEmailMessageID`,`strName`),
  UNIQUE KEY `xuTblEmailAttachmentIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblEmailAttachmentToTblEmailMessageViaIntEmailMessageID` (`intEmailMessageID`),
  CONSTRAINT `fkTblEmailAttachmentToTblEmailMessageViaIntEmailMessageID` FOREIGN KEY (`intEmailMessageID`) REFERENCES `tblEmailMessage` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblEmailAttachmentToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblEmailMessage`;

CREATE TABLE `tblEmailMessage` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolIsReady` tinyint NOT NULL,
  `dtmDateAccepted` datetime DEFAULT NULL,
  `dtmLastSentAttempt` datetime DEFAULT NULL,
  `intSenderBusinessID` bigint DEFAULT NULL,
  `strContents` longtext COLLATE utf8mb3_bin,
  `strContents2` longtext COLLATE utf8mb3_bin,
  `strFrom` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strRecipients` longtext COLLATE utf8mb3_bin,
  `strSubject` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblEmailMessageIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblEmailMessageToTblBusinessViaIntSenderBusinessID` (`intSenderBusinessID`),
  CONSTRAINT `fkTblEmailMessageToTblBusinessViaIntSenderBusinessID` FOREIGN KEY (`intSenderBusinessID`) REFERENCES `tblBusiness` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblEmailMessageToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblEpicFeatureNotice`;

CREATE TABLE `tblEpicFeatureNotice` (
  `id` bigint NOT NULL,
  `bolActive` tinyint DEFAULT NULL,
  `intOwnerTenantID` bigint DEFAULT NULL,
  `strDescription` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strUrlOverride` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblEpicFeatureNoticeToTblTenantViaIntOwnerTenantID` (`intOwnerTenantID`),
  CONSTRAINT `fkTblEpicFeatureNoticeToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblEpicFeatureNoticeBI` BEFORE INSERT ON `tblepicfeaturenotice` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblEpicFeatureNoticeBU` BEFORE UPDATE ON `tblepicfeaturenotice` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblEpicFeatureNoticeBD` BEFORE DELETE ON `tblepicfeaturenotice` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `tblEpicFeatureNoticePricingTier`;

CREATE TABLE `tblEpicFeatureNoticePricingTier` (
  `id` bigint NOT NULL,
  `intEpicFeatureNoticeID` bigint NOT NULL,
  `intPricingTierID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblEpicFeatureNoticePricingTierToTblEpicFeatureNoti1581744475` (`intEpicFeatureNoticeID`),
  KEY `fkTblEpicFeatureNoticePricingTierToTblPricingTierViaIn844431749` (`intPricingTierID`),
  CONSTRAINT `fkTblEpicFeatureNoticePricingTierToTblEpicFeatureNoti1581744475` FOREIGN KEY (`intEpicFeatureNoticeID`) REFERENCES `tblEpicFeatureNotice` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblEpicFeatureNoticePricingTierToTblPricingTierViaIn844431749` FOREIGN KEY (`intPricingTierID`) REFERENCES `tblPricingTier` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblEvent`;

CREATE TABLE `tblEvent` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmEventDate` datetime NOT NULL,
  `intDtoPkId` bigint DEFAULT NULL,
  `intHandlerVersion` int DEFAULT NULL,
  `intLifecycleLogId` bigint DEFAULT NULL,
  `intSiteID` bigint NOT NULL,
  `intUserID` bigint DEFAULT NULL,
  `strContext` varchar(4096) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDescOrContent` varchar(4096) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDtoClass` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strEventType` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strLifecycleLogClass` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblEventIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblEventStrDtoClassIntDtoPkIdIntSiteIDStrEventType` (`strDtoClass`,`intDtoPkId`,`intSiteID`,`strEventType`),
  KEY `xTblEventIntDtoPkId` (`intDtoPkId`),
  KEY `fkTblEventToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblEventToTblAssetViaIntSiteID` (`intSiteID`),
  CONSTRAINT `fkTblEventToTblAssetViaIntSiteID` FOREIGN KEY (`intSiteID`) REFERENCES `tblAsset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblEventToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblEventToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblExternalJobStatus`;

CREATE TABLE `tblExternalJobStatus` (
  `id` bigint NOT NULL,
  `dtmCompleted` datetime DEFAULT NULL,
  `dtmCreated` datetime NOT NULL,
  `strStatus` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `strTriggerKey` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblExternalJobStatusStrTriggerKey` (`strTriggerKey`),
  KEY `xTblExternalJobStatusDtmCreated` (`dtmCreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblFeature`;

CREATE TABLE `tblFeature` (
  `id` bigint NOT NULL,
  `intFeatureCategoryID` bigint DEFAULT NULL,
  `intFeatureValueTypeID` bigint DEFAULT NULL,
  `intOrder` bigint DEFAULT NULL,
  `intProductID` bigint DEFAULT NULL,
  `strDescription` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xTblFeatureStrUuid` (`strUuid`),
  KEY `fkTblFeatureToTblFeatureCategoryViaIntFeatureCategoryID` (`intFeatureCategoryID`),
  KEY `fkTblFeatureToTblFeatureValueTypeViaIntFeatureValueTypeID` (`intFeatureValueTypeID`),
  KEY `fkTblFeatureToTblProductViaIntProductID` (`intProductID`),
  CONSTRAINT `fkTblFeatureToTblFeatureCategoryViaIntFeatureCategoryID` FOREIGN KEY (`intFeatureCategoryID`) REFERENCES `tblFeatureCategory` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFeatureToTblFeatureValueTypeViaIntFeatureValueTypeID` FOREIGN KEY (`intFeatureValueTypeID`) REFERENCES `tblFeatureValueType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFeatureToTblProductViaIntProductID` FOREIGN KEY (`intProductID`) REFERENCES `tblProduct` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblFeatureCategory`;

CREATE TABLE `tblFeatureCategory` (
  `id` bigint NOT NULL,
  `strDescription` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblFeatureNoticeFilter`;

CREATE TABLE `tblFeatureNoticeFilter` (
  `id` bigint NOT NULL,
  `bolDoNotShowForTenantsWithSuppressMarketing` tinyint DEFAULT NULL,
  `bolTenantIDEven` tinyint DEFAULT NULL,
  `bolTenantIDOdd` tinyint DEFAULT NULL,
  `intBusinessClassificationID` bigint DEFAULT NULL,
  `intCountryID` bigint DEFAULT NULL,
  `intDashboardFeatureNoticeID` bigint DEFAULT NULL,
  `intEpicFeatureNoticeID` bigint DEFAULT NULL,
  `intNumDaysFromSignup` bigint DEFAULT NULL,
  `intNumDaysInactive` bigint DEFAULT NULL,
  `intNumberSeatsMax` bigint DEFAULT NULL,
  `intNumberSeatsMin` bigint DEFAULT NULL,
  `intProductTierID` bigint DEFAULT NULL,
  `intRecurringTypeID` bigint DEFAULT NULL,
  `intTenantAutomationID` bigint DEFAULT NULL,
  `intTenantFilterID` bigint DEFAULT NULL,
  `intTenantIdModuloDivisor` int DEFAULT NULL,
  `intTenantIdModuloRemainder` int DEFAULT NULL,
  `intTenantTypeID` bigint DEFAULT NULL,
  `intUserGroupID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblFeatureNoticeFilterToTblCountryViaIntCountryID` (`intCountryID`),
  KEY `fkTblFeatureNoticeFilterToTblProductTierViaIntProductTierID` (`intProductTierID`),
  KEY `fkTblFeatureNoticeFilterToTblTenantViaIntTenantFilterID` (`intTenantFilterID`),
  KEY `fkTblFeatureNoticeFilterToTblRecurringTypeViaIntRecurringTypeID` (`intRecurringTypeID`),
  KEY `fkTblFeatureNoticeFilterToTblBusinessClassificationVi1127590338` (`intBusinessClassificationID`),
  KEY `fkTblFeatureNoticeFilterToTblDashboardFeatureNoticeVi1961399002` (`intDashboardFeatureNoticeID`),
  KEY `fkTblFeatureNoticeFilterToTblEpicFeatureNoticeViaIntE1887495440` (`intEpicFeatureNoticeID`),
  KEY `fkTblFeatureNoticeFilterToTblTenantAutomationViaIntTena11896844` (`intTenantAutomationID`),
  KEY `fkTblFeatureNoticeFilterToTblTenantTypeViaIntTenantTypeID` (`intTenantTypeID`),
  CONSTRAINT `fkTblFeatureNoticeFilterToTblBusinessClassificationVi1127590338` FOREIGN KEY (`intBusinessClassificationID`) REFERENCES `tblBusinessClassification` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFeatureNoticeFilterToTblCountryViaIntCountryID` FOREIGN KEY (`intCountryID`) REFERENCES `tblCountry` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFeatureNoticeFilterToTblDashboardFeatureNoticeVi1961399002` FOREIGN KEY (`intDashboardFeatureNoticeID`) REFERENCES `tblDashboardFeatureNotice` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblFeatureNoticeFilterToTblEpicFeatureNoticeViaIntE1887495440` FOREIGN KEY (`intEpicFeatureNoticeID`) REFERENCES `tblEpicFeatureNotice` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblFeatureNoticeFilterToTblProductTierViaIntProductTierID` FOREIGN KEY (`intProductTierID`) REFERENCES `tblProductTier` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFeatureNoticeFilterToTblRecurringTypeViaIntRecurringTypeID` FOREIGN KEY (`intRecurringTypeID`) REFERENCES `tblRecurringType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFeatureNoticeFilterToTblTenantAutomationViaIntTena11896844` FOREIGN KEY (`intTenantAutomationID`) REFERENCES `tblTenantAutomation` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblFeatureNoticeFilterToTblTenantTypeViaIntTenantTypeID` FOREIGN KEY (`intTenantTypeID`) REFERENCES `tblTenantType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFeatureNoticeFilterToTblTenantViaIntTenantFilterID` FOREIGN KEY (`intTenantFilterID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblFeatureProperty`;

CREATE TABLE `tblFeatureProperty` (
  `id` bigint NOT NULL,
  `bolBooleanValue` tinyint DEFAULT NULL,
  `bolSeatMultiplier` tinyint DEFAULT NULL,
  `datDateValue` datetime DEFAULT NULL,
  `dblDoubleValue` double DEFAULT NULL,
  `dtmDateTimeValue` datetime DEFAULT NULL,
  `dtmDateUpdated` datetime DEFAULT NULL,
  `intFeatureID` bigint DEFAULT NULL,
  `intFeatureValuePeriodTypeID` bigint DEFAULT NULL,
  `intFeatureValueTypeID` bigint DEFAULT NULL,
  `intLongValue` bigint DEFAULT NULL,
  `intOwnerTenantID` bigint DEFAULT NULL,
  `intPricingTierFeatureID` bigint DEFAULT NULL,
  `intTenantFeatureID` bigint DEFAULT NULL,
  `intUpdatedByUserID` bigint DEFAULT NULL,
  `qtyQtyValue` double DEFAULT NULL,
  `strDescription` varchar(1024) COLLATE utf8mb3_bin NOT NULL,
  `strKey` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strLongStringValue` longtext COLLATE utf8mb3_bin,
  `strName` varchar(512) COLLATE utf8mb3_bin NOT NULL,
  `strStringValue` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strType` varchar(3) COLLATE utf8mb3_bin NOT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblFeaturePropertyIntFeatureIDIntPricingTierFeatureI749058182` (`intFeatureID`,`intPricingTierFeatureID`,`intTenantFeatureID`,`strKey`,`strUuid`),
  KEY `fkTblFeaturePropertyToTblFeatureValueTypeViaIntFeatur1288613801` (`intFeatureValueTypeID`),
  KEY `fkTblFeaturePropertyToTblFeatureValuePeriodTypeViaInt1279832935` (`intFeatureValuePeriodTypeID`),
  KEY `fkTblFeaturePropertyToTblTenantFeatureViaIntTenantFeatureID` (`intTenantFeatureID`),
  KEY `fkTblFeaturePropertyToTblTenantViaIntOwnerTenantID` (`intOwnerTenantID`),
  KEY `fkTblFeaturePropertyToTblPricingTierFeatureViaIntPric1153301769` (`intPricingTierFeatureID`),
  KEY `fkTblFeaturePropertyToTblUserViaIntUpdatedByUserID` (`intUpdatedByUserID`),
  CONSTRAINT `fkTblFeaturePropertyToTblFeatureValuePeriodTypeViaInt1279832935` FOREIGN KEY (`intFeatureValuePeriodTypeID`) REFERENCES `tblFeatureValuePeriodType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFeaturePropertyToTblFeatureValueTypeViaIntFeatur1288613801` FOREIGN KEY (`intFeatureValueTypeID`) REFERENCES `tblFeatureValueType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFeaturePropertyToTblFeatureViaIntFeatureID` FOREIGN KEY (`intFeatureID`) REFERENCES `tblFeature` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFeaturePropertyToTblPricingTierFeatureViaIntPric1153301769` FOREIGN KEY (`intPricingTierFeatureID`) REFERENCES `tblPricingTierFeature` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblFeaturePropertyToTblTenantFeatureViaIntTenantFeatureID` FOREIGN KEY (`intTenantFeatureID`) REFERENCES `tblTenantFeature` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFeaturePropertyToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFeaturePropertyToTblUserViaIntUpdatedByUserID` FOREIGN KEY (`intUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblFeaturePropertyBI` BEFORE INSERT ON `tblfeatureproperty` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblFeaturePropertyBU` BEFORE UPDATE ON `tblfeatureproperty` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblFeaturePropertyBD` BEFORE DELETE ON `tblfeatureproperty` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `tblFeatureValueOverageControlType`;

CREATE TABLE `tblFeatureValueOverageControlType` (
  `id` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblFeatureValuePeriodType`;

CREATE TABLE `tblFeatureValuePeriodType` (
  `id` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblFeatureValueType`;

CREATE TABLE `tblFeatureValueType` (
  `id` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblFile`;

CREATE TABLE `tblFile` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `bolImage` tinyint DEFAULT NULL,
  `intAssetCategoryID` bigint DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intBusinessID` bigint DEFAULT NULL,
  `intFileContentsID` bigint DEFAULT NULL,
  `intFileTypeID` bigint DEFAULT NULL,
  `intImageHeight` bigint DEFAULT NULL,
  `intImageWidth` bigint DEFAULT NULL,
  `intMASourceListingID` bigint DEFAULT NULL,
  `intProductTimeTrackingID` bigint DEFAULT NULL,
  `intProjectID` bigint DEFAULT NULL,
  `intPurchaseOrderID` bigint DEFAULT NULL,
  `intReportTemplateID` bigint DEFAULT NULL,
  `intRfqID` bigint DEFAULT NULL,
  `intScheduledMaintenanceID` bigint DEFAULT NULL,
  `intSize` bigint DEFAULT NULL,
  `intTaskGroupID` bigint DEFAULT NULL,
  `intThumbnailHeight` bigint DEFAULT NULL,
  `intThumbnailID` bigint DEFAULT NULL,
  `intThumbnailWidth` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `intUserID` bigint DEFAULT NULL,
  `intWorkOrderID` bigint DEFAULT NULL,
  `strLink` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strNotes` longtext COLLATE utf8mb3_bin,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblFileIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblFileIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  UNIQUE KEY `xuTblFileIntTenantIDStrUuid` (`intTenantID`,`strUuid`),
  KEY `xTblFileIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblFileToTblReportTemplateViaIntReportTemplateID` (`intReportTemplateID`),
  KEY `fkTblFileToTblFileContentsViaIntFileContentsIDAndIntTenantID` (`intTenantID`,`intFileContentsID`),
  KEY `fkTblFileToTblPurchaseOrderViaIntPurchaseOrderID` (`intPurchaseOrderID`),
  KEY `fkTblFileToTblRFQViaIntRfqID` (`intRfqID`),
  KEY `fkTblFileToTblProjectViaIntProjectID` (`intProjectID`),
  KEY `fkTblFileToTblAssetCategoryViaIntAssetCategoryID` (`intAssetCategoryID`),
  KEY `fkTblFileToTblBusinessViaIntBusinessID` (`intBusinessID`),
  KEY `fkTblFileToTblFileContentsViaIntThumbnailID` (`intThumbnailID`),
  KEY `fkTblFileToTblMASourceListingViaIntMASourceListingID` (`intMASourceListingID`),
  KEY `fkTblFileToTblTaskGroupViaIntTaskGroupID` (`intTaskGroupID`),
  KEY `fkTblFileToTblWorkOrderViaIntWorkOrderIDAndIntTenantID` (`intTenantID`,`intWorkOrderID`),
  KEY `fkTblFileToTblAssetViaIntAssetIDAndIntTenantID` (`intTenantID`,`intAssetID`),
  KEY `fkTblFileToTblProductTimeTrackingViaIntProductTimeTrackingID` (`intProductTimeTrackingID`),
  KEY `fkTblFileToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblFileToTblScheduledMaintenanceViaIntScheduledMaintenanceID` (`intScheduledMaintenanceID`),
  CONSTRAINT `fkTblFileToTblAssetCategoryViaIntAssetCategoryID` FOREIGN KEY (`intAssetCategoryID`) REFERENCES `tblAssetCategory` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblFileToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblFileToTblBusinessViaIntBusinessID` FOREIGN KEY (`intBusinessID`) REFERENCES `tblBusiness` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblFileToTblFileContentsViaIntFileContentsIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intFileContentsID`) REFERENCES `tblFileContents` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblFileToTblFileContentsViaIntThumbnailID` FOREIGN KEY (`intThumbnailID`) REFERENCES `tblFileContents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblFileToTblMASourceListingViaIntMASourceListingID` FOREIGN KEY (`intMASourceListingID`) REFERENCES `tblMASourceListing` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblFileToTblProductTimeTrackingViaIntProductTimeTrackingID` FOREIGN KEY (`intProductTimeTrackingID`) REFERENCES `tblProductTimeTracking` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblFileToTblProjectViaIntProjectID` FOREIGN KEY (`intProjectID`) REFERENCES `tblProject` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblFileToTblPurchaseOrderViaIntPurchaseOrderID` FOREIGN KEY (`intPurchaseOrderID`) REFERENCES `tblPurchaseOrder` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblFileToTblReportTemplateViaIntReportTemplateID` FOREIGN KEY (`intReportTemplateID`) REFERENCES `tblReportTemplate` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblFileToTblRFQViaIntRfqID` FOREIGN KEY (`intRfqID`) REFERENCES `tblRFQ` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblFileToTblScheduledMaintenanceViaIntScheduledMaintenanceID` FOREIGN KEY (`intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblFileToTblTaskGroupViaIntTaskGroupID` FOREIGN KEY (`intTaskGroupID`) REFERENCES `tblTaskGroup` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblFileToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFileToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblFileToTblWorkOrderViaIntWorkOrderIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intWorkOrderID`) REFERENCES `tblWorkOrder` (`intTenantID`, `id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblFileContents`;

CREATE TABLE `tblFileContents` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `intIsShared` tinyint DEFAULT NULL,
  `intSize` bigint DEFAULT NULL,
  `strContents` longtext COLLATE utf8mb3_bin,
  `strMimeType` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblFileContentsIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblFileContentsIntTenantIDStrUuid` (`intTenantID`,`strUuid`),
  UNIQUE KEY `xuTblFileContentsIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  CONSTRAINT `fkTblFileContentsToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblFirewall`;

CREATE TABLE `tblFirewall` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolActive` tinyint DEFAULT NULL,
  `intActionOnBlockedIP` bigint DEFAULT NULL,
  `intRuleControlMethod` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  `strAllowedIPs` longtext COLLATE utf8mb3_bin,
  `strBlockedMessage` varchar(512) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblFirewallIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblFirewallToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblFirewallToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFirewallToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblFirewallLog`;

CREATE TABLE `tblFirewallLog` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDate` datetime DEFAULT NULL,
  `intApplicationID` bigint DEFAULT NULL,
  `intFirewallID` bigint DEFAULT NULL,
  `intFirewallRuleID` bigint DEFAULT NULL,
  `intSiteID` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  `strAdditionalInformation` longtext COLLATE utf8mb3_bin,
  `strIPAttempted` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblFirewallLogIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblFirewallLogToTblFirewallRuleViaIntFirewallRuleID` (`intFirewallRuleID`),
  KEY `fkTblFirewallLogToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblFirewallLogToTblAssetViaIntSiteID` (`intSiteID`),
  KEY `fkTblFirewallLogToTblFirewallViaIntFirewallID` (`intFirewallID`),
  KEY `fkTblFirewallLogToTblApplicationViaIntApplicationID` (`intApplicationID`),
  CONSTRAINT `fkTblFirewallLogToTblApplicationViaIntApplicationID` FOREIGN KEY (`intApplicationID`) REFERENCES `tblApplication` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFirewallLogToTblAssetViaIntSiteID` FOREIGN KEY (`intSiteID`) REFERENCES `tblAsset` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFirewallLogToTblFirewallRuleViaIntFirewallRuleID` FOREIGN KEY (`intFirewallRuleID`) REFERENCES `tblFirewallRule` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFirewallLogToTblFirewallViaIntFirewallID` FOREIGN KEY (`intFirewallID`) REFERENCES `tblFirewall` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFirewallLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFirewallLogToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblFirewallRule`;

CREATE TABLE `tblFirewallRule` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolActive` tinyint DEFAULT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDateExpiry` datetime DEFAULT NULL,
  `intApplicationID` bigint DEFAULT NULL,
  `intFirewallID` bigint NOT NULL,
  `intOrder` bigint DEFAULT NULL,
  `intRuleControlMethod` bigint DEFAULT NULL,
  `intSiteID` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  `strAllowedIPs` longtext COLLATE utf8mb3_bin,
  `strAllowedSubnets` longtext COLLATE utf8mb3_bin,
  `strName` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblFirewallRuleIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblFirewallRuleToTblAssetViaIntSiteID` (`intSiteID`),
  KEY `fkTblFirewallRuleToTblFirewallViaIntFirewallID` (`intFirewallID`),
  KEY `fkTblFirewallRuleToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblFirewallRuleToTblApplicationViaIntApplicationID` (`intApplicationID`),
  CONSTRAINT `fkTblFirewallRuleToTblApplicationViaIntApplicationID` FOREIGN KEY (`intApplicationID`) REFERENCES `tblApplication` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFirewallRuleToTblAssetViaIntSiteID` FOREIGN KEY (`intSiteID`) REFERENCES `tblAsset` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFirewallRuleToTblFirewallViaIntFirewallID` FOREIGN KEY (`intFirewallID`) REFERENCES `tblFirewall` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFirewallRuleToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblFirewallRuleToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblGHGCalcAsset`;

CREATE TABLE `tblGHGCalcAsset` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolIsStationary` tinyint DEFAULT NULL,
  `dblCO2Total` double DEFAULT NULL,
  `dblCarbonTax` double DEFAULT NULL,
  `dblDistanceAmount` double DEFAULT NULL,
  `dblElectricityAmount` double DEFAULT NULL,
  `dblFuelAmount` double DEFAULT NULL,
  `dblHeatSteamAmount` double DEFAULT NULL,
  `dblResult` double DEFAULT NULL,
  `dtmDateEnd` datetime DEFAULT NULL,
  `dtmDateStart` datetime DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intFuelID` bigint DEFAULT NULL,
  `intLocationID` bigint DEFAULT NULL,
  `intSubFuelID` bigint DEFAULT NULL,
  `intSubLocationID` bigint DEFAULT NULL,
  `intSubVehicleID` bigint DEFAULT NULL,
  `intVehicleID` bigint DEFAULT NULL,
  `strDistanceUnit` varchar(32) COLLATE utf8mb3_bin DEFAULT NULL,
  `strElectricityUnit` varchar(32) COLLATE utf8mb3_bin DEFAULT NULL,
  `strFuelUnit` varchar(32) COLLATE utf8mb3_bin DEFAULT NULL,
  `strHeatSteamUnit` varchar(32) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblGHGCalcAssetIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblGHGCalcAssetToTblGHGCalcVehicleViaIntVehicleID` (`intVehicleID`),
  KEY `fkTblGHGCalcAssetToTblAssetViaIntAssetID` (`intAssetID`),
  KEY `fkTblGHGCalcAssetToTblGHGCalcFuelViaIntSubFuelID` (`intSubFuelID`),
  KEY `fkTblGHGCalcAssetToTblGHGCalcLocationViaIntSubLocationID` (`intSubLocationID`),
  KEY `fkTblGHGCalcAssetToTblGHGCalcVehicleViaIntSubVehicleID` (`intSubVehicleID`),
  KEY `fkTblGHGCalcAssetToTblGHGCalcLocationViaIntLocationID` (`intLocationID`),
  KEY `fkTblGHGCalcAssetToTblGHGCalcFuelViaIntFuelID` (`intFuelID`),
  CONSTRAINT `fkTblGHGCalcAssetToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblGHGCalcAssetToTblGHGCalcFuelViaIntFuelID` FOREIGN KEY (`intFuelID`) REFERENCES `tblGHGCalcFuel` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblGHGCalcAssetToTblGHGCalcFuelViaIntSubFuelID` FOREIGN KEY (`intSubFuelID`) REFERENCES `tblGHGCalcFuel` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblGHGCalcAssetToTblGHGCalcLocationViaIntLocationID` FOREIGN KEY (`intLocationID`) REFERENCES `tblGHGCalcLocation` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblGHGCalcAssetToTblGHGCalcLocationViaIntSubLocationID` FOREIGN KEY (`intSubLocationID`) REFERENCES `tblGHGCalcLocation` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblGHGCalcAssetToTblGHGCalcVehicleViaIntSubVehicleID` FOREIGN KEY (`intSubVehicleID`) REFERENCES `tblGHGCalcVehicle` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblGHGCalcAssetToTblGHGCalcVehicleViaIntVehicleID` FOREIGN KEY (`intVehicleID`) REFERENCES `tblGHGCalcVehicle` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblGHGCalcAssetToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblGHGCalcCarbonMarket`;

CREATE TABLE `tblGHGCalcCarbonMarket` (
  `id` bigint NOT NULL,
  `bolIsActive` tinyint DEFAULT NULL,
  `dblCarbonPrice` double DEFAULT NULL,
  `intResourceID` bigint DEFAULT NULL,
  `intYear` bigint DEFAULT NULL,
  `strJurisdiction` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblGHGCalcCarbonMarketToTblGHGCalcResourceViaIntResourceID` (`intResourceID`),
  CONSTRAINT `fkTblGHGCalcCarbonMarketToTblGHGCalcResourceViaIntResourceID` FOREIGN KEY (`intResourceID`) REFERENCES `tblGHGCalcResource` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblGHGCalcFuel`;

CREATE TABLE `tblGHGCalcFuel` (
  `id` bigint NOT NULL,
  `bolIsActive` tinyint DEFAULT NULL,
  `bolIsStationary` tinyint DEFAULT NULL,
  `dblGramsCHFourPerPrimaryUnit` double DEFAULT NULL,
  `dblGramsCHFourPerSecondaryUnit` double DEFAULT NULL,
  `dblGramsNTwoOPerPrimaryUnit` double DEFAULT NULL,
  `dblGramsNTwoOPerSecondaryUnit` double DEFAULT NULL,
  `dblKgCOTwoPerPrimaryUnit` double DEFAULT NULL,
  `dblKgCOTwoPerSecondaryUnit` double DEFAULT NULL,
  `intParentFuelID` bigint DEFAULT NULL,
  `intResourceID` bigint DEFAULT NULL,
  `intYear` bigint DEFAULT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPrimaryUnit` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSecondaryUnit` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblGHGCalcFuelToTblGHGCalcFuelViaIntParentFuelID` (`intParentFuelID`),
  KEY `fkTblGHGCalcFuelToTblGHGCalcResourceViaIntResourceID` (`intResourceID`),
  CONSTRAINT `fkTblGHGCalcFuelToTblGHGCalcFuelViaIntParentFuelID` FOREIGN KEY (`intParentFuelID`) REFERENCES `tblGHGCalcFuel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblGHGCalcFuelToTblGHGCalcResourceViaIntResourceID` FOREIGN KEY (`intResourceID`) REFERENCES `tblGHGCalcResource` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblGHGCalcGWP`;

CREATE TABLE `tblGHGCalcGWP` (
  `id` bigint NOT NULL,
  `bolIsActive` tinyint DEFAULT NULL,
  `intHundredYearGWP` bigint DEFAULT NULL,
  `intResourceID` bigint DEFAULT NULL,
  `intYear` bigint DEFAULT NULL,
  `strDescription` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblGHGCalcGWPToTblGHGCalcResourceViaIntResourceID` (`intResourceID`),
  CONSTRAINT `fkTblGHGCalcGWPToTblGHGCalcResourceViaIntResourceID` FOREIGN KEY (`intResourceID`) REFERENCES `tblGHGCalcResource` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblGHGCalcLocation`;

CREATE TABLE `tblGHGCalcLocation` (
  `id` bigint NOT NULL,
  `bolIsActive` tinyint DEFAULT NULL,
  `dblGramsPerkWh` double DEFAULT NULL,
  `intCarbonMarketID` bigint DEFAULT NULL,
  `intParentLocationID` bigint DEFAULT NULL,
  `intResourceID` bigint DEFAULT NULL,
  `intYear` bigint DEFAULT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strRegionLabel` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strZIPPostalCode` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblGHGCalcLocationToTblGHGCalcCarbonMarketViaIntCar2140652035` (`intCarbonMarketID`),
  KEY `fkTblGHGCalcLocationToTblGHGCalcLocationViaIntParentLocationID` (`intParentLocationID`),
  KEY `fkTblGHGCalcLocationToTblGHGCalcResourceViaIntResourceID` (`intResourceID`),
  CONSTRAINT `fkTblGHGCalcLocationToTblGHGCalcCarbonMarketViaIntCar2140652035` FOREIGN KEY (`intCarbonMarketID`) REFERENCES `tblGHGCalcCarbonMarket` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblGHGCalcLocationToTblGHGCalcLocationViaIntParentLocationID` FOREIGN KEY (`intParentLocationID`) REFERENCES `tblGHGCalcLocation` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblGHGCalcLocationToTblGHGCalcResourceViaIntResourceID` FOREIGN KEY (`intResourceID`) REFERENCES `tblGHGCalcResource` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblGHGCalcResource`;

CREATE TABLE `tblGHGCalcResource` (
  `id` bigint NOT NULL,
  `bolIsActive` tinyint DEFAULT NULL,
  `intYear` bigint DEFAULT NULL,
  `strDescription` varchar(1024) COLLATE utf8mb3_bin DEFAULT NULL,
  `strLink` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblGHGCalcVehicle`;

CREATE TABLE `tblGHGCalcVehicle` (
  `id` bigint NOT NULL,
  `bolIsActive` tinyint DEFAULT NULL,
  `bolIsOnRoad` tinyint DEFAULT NULL,
  `dblGramsCHFourPerPrimaryUnit` double DEFAULT NULL,
  `dblGramsNTwoOPerPrimaryUnit` double DEFAULT NULL,
  `intParentVehicleID` bigint DEFAULT NULL,
  `intResourceID` bigint DEFAULT NULL,
  `intYear` bigint DEFAULT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSubNameLabel` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblGHGCalcVehicleToTblGHGCalcResourceViaIntResourceID` (`intResourceID`),
  KEY `fkTblGHGCalcVehicleToTblGHGCalcVehicleViaIntParentVehicleID` (`intParentVehicleID`),
  CONSTRAINT `fkTblGHGCalcVehicleToTblGHGCalcResourceViaIntResourceID` FOREIGN KEY (`intResourceID`) REFERENCES `tblGHGCalcResource` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblGHGCalcVehicleToTblGHGCalcVehicleViaIntParentVehicleID` FOREIGN KEY (`intParentVehicleID`) REFERENCES `tblGHGCalcVehicle` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblGroupPermissions`;

CREATE TABLE `tblGroupPermissions` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intGroupID` bigint NOT NULL,
  `strPermissions` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblGroupPermissionsIntGroupIDIntTenantID` (`intGroupID`,`intTenantID`),
  UNIQUE KEY `xuTblGroupPermissionsIntTenantIDId` (`intTenantID`,`id`),
  CONSTRAINT `fkTblGroupPermissionsToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblGroupPermissionsToTblUserViaIntGroupID` FOREIGN KEY (`intGroupID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblGuestActions`;

CREATE TABLE `tblGuestActions` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateCreated` datetime NOT NULL,
  `intClientSessionID` bigint DEFAULT NULL,
  `intCreatedWorkOrderID` bigint DEFAULT NULL,
  `strOriginatingIp` varchar(32) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblGuestActionsIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblGuestActionsIntCreatedWorkOrderID` (`intCreatedWorkOrderID`),
  KEY `fkTblGuestActionsToTblClientSessionViaIntClientSessionID` (`intClientSessionID`),
  CONSTRAINT `fkTblGuestActionsToTblClientSessionViaIntClientSessionID` FOREIGN KEY (`intClientSessionID`) REFERENCES `tblClientSession` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblGuestActionsToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblGuestActionsToTblWorkOrderViaIntCreatedWorkOrderID` FOREIGN KEY (`intCreatedWorkOrderID`) REFERENCES `tblWorkOrder` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblGuestMrFormField`;

CREATE TABLE `tblGuestMrFormField` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolIsIncludedInNotification` tinyint DEFAULT NULL,
  `bolIsPermanent` tinyint NOT NULL,
  `bolIsReorderable` tinyint NOT NULL,
  `bolIsRequired` tinyint NOT NULL,
  `intDdColumnID` bigint NOT NULL,
  `intOrder` bigint NOT NULL,
  `intSystemSettingID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblGuestMrFormFieldIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblGuestMrFormFieldToTblSystemSettingViaIntSystemSettingID` (`intSystemSettingID`),
  KEY `fkTblGuestMrFormFieldToTblDdColumnViaIntDdColumnID` (`intDdColumnID`),
  CONSTRAINT `fkTblGuestMrFormFieldToTblDdColumnViaIntDdColumnID` FOREIGN KEY (`intDdColumnID`) REFERENCES `tblDdColumn` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblGuestMrFormFieldToTblSystemSettingViaIntSystemSettingID` FOREIGN KEY (`intSystemSettingID`) REFERENCES `tblSystemSetting` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblGuestMrFormFieldToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblIdGen`;

CREATE TABLE `tblIdGen` (
  `tableName` varchar(64) NOT NULL,
  `nextValue` bigint NOT NULL,
  PRIMARY KEY (`tableName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `tblIntegration`;

CREATE TABLE `tblIntegration` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolActive` tinyint DEFAULT NULL,
  `dtmDateCreated` datetime NOT NULL,
  `dtmDateUpdated` datetime DEFAULT NULL,
  `dtmLastAuthorized` datetime DEFAULT NULL,
  `intCreatedByUserID` bigint DEFAULT NULL,
  `intIntegrationEndpointFormatID` bigint DEFAULT NULL,
  `intIntegrationProtocolID` bigint DEFAULT NULL,
  `intIntegrationSystemID` bigint DEFAULT NULL,
  `intIntegrationTemplateID` bigint DEFAULT NULL,
  `intUpdatedByUserID` bigint DEFAULT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblIntegrationIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblIntegrationToTblIntegrationTemplateViaIntIntegrat356429566` (`intIntegrationTemplateID`),
  KEY `fkTblIntegrationToTblIntegrationEndpointFormatViaIntI1544684030` (`intIntegrationEndpointFormatID`),
  KEY `fkTblIntegrationToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`),
  KEY `fkTblIntegrationToTblIntegrationProtocolViaIntIntegrat326181182` (`intIntegrationProtocolID`),
  KEY `fkTblIntegrationToTblUserViaIntUpdatedByUserID` (`intUpdatedByUserID`),
  KEY `fkTblIntegrationToTblIntegrationSystemViaIntIntegrationSystemID` (`intIntegrationSystemID`),
  CONSTRAINT `fkTblIntegrationToTblIntegrationEndpointFormatViaIntI1544684030` FOREIGN KEY (`intIntegrationEndpointFormatID`) REFERENCES `tblIntegrationEndpointFormat` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblIntegrationToTblIntegrationProtocolViaIntIntegrat326181182` FOREIGN KEY (`intIntegrationProtocolID`) REFERENCES `tblIntegrationProtocol` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblIntegrationToTblIntegrationSystemViaIntIntegrationSystemID` FOREIGN KEY (`intIntegrationSystemID`) REFERENCES `tblIntegrationSystem` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblIntegrationToTblIntegrationTemplateViaIntIntegrat356429566` FOREIGN KEY (`intIntegrationTemplateID`) REFERENCES `tblIntegrationTemplate` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblIntegrationToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblIntegrationToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblIntegrationToTblUserViaIntUpdatedByUserID` FOREIGN KEY (`intUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblIntegrationAction`;

CREATE TABLE `tblIntegrationAction` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolRunOnInit` tinyint DEFAULT NULL,
  `dtmDateLastRun` datetime DEFAULT NULL,
  `intIntegrationActionAdvancedEndpointID` bigint DEFAULT NULL,
  `intIntegrationActionTypeID` bigint NOT NULL,
  `intIntegrationID` bigint DEFAULT NULL,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblIntegrationActionIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblIntegrationActionToTblIntegrationActionTypeViaInt175799340` (`intIntegrationActionTypeID`),
  KEY `fkTblIntegrationActionToTblIntegrationActionAdvancedEn764610804` (`intIntegrationActionAdvancedEndpointID`),
  KEY `fkTblIntegrationActionToTblIntegrationViaIntIntegrationID` (`intIntegrationID`),
  CONSTRAINT `fkTblIntegrationActionToTblIntegrationActionAdvancedEn764610804` FOREIGN KEY (`intIntegrationActionAdvancedEndpointID`) REFERENCES `tblIntegrationActionAdvancedEndpoint` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblIntegrationActionToTblIntegrationActionTypeViaInt175799340` FOREIGN KEY (`intIntegrationActionTypeID`) REFERENCES `tblIntegrationActionType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblIntegrationActionToTblIntegrationViaIntIntegrationID` FOREIGN KEY (`intIntegrationID`) REFERENCES `tblIntegration` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblIntegrationActionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblIntegrationActionAdvancedEndpoint`;

CREATE TABLE `tblIntegrationActionAdvancedEndpoint` (
  `id` bigint NOT NULL,
  `intIntegrationSystemID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblIntegrationActionAdvancedEndpointToTblIntegration998018549` (`intIntegrationSystemID`),
  CONSTRAINT `fkTblIntegrationActionAdvancedEndpointToTblIntegration998018549` FOREIGN KEY (`intIntegrationSystemID`) REFERENCES `tblIntegrationSystem` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblIntegrationActionLog`;

CREATE TABLE `tblIntegrationActionLog` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDate` datetime DEFAULT NULL,
  `intActivityLogID` bigint NOT NULL,
  `intCmmsObjectID` bigint DEFAULT NULL,
  `intParentActivityLogID` bigint NOT NULL,
  `strCmmsObjectTableName` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strExternalSystemObjectID` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblIntegrationActionLogIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblIntegrationActionLogToTblActivityLogViaIntParentA336262432` (`intParentActivityLogID`),
  KEY `fkTblIntegrationActionLogToTblActivityLogViaIntActivityLogID` (`intActivityLogID`),
  CONSTRAINT `fkTblIntegrationActionLogToTblActivityLogViaIntActivityLogID` FOREIGN KEY (`intActivityLogID`) REFERENCES `tblActivityLog` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblIntegrationActionLogToTblActivityLogViaIntParentA336262432` FOREIGN KEY (`intParentActivityLogID`) REFERENCES `tblActivityLog` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblIntegrationActionLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblIntegrationActionType`;

CREATE TABLE `tblIntegrationActionType` (
  `id` bigint NOT NULL,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblIntegrationConfigurableProperty`;

CREATE TABLE `tblIntegrationConfigurableProperty` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intIntegrationConfigurationPropertyType` bigint NOT NULL,
  `intIntegrationConfigurationPropertyValueType` bigint NOT NULL,
  `intIntegrationDtoType` bigint DEFAULT NULL,
  `intIntegrationID` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strValue` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblIntegrationConfigurablePropertyIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblIntegrationConfigurablePropertyToTblIntegrationV2128527156` (`intIntegrationID`),
  CONSTRAINT `fkTblIntegrationConfigurablePropertyToTblIntegrationV2128527156` FOREIGN KEY (`intIntegrationID`) REFERENCES `tblIntegration` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblIntegrationConfigurablePropertyToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblIntegrationEndpointFormat`;

CREATE TABLE `tblIntegrationEndpointFormat` (
  `id` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblIntegrationParameter`;

CREATE TABLE `tblIntegrationParameter` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intIntegrationID` bigint NOT NULL,
  `intIntegrationParameterTypeID` bigint DEFAULT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strValue` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblIntegrationParameterIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblIntegrationParameterToTblIntegrationViaIntIntegrationID` (`intIntegrationID`),
  KEY `fkTblIntegrationParameterToTblIntegrationParameterTyp1436430319` (`intIntegrationParameterTypeID`),
  CONSTRAINT `fkTblIntegrationParameterToTblIntegrationParameterTyp1436430319` FOREIGN KEY (`intIntegrationParameterTypeID`) REFERENCES `tblIntegrationParameterType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblIntegrationParameterToTblIntegrationViaIntIntegrationID` FOREIGN KEY (`intIntegrationID`) REFERENCES `tblIntegration` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblIntegrationParameterToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblIntegrationParameterType`;

CREATE TABLE `tblIntegrationParameterType` (
  `id` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblIntegrationProtocol`;

CREATE TABLE `tblIntegrationProtocol` (
  `id` bigint NOT NULL,
  `strFormatExample` varchar(512) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strProtocolIdentifier` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblIntegrationSystem`;

CREATE TABLE `tblIntegrationSystem` (
  `id` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblIntegrationTemplate`;

CREATE TABLE `tblIntegrationTemplate` (
  `id` bigint NOT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `intIntegrationEndpointFormatID` bigint DEFAULT NULL,
  `intIntegrationProtocolID` bigint DEFAULT NULL,
  `intIntegrationSystemID` bigint DEFAULT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblIntegrationTemplateToTblIntegrationEndpointForma1870131928` (`intIntegrationEndpointFormatID`),
  KEY `fkTblIntegrationTemplateToTblIntegrationProtocolViaIn1637480168` (`intIntegrationProtocolID`),
  KEY `fkTblIntegrationTemplateToTblIntegrationSystemViaIntIn994776264` (`intIntegrationSystemID`),
  CONSTRAINT `fkTblIntegrationTemplateToTblIntegrationEndpointForma1870131928` FOREIGN KEY (`intIntegrationEndpointFormatID`) REFERENCES `tblIntegrationEndpointFormat` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblIntegrationTemplateToTblIntegrationProtocolViaIn1637480168` FOREIGN KEY (`intIntegrationProtocolID`) REFERENCES `tblIntegrationProtocol` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblIntegrationTemplateToTblIntegrationSystemViaIntIn994776264` FOREIGN KEY (`intIntegrationSystemID`) REFERENCES `tblIntegrationSystem` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblInventoryTransaction`;

CREATE TABLE `tblInventoryTransaction` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblCostPerUnit` double NOT NULL,
  `dblTotalCost` double NOT NULL,
  `dtmDate` datetime NOT NULL,
  `intInventoryChargeID` bigint NOT NULL,
  `intInventoryChargedForID` bigint NOT NULL,
  `intInventoryChargedFromID` bigint DEFAULT NULL,
  `intStockTxTypeID` bigint NOT NULL,
  `qtyTxQuantity` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblInventoryTransactionIntTenantIDId` (`intTenantID`,`id`),
  CONSTRAINT `fkTblInventoryTransactionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblIsoWeekCalendar`;

CREATE TABLE `tblIsoWeekCalendar` (
  `id` bigint NOT NULL,
  `dtmWeekEnd` datetime NOT NULL,
  `dtmWeekStart` datetime NOT NULL,
  `intWeek` bigint NOT NULL,
  `intYear` bigint NOT NULL,
  `strIsoName` varchar(8) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblIsoWeekCalendarIntYearIntWeek` (`intYear`,`intWeek`),
  UNIQUE KEY `xuTblIsoWeekCalendarDtmWeekStartDtmWeekEnd` (`dtmWeekStart`,`dtmWeekEnd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblKpiResult`;

CREATE TABLE `tblKpiResult` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolBase` tinyint DEFAULT NULL,
  `dblValue` double DEFAULT NULL,
  `dtmTime` datetime NOT NULL,
  `intErrorCode` bigint DEFAULT NULL,
  `intQueryHash` int DEFAULT NULL,
  `intWidgetPositionID` bigint NOT NULL,
  `strQuery` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblKpiResultIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblKpiResultToTblDashboardWidgetPositionViaIntWidget210242764` (`intTenantID`,`intWidgetPositionID`),
  CONSTRAINT `fkTblKpiResultToTblDashboardWidgetPositionViaIntWidget210242764` FOREIGN KEY (`intTenantID`, `intWidgetPositionID`) REFERENCES `tblDashboardWidgetPosition` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblKpiResultToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblLanguage`;

CREATE TABLE `tblLanguage` (
  `id` bigint NOT NULL,
  `strAlpha2Code` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  `strEnglishName` varchar(1024) COLLATE utf8mb3_bin NOT NULL,
  `strNativeName` varchar(1024) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblLanguageStrAlpha2Code` (`strAlpha2Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblLastMeterReading`;

CREATE TABLE `tblLastMeterReading` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateSubmitted` datetime NOT NULL,
  `intAssetID` bigint NOT NULL,
  `intMeterReadingID` bigint NOT NULL,
  `intMeterReadingUnitsID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblLastMeterReadingIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblLastMeterReadingIntTenantIDIntAssetIDIntMeterRea1859308978` (`intTenantID`,`intAssetID`,`intMeterReadingUnitsID`),
  UNIQUE KEY `xuTblLastMeterReadingIntMeterReadingID` (`intMeterReadingID`),
  KEY `xTblLastMeterReadingIntTenantIDIntAssetIDIntMeterReadi520855660` (`intTenantID`,`intAssetID`,`intMeterReadingUnitsID`,`intMeterReadingID`,`dtmDateSubmitted`),
  KEY `fkTblLastMeterReadingToTblMeterReadingViaIntMeterReadi171873776` (`intTenantID`,`intMeterReadingID`),
  KEY `fkTblLastMeterReadingToTblMeterReadingUnitViaIntMeter1710873131` (`intTenantID`,`intMeterReadingUnitsID`),
  CONSTRAINT `fkTblLastMeterReadingToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblLastMeterReadingToTblMeterReadingUnitViaIntMeter1710873131` FOREIGN KEY (`intTenantID`, `intMeterReadingUnitsID`) REFERENCES `tblMeterReadingUnit` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLastMeterReadingToTblMeterReadingViaIntMeterReadi171873776` FOREIGN KEY (`intTenantID`, `intMeterReadingID`) REFERENCES `tblMeterReading` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLastMeterReadingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblLeadState`;

CREATE TABLE `tblLeadState` (
  `id` bigint NOT NULL,
  `strName` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblLineItem`;

CREATE TABLE `tblLineItem` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolBlockAutoDiscounting` tinyint DEFAULT NULL,
  `bolUseActiveQuantity` tinyint DEFAULT NULL,
  `dblDiscount` double NOT NULL,
  `dblPrice` double NOT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDateUpdated` datetime DEFAULT NULL,
  `dtmDiscountEnd` datetime DEFAULT NULL,
  `dtmDiscountStart` datetime DEFAULT NULL,
  `intBillingTypeID` bigint NOT NULL,
  `intDuration` bigint DEFAULT NULL,
  `intLineItemParentID` bigint DEFAULT NULL,
  `intOrderID` bigint DEFAULT NULL,
  `intProductID` bigint DEFAULT NULL,
  `intProductTierID` bigint DEFAULT NULL,
  `intPromotionalOfferID` bigint DEFAULT NULL,
  `intQuantity` bigint NOT NULL,
  `intQuoteID` bigint DEFAULT NULL,
  `intSubscriptionPlanID` bigint DEFAULT NULL,
  `intUpdatedByUserID` bigint DEFAULT NULL,
  `qtyHoursOrdered` double DEFAULT NULL,
  `strDiscountType` varchar(50) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `strNotes` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblLineItemIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblLineItemToTblOrderViaIntOrderID` (`intOrderID`),
  KEY `fkTblLineItemToTblSubscriptionPlanViaIntSubscriptionPlanID` (`intSubscriptionPlanID`),
  KEY `fkTblLineItemToTblProductTierViaIntProductTierID` (`intProductTierID`),
  KEY `fkTblLineItemToTblProductViaIntProductID` (`intProductID`),
  KEY `fkTblLineItemToTblUserViaIntUpdatedByUserID` (`intUpdatedByUserID`),
  KEY `fkTblLineItemToTblPromotionalOfferViaIntPromotionalOfferID` (`intPromotionalOfferID`),
  KEY `fkTblLineItemToTblQuoteViaIntQuoteID` (`intQuoteID`),
  KEY `fkTblLineItemToTblBillingTypeViaIntBillingTypeID` (`intBillingTypeID`),
  KEY `fkTblLineItemToTblLineItemViaIntLineItemParentID` (`intLineItemParentID`),
  CONSTRAINT `fkTblLineItemToTblBillingTypeViaIntBillingTypeID` FOREIGN KEY (`intBillingTypeID`) REFERENCES `tblBillingType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLineItemToTblLineItemViaIntLineItemParentID` FOREIGN KEY (`intLineItemParentID`) REFERENCES `tblLineItem` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblLineItemToTblOrderViaIntOrderID` FOREIGN KEY (`intOrderID`) REFERENCES `tblOrder` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblLineItemToTblProductTierViaIntProductTierID` FOREIGN KEY (`intProductTierID`) REFERENCES `tblProductTier` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLineItemToTblProductViaIntProductID` FOREIGN KEY (`intProductID`) REFERENCES `tblProduct` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLineItemToTblPromotionalOfferViaIntPromotionalOfferID` FOREIGN KEY (`intPromotionalOfferID`) REFERENCES `tblPromotionalOffer` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLineItemToTblQuoteViaIntQuoteID` FOREIGN KEY (`intQuoteID`) REFERENCES `tblQuote` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblLineItemToTblSubscriptionPlanViaIntSubscriptionPlanID` FOREIGN KEY (`intSubscriptionPlanID`) REFERENCES `tblSubscriptionPlan` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblLineItemToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLineItemToTblUserViaIntUpdatedByUserID` FOREIGN KEY (`intUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblLocalization`;

CREATE TABLE `tblLocalization` (
  `id` bigint NOT NULL,
  `bolActive` tinyint DEFAULT NULL,
  `bolAvailableToNewSignups` tinyint DEFAULT NULL,
  `dblMobilePercentLocalized` double DEFAULT NULL,
  `dblNativeMobilePercentLocalized` double DEFAULT NULL,
  `dblPercentLocalized` double DEFAULT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDateModified` datetime DEFAULT NULL,
  `intCountryID` bigint DEFAULT NULL,
  `intCreatedByID` bigint DEFAULT NULL,
  `intDefaultCurrencyID` bigint DEFAULT NULL,
  `intLanguageID` bigint DEFAULT NULL,
  `intLastModifiedByID` bigint DEFAULT NULL,
  `intLocalizationTypeID` bigint DEFAULT NULL,
  `intLocalizedKeyCount` bigint DEFAULT NULL,
  `intMobileLocalizedKeyCount` bigint DEFAULT NULL,
  `intMobileTotalKeyCount` bigint DEFAULT NULL,
  `intNativeMobileLocalizedKeyCount` bigint DEFAULT NULL,
  `intNativeMobileTotalKeyCount` bigint DEFAULT NULL,
  `intOwnerTenantID` bigint DEFAULT NULL,
  `intParentLocalizationID` bigint DEFAULT NULL,
  `intTotalKeyCount` bigint DEFAULT NULL,
  `strAutoSuggest` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDateFormat` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDecimalFormat` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDecimalSeparator` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `strGroupSeparator` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `strIntegerFormat` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strMobileProperties` longtext COLLATE utf8mb3_bin,
  `strName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strNativeMobileProperties` longtext COLLATE utf8mb3_bin,
  `strProperties` longtext COLLATE utf8mb3_bin,
  `strQuantityFormat` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSupportVersion` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL,
  `strTimeFormat` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblLocalizationToTblCurrencyViaIntDefaultCurrencyID` (`intDefaultCurrencyID`),
  KEY `fkTblLocalizationToTblLocalizationTypeViaIntLocalizationTypeID` (`intLocalizationTypeID`),
  KEY `fkTblLocalizationToTblUserViaIntLastModifiedByID` (`intLastModifiedByID`),
  KEY `fkTblLocalizationToTblUserViaIntCreatedByID` (`intCreatedByID`),
  KEY `fkTblLocalizationToTblCountryViaIntCountryID` (`intCountryID`),
  KEY `fkTblLocalizationToTblTenantViaIntOwnerTenantID` (`intOwnerTenantID`),
  KEY `fkTblLocalizationToTblLanguageViaIntLanguageID` (`intLanguageID`),
  KEY `fkTblLocalizationToTblLocalizationViaIntParentLocalizationID` (`intParentLocalizationID`),
  CONSTRAINT `fkTblLocalizationToTblCountryViaIntCountryID` FOREIGN KEY (`intCountryID`) REFERENCES `tblCountry` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLocalizationToTblCurrencyViaIntDefaultCurrencyID` FOREIGN KEY (`intDefaultCurrencyID`) REFERENCES `tblCurrency` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLocalizationToTblLanguageViaIntLanguageID` FOREIGN KEY (`intLanguageID`) REFERENCES `tblLanguage` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLocalizationToTblLocalizationTypeViaIntLocalizationTypeID` FOREIGN KEY (`intLocalizationTypeID`) REFERENCES `tblLocalizationType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLocalizationToTblLocalizationViaIntParentLocalizationID` FOREIGN KEY (`intParentLocalizationID`) REFERENCES `tblLocalization` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLocalizationToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLocalizationToTblUserViaIntCreatedByID` FOREIGN KEY (`intCreatedByID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLocalizationToTblUserViaIntLastModifiedByID` FOREIGN KEY (`intLastModifiedByID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblLocalizationBI` BEFORE INSERT ON `tbllocalization` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblLocalizationBU` BEFORE UPDATE ON `tbllocalization` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblLocalizationBD` BEFORE DELETE ON `tbllocalization` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `tblLocalizationArchive`;

CREATE TABLE `tblLocalizationArchive` (
  `id` bigint NOT NULL,
  `dblMobilePercentLocalized` double DEFAULT NULL,
  `dblNativeMobilePercentLocalized` double DEFAULT NULL,
  `dblPercentLocalized` double DEFAULT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDateModified` datetime DEFAULT NULL,
  `intCountryID` bigint DEFAULT NULL,
  `intCreatedByID` bigint DEFAULT NULL,
  `intDefaultCurrencyID` bigint DEFAULT NULL,
  `intLanguageID` bigint DEFAULT NULL,
  `intLastModifiedByID` bigint DEFAULT NULL,
  `intLocalizationID` bigint DEFAULT NULL,
  `intLocalizedKeyCount` bigint DEFAULT NULL,
  `intMobileLocalizedKeyCount` bigint DEFAULT NULL,
  `intMobileTotalKeyCount` bigint DEFAULT NULL,
  `intNativeMobileLocalizedKeyCount` bigint DEFAULT NULL,
  `intNativeMobileTotalKeyCount` bigint DEFAULT NULL,
  `intOwnerTenantID` bigint DEFAULT NULL,
  `intTotalKeyCount` bigint DEFAULT NULL,
  `strDateFormat` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDecimalFormat` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDecimalSeparator` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `strGroupSeparator` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `strIntegerFormat` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strMobileProperties` longtext COLLATE utf8mb3_bin,
  `strName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strNativeMobileProperties` longtext COLLATE utf8mb3_bin,
  `strProperties` longtext COLLATE utf8mb3_bin,
  `strQuantityFormat` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSupportVersion` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL,
  `strTimeFormat` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblLocalizationArchiveToTblUserViaIntLastModifiedByID` (`intLastModifiedByID`),
  KEY `fkTblLocalizationArchiveToTblUserViaIntCreatedByID` (`intCreatedByID`),
  KEY `fkTblLocalizationArchiveToTblLocalizationViaIntLocalizationID` (`intLocalizationID`),
  KEY `fkTblLocalizationArchiveToTblCountryViaIntCountryID` (`intCountryID`),
  KEY `fkTblLocalizationArchiveToTblCurrencyViaIntDefaultCurrencyID` (`intDefaultCurrencyID`),
  KEY `fkTblLocalizationArchiveToTblTenantViaIntOwnerTenantID` (`intOwnerTenantID`),
  KEY `fkTblLocalizationArchiveToTblLanguageViaIntLanguageID` (`intLanguageID`),
  CONSTRAINT `fkTblLocalizationArchiveToTblCountryViaIntCountryID` FOREIGN KEY (`intCountryID`) REFERENCES `tblCountry` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLocalizationArchiveToTblCurrencyViaIntDefaultCurrencyID` FOREIGN KEY (`intDefaultCurrencyID`) REFERENCES `tblCurrency` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLocalizationArchiveToTblLanguageViaIntLanguageID` FOREIGN KEY (`intLanguageID`) REFERENCES `tblLanguage` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLocalizationArchiveToTblLocalizationViaIntLocalizationID` FOREIGN KEY (`intLocalizationID`) REFERENCES `tblLocalization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblLocalizationArchiveToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLocalizationArchiveToTblUserViaIntCreatedByID` FOREIGN KEY (`intCreatedByID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLocalizationArchiveToTblUserViaIntLastModifiedByID` FOREIGN KEY (`intLastModifiedByID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblLocalizationArchiveBI` BEFORE INSERT ON `tbllocalizationarchive` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblLocalizationArchiveBU` BEFORE UPDATE ON `tbllocalizationarchive` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblLocalizationArchiveBD` BEFORE DELETE ON `tbllocalizationarchive` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `tblLocalizationPermission`;

CREATE TABLE `tblLocalizationPermission` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intLocalizationID` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblLocalizationPermissionIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblLocalizationPermissionToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblLocalizationPermissionToTblLocalizationViaIntLoca946020240` (`intLocalizationID`),
  CONSTRAINT `fkTblLocalizationPermissionToTblLocalizationViaIntLoca946020240` FOREIGN KEY (`intLocalizationID`) REFERENCES `tblLocalization` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblLocalizationPermissionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLocalizationPermissionToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblLocalizationType`;

CREATE TABLE `tblLocalizationType` (
  `id` bigint NOT NULL,
  `strDescription` varchar(1024) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblLogAlert`;

CREATE TABLE `tblLogAlert` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolAcknowledged` tinyint DEFAULT NULL,
  `bolEmailSent` tinyint DEFAULT NULL,
  `bolSeen` tinyint DEFAULT NULL,
  `dtmDate` datetime NOT NULL,
  `intLogMonitoringID` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblLogAlertIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblLogAlertToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblLogAlertToTblLogMonitoringViaIntLogMonitoringID` (`intLogMonitoringID`),
  CONSTRAINT `fkTblLogAlertToTblLogMonitoringViaIntLogMonitoringID` FOREIGN KEY (`intLogMonitoringID`) REFERENCES `tblLogMonitoring` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblLogAlertToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLogAlertToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblLogCostType`;

CREATE TABLE `tblLogCostType` (
  `id` bigint NOT NULL,
  `strName` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblLogMonitoring`;

CREATE TABLE `tblLogMonitoring` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateFrom` datetime DEFAULT NULL,
  `dtmDateTo` datetime NOT NULL,
  `intCount` int NOT NULL,
  `intSavedSearchID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblLogMonitoringIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblLogMonitoringToTblLogSavedSearchViaIntSavedSearchID` (`intSavedSearchID`),
  CONSTRAINT `fkTblLogMonitoringToTblLogSavedSearchViaIntSavedSearchID` FOREIGN KEY (`intSavedSearchID`) REFERENCES `tblLogSavedSearch` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblLogMonitoringToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblLogSavedSearch`;

CREATE TABLE `tblLogSavedSearch` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolDefault` tinyint DEFAULT NULL,
  `bolEnableMonitoring` tinyint DEFAULT NULL,
  `bolSendCriticalMessage` tinyint DEFAULT NULL,
  `dblAlertThreshold` double DEFAULT NULL,
  `dtmLastMonitored` datetime DEFAULT NULL,
  `intAlertType` int DEFAULT NULL,
  `intCreatedByUserID` bigint DEFAULT NULL,
  `strMonitoringCronExpression` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strSavedSearch` varchar(512) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblLogSavedSearchIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblLogSavedSearchToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`),
  CONSTRAINT `fkTblLogSavedSearchToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLogSavedSearchToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblLogSavedSearchUser`;

CREATE TABLE `tblLogSavedSearchUser` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolSendAlerts` tinyint DEFAULT NULL,
  `intAlertsInterval` int NOT NULL,
  `intLogSavedSearchID` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblLogSavedSearchUserIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblLogSavedSearchUserToTblLogSavedSearchViaIntLogSa1013978150` (`intLogSavedSearchID`),
  KEY `fkTblLogSavedSearchUserToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblLogSavedSearchUserToTblLogSavedSearchViaIntLogSa1013978150` FOREIGN KEY (`intLogSavedSearchID`) REFERENCES `tblLogSavedSearch` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblLogSavedSearchUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblLogSavedSearchUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblLogType`;

CREATE TABLE `tblLogType` (
  `id` bigint NOT NULL,
  `strName` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblLogUser`;

CREATE TABLE `tblLogUser` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolDeleted` tinyint DEFAULT NULL,
  `bolGroup` tinyint DEFAULT NULL,
  `strFullName` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblLogUserIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblLogUserStrUuid` (`strUuid`),
  CONSTRAINT `fkTblLogUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblLookupTableSync`;

CREATE TABLE `tblLookupTableSync` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmLastUpdated` datetime NOT NULL,
  `intApiConsumerID` bigint NOT NULL,
  `intLookupRevision` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xTblLookupTableSyncIntTenantID` (`intTenantID`),
  KEY `fkTblLookupTableSyncToTblApiConsumerViaIntApiConsumerID` (`intApiConsumerID`),
  CONSTRAINT `fkTblLookupTableSyncToTblApiConsumerViaIntApiConsumerID` FOREIGN KEY (`intApiConsumerID`) REFERENCES `tblApiConsumer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMaintenanceType`;

CREATE TABLE `tblMaintenanceType` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `strColor` varchar(6) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDescription` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblMaintenanceTypeIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblMaintenanceTypeIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  KEY `xTblMaintenanceTypeIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  CONSTRAINT `fkTblMaintenanceTypeToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMarketingProgram`;

CREATE TABLE `tblMarketingProgram` (
  `id` bigint NOT NULL,
  `strCode` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `strName` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `strNotes` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblMarketingProgramStrCode` (`strCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMASourceCounter`;

CREATE TABLE `tblMASourceCounter` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intMASourceListingID` bigint DEFAULT NULL,
  `intNumberViews` bigint DEFAULT NULL,
  `intUserID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblMASourceCounterIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblMASourceCounterIntUserIDIntMASourceListingID` (`intUserID`,`intMASourceListingID`),
  KEY `fkTblMASourceCounterToTblMASourceListingViaIntMASourceListingID` (`intMASourceListingID`),
  CONSTRAINT `fkTblMASourceCounterToTblMASourceListingViaIntMASourceListingID` FOREIGN KEY (`intMASourceListingID`) REFERENCES `tblMASourceListing` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblMASourceCounterToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMASourceListing`;

CREATE TABLE `tblMASourceListing` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolIncludeEvents` tinyint DEFAULT NULL,
  `bolIncludeImages` tinyint DEFAULT NULL,
  `bolIncludeMeterReadings` tinyint DEFAULT NULL,
  `bolIncludeOffline` tinyint DEFAULT NULL,
  `bolIncludeOtherFiles` tinyint DEFAULT NULL,
  `bolIncludeWarranty` tinyint DEFAULT NULL,
  `bolIncludeWorkOrders` tinyint DEFAULT NULL,
  `dblLat` double DEFAULT NULL,
  `dblListingPrice` double DEFAULT NULL,
  `dblLng` double DEFAULT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDatePosted` datetime DEFAULT NULL,
  `dtmDateUpdated` datetime DEFAULT NULL,
  `intAssetId` bigint DEFAULT NULL,
  `intCondition` bigint DEFAULT NULL,
  `intContactID` bigint DEFAULT NULL,
  `intCurrencyID` bigint DEFAULT NULL,
  `intDefaultImageID` bigint DEFAULT NULL,
  `intMASourceSellerID` bigint NOT NULL,
  `intNumberCompare` bigint DEFAULT NULL,
  `intNumberContact` bigint DEFAULT NULL,
  `intNumberSearch` bigint DEFAULT NULL,
  `intPostedByID` bigint DEFAULT NULL,
  `intShipFromID` bigint DEFAULT NULL,
  `intStatus` bigint DEFAULT NULL,
  `strContactEmail` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strContactPhone` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDescription` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strMake` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strModelNo` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSerialNo` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strShipAddress` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strShipCity` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strShipCountry` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strShipProvince` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUnspcCode` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblMASourceListingIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblMASourceListingIntMASourceSellerIDDblLatDblLng` (`intMASourceSellerID`,`dblLat`,`dblLng`),
  KEY `fkTblMASourceListingToTblUserViaIntContactID` (`intContactID`),
  KEY `fkTblMASourceListingToTblAssetViaIntAssetId` (`intAssetId`),
  KEY `fkTblMASourceListingToTblAssetViaIntShipFromID` (`intShipFromID`),
  KEY `fkTblMASourceListingToTblCurrencyViaIntCurrencyID` (`intCurrencyID`),
  KEY `fkTblMASourceListingToTblFileViaIntDefaultImageID` (`intDefaultImageID`),
  KEY `fkTblMASourceListingToTblUserViaIntPostedByID` (`intPostedByID`),
  CONSTRAINT `fkTblMASourceListingToTblAssetViaIntAssetId` FOREIGN KEY (`intAssetId`) REFERENCES `tblAsset` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblMASourceListingToTblAssetViaIntShipFromID` FOREIGN KEY (`intShipFromID`) REFERENCES `tblAsset` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblMASourceListingToTblCurrencyViaIntCurrencyID` FOREIGN KEY (`intCurrencyID`) REFERENCES `tblCurrency` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblMASourceListingToTblFileViaIntDefaultImageID` FOREIGN KEY (`intDefaultImageID`) REFERENCES `tblFile` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblMASourceListingToTblMASourceSellerViaIntMASourceSellerID` FOREIGN KEY (`intMASourceSellerID`) REFERENCES `tblMASourceSeller` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMASourceListingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMASourceListingToTblUserViaIntContactID` FOREIGN KEY (`intContactID`) REFERENCES `tblUser` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblMASourceListingToTblUserViaIntPostedByID` FOREIGN KEY (`intPostedByID`) REFERENCES `tblUser` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMASourceSeller`;

CREATE TABLE `tblMASourceSeller` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDateUpdated` datetime DEFAULT NULL,
  `strSellerName` varchar(265) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblMASourceSellerIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblMASourceSellerStrSellerName` (`strSellerName`),
  CONSTRAINT `fkTblMASourceSellerToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMASourceWarranty`;

CREATE TABLE `tblMASourceWarranty` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateAdded` datetime DEFAULT NULL,
  `dtmExpiryDate` datetime DEFAULT NULL,
  `intMASourceListingID` bigint NOT NULL,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strMeterReadingValueLimit` varchar(265) COLLATE utf8mb3_bin DEFAULT NULL,
  `strMeterReadingValueUnit` varchar(265) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUsageTermType` varchar(265) COLLATE utf8mb3_bin DEFAULT NULL,
  `strWarrantyType` varchar(265) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblMASourceWarrantyIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblMASourceWarrantyToTblMASourceListingViaIntMASourc617103367` (`intMASourceListingID`),
  CONSTRAINT `fkTblMASourceWarrantyToTblMASourceListingViaIntMASourc617103367` FOREIGN KEY (`intMASourceListingID`) REFERENCES `tblMASourceListing` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblMASourceWarrantyToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMessage`;

CREATE TABLE `tblMessage` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolOpened` tinyint DEFAULT NULL,
  `bolPopup` tinyint DEFAULT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `intMessageFolderID` bigint DEFAULT NULL,
  `intRecipientID` bigint DEFAULT NULL,
  `intSenderID` bigint DEFAULT NULL,
  `strContents` longtext COLLATE utf8mb3_bin,
  `strRecipients` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSubject` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblMessageIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblMessageIntRecipientIDIntTenantIDIntMessageFolderIDId` (`intRecipientID`,`intTenantID`,`intMessageFolderID`,`id`),
  KEY `xTblMessageIntRecipientIDIntTenantIDIntMessageFolderIDBolOpened` (`intRecipientID`,`intTenantID`,`intMessageFolderID`,`bolOpened`),
  KEY `fkTblMessageToTblMessageFolderViaIntMessageFolderID` (`intMessageFolderID`),
  KEY `fkTblMessageToTblUserViaIntSenderID` (`intSenderID`),
  CONSTRAINT `fkTblMessageToTblMessageFolderViaIntMessageFolderID` FOREIGN KEY (`intMessageFolderID`) REFERENCES `tblMessageFolder` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMessageToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMessageToTblUserViaIntRecipientID` FOREIGN KEY (`intRecipientID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMessageToTblUserViaIntSenderID` FOREIGN KEY (`intSenderID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMessageFolder`;

CREATE TABLE `tblMessageFolder` (
  `id` bigint NOT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblMessageFolderStrName` (`strName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMeterReading`;

CREATE TABLE `tblMeterReading` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblMeterReading` double NOT NULL,
  `dtmDateSubmitted` datetime NOT NULL,
  `intAssetID` bigint NOT NULL,
  `intMeterReadingUnitsID` bigint NOT NULL,
  `intSubmittedByUserID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `intWorkOrderID` bigint DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblMeterReadingIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblMeterReadingStrUuid` (`strUuid`),
  KEY `xTblMeterReadingIntTenantIDIntAssetIDIntMeterReadingU1524663087` (`intTenantID`,`intAssetID`,`intMeterReadingUnitsID`,`dtmDateSubmitted`),
  KEY `xTblMeterReadingIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblMeterReadingToTblWorkOrderViaIntWorkOrderID` (`intWorkOrderID`),
  KEY `fkTblMeterReadingToTblMeterReadingUnitViaIntMeterRead1489363467` (`intTenantID`,`intMeterReadingUnitsID`),
  KEY `fkTblMeterReadingToTblUserViaIntSubmittedByUserID` (`intSubmittedByUserID`),
  CONSTRAINT `fkTblMeterReadingToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblMeterReadingToTblMeterReadingUnitViaIntMeterRead1489363467` FOREIGN KEY (`intTenantID`, `intMeterReadingUnitsID`) REFERENCES `tblMeterReadingUnit` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMeterReadingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMeterReadingToTblUserViaIntSubmittedByUserID` FOREIGN KEY (`intSubmittedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMeterReadingToTblWorkOrderViaIntWorkOrderID` FOREIGN KEY (`intWorkOrderID`) REFERENCES `tblWorkOrder` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMeterReadingUnit`;

CREATE TABLE `tblMeterReadingUnit` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intPrecision` bigint DEFAULT NULL,
  `intSourceSysCode` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  `strSymbol` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblMeterReadingUnitIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblMeterReadingUnitIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  CONSTRAINT `fkTblMeterReadingUnitToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMilestone`;

CREATE TABLE `tblMilestone` (
  `id` bigint NOT NULL,
  `bolIsActive` tinyint NOT NULL,
  `dblWeight` double NOT NULL,
  `intPriority` int NOT NULL,
  `strExternalHelpUrl` varchar(1024) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strVideoHelpUrl` varchar(1024) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMilestonesResetThreshold`;

CREATE TABLE `tblMilestonesResetThreshold` (
  `id` bigint NOT NULL,
  `dblThreshold` double NOT NULL,
  `intDelayInDays` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMiscCost`;

CREATE TABLE `tblMiscCost` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblActualTotalCost` double DEFAULT NULL,
  `dblActualUnitCost` double DEFAULT NULL,
  `dblEstimatedTotalCost` double DEFAULT NULL,
  `dblEstimatedUnitCost` double DEFAULT NULL,
  `intMiscCostTypeID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `intWorkOrderID` bigint NOT NULL,
  `qtyEstQuantity` double DEFAULT NULL,
  `qtyQuantity` double DEFAULT NULL,
  `strDescription` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblMiscCostIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblMiscCostIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblMiscCostToTblMiscCostTypeViaIntMiscCostTypeID` (`intMiscCostTypeID`),
  KEY `fkTblMiscCostToTblWorkOrderViaIntWorkOrderID` (`intWorkOrderID`),
  CONSTRAINT `fkTblMiscCostToTblMiscCostTypeViaIntMiscCostTypeID` FOREIGN KEY (`intMiscCostTypeID`) REFERENCES `tblMiscCostType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMiscCostToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMiscCostToTblWorkOrderViaIntWorkOrderID` FOREIGN KEY (`intWorkOrderID`) REFERENCES `tblWorkOrder` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMiscCostType`;

CREATE TABLE `tblMiscCostType` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intUpdated` bigint NOT NULL,
  `strName` varchar(32) COLLATE utf8mb3_bin NOT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblMiscCostTypeIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblMiscCostTypeIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  CONSTRAINT `fkTblMiscCostTypeToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMove`;

CREATE TABLE `tblMove` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateConfirmed` datetime DEFAULT NULL,
  `dtmDateRejected` datetime DEFAULT NULL,
  `dtmDateRequested` datetime DEFAULT NULL,
  `dtmMoveDate` datetime DEFAULT NULL,
  `intAssetDestinationID` bigint DEFAULT NULL,
  `intBusinessDestinationID` bigint DEFAULT NULL,
  `intConfirmedByID` bigint DEFAULT NULL,
  `intDestinationTypeID` bigint NOT NULL,
  `intFromSiteID` bigint NOT NULL,
  `intMoveStatusID` bigint NOT NULL,
  `intMovedByID` bigint DEFAULT NULL,
  `intProjectDestinationID` bigint DEFAULT NULL,
  `intRejectedByID` bigint DEFAULT NULL,
  `intRequestedByID` bigint DEFAULT NULL,
  `intSiteID` bigint NOT NULL,
  `intUserDestinationID` bigint DEFAULT NULL,
  `intWorkOrderDestinationID` bigint DEFAULT NULL,
  `strAisle` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strBin` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strNotes` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strRow` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblMoveIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblMoveIntTenantIDIntFromSiteIDIntSiteID` (`intTenantID`,`intFromSiteID`,`intSiteID`),
  KEY `fkTblMoveToTblAssetViaIntAssetDestinationIDAndIntTenantID` (`intTenantID`,`intAssetDestinationID`),
  KEY `fkTblMoveToTblUserViaIntConfirmedByID` (`intConfirmedByID`),
  KEY `fkTblMoveToTblMoveStatusViaIntMoveStatusIDAndIntTenantID` (`intTenantID`,`intMoveStatusID`),
  KEY `fkTblMoveToTblUserViaIntRequestedByID` (`intRequestedByID`),
  KEY `fkTblMoveToTblUserViaIntUserDestinationID` (`intUserDestinationID`),
  KEY `fkTblMoveToTblWorkOrderViaIntWorkOrderDestinationIDAn1961401266` (`intTenantID`,`intWorkOrderDestinationID`),
  KEY `fkTblMoveToTblBusinessViaIntBusinessDestinationIDAndIntTenantID` (`intTenantID`,`intBusinessDestinationID`),
  KEY `fkTblMoveToTblAssetViaIntSiteIDAndIntTenantID` (`intTenantID`,`intSiteID`),
  KEY `fkTblMoveToTblProjectViaIntProjectDestinationIDAndIntTenantID` (`intTenantID`,`intProjectDestinationID`),
  KEY `fkTblMoveToTblUserViaIntMovedByID` (`intMovedByID`),
  KEY `fkTblMoveToTblUserViaIntRejectedByID` (`intRejectedByID`),
  CONSTRAINT `fkTblMoveToTblAssetViaIntAssetDestinationIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetDestinationID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblMoveToTblAssetViaIntFromSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intFromSiteID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMoveToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intSiteID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMoveToTblBusinessViaIntBusinessDestinationIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intBusinessDestinationID`) REFERENCES `tblBusiness` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblMoveToTblMoveStatusViaIntMoveStatusIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intMoveStatusID`) REFERENCES `tblMoveStatus` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMoveToTblProjectViaIntProjectDestinationIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intProjectDestinationID`) REFERENCES `tblProject` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblMoveToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMoveToTblUserViaIntConfirmedByID` FOREIGN KEY (`intConfirmedByID`) REFERENCES `tblUser` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblMoveToTblUserViaIntMovedByID` FOREIGN KEY (`intMovedByID`) REFERENCES `tblUser` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblMoveToTblUserViaIntRejectedByID` FOREIGN KEY (`intRejectedByID`) REFERENCES `tblUser` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblMoveToTblUserViaIntRequestedByID` FOREIGN KEY (`intRequestedByID`) REFERENCES `tblUser` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblMoveToTblUserViaIntUserDestinationID` FOREIGN KEY (`intUserDestinationID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblMoveToTblWorkOrderViaIntWorkOrderDestinationIDAn1961401266` FOREIGN KEY (`intTenantID`, `intWorkOrderDestinationID`) REFERENCES `tblWorkOrder` (`intTenantID`, `id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMoveAsset`;

CREATE TABLE `tblMoveAsset` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolAway` tinyint DEFAULT NULL,
  `bolExclude` tinyint DEFAULT NULL,
  `bolPending` tinyint DEFAULT NULL,
  `bolSetOffline` tinyint DEFAULT NULL,
  `bolSetOnline` tinyint DEFAULT NULL,
  `dtmDateReturned` datetime DEFAULT NULL,
  `dtmReturnDate` datetime DEFAULT NULL,
  `intAssetID` bigint NOT NULL,
  `intMoveID` bigint NOT NULL,
  `intMovedFromID` bigint DEFAULT NULL,
  `intReasonOfflineID` bigint DEFAULT NULL,
  `intReasonOnlineID` bigint DEFAULT NULL,
  `intSiteID` bigint NOT NULL,
  `strFromAisle` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strFromBin` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strFromRow` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strNotes` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblMoveAssetIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblMoveAssetIntTenantIDIntSiteIDIntMoveIDIntAssetID` (`intTenantID`,`intSiteID`,`intMoveID`,`intAssetID`),
  KEY `fkTblMoveAssetToTblAssetViaIntMovedFromIDAndIntTenantID` (`intTenantID`,`intMovedFromID`),
  KEY `fkTblMoveAssetToTblMoveViaIntMoveIDAndIntTenantID` (`intTenantID`,`intMoveID`),
  KEY `fkTblMoveAssetToTblReasonToSetAssetOnlineViaIntReasonO239358445` (`intTenantID`,`intReasonOnlineID`),
  KEY `fkTblMoveAssetToTblAssetViaIntAssetIDAndIntTenantID` (`intTenantID`,`intAssetID`),
  KEY `fkTblMoveAssetToTblReasonToSetAssetOfflineViaIntReason357256957` (`intTenantID`,`intReasonOfflineID`),
  CONSTRAINT `fkTblMoveAssetToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblMoveAssetToTblAssetViaIntMovedFromIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intMovedFromID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblMoveAssetToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intSiteID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblMoveAssetToTblMoveViaIntMoveIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intMoveID`) REFERENCES `tblMove` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblMoveAssetToTblReasonToSetAssetOfflineViaIntReason357256957` FOREIGN KEY (`intTenantID`, `intReasonOfflineID`) REFERENCES `tblReasonToSetAssetOffline` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMoveAssetToTblReasonToSetAssetOnlineViaIntReasonO239358445` FOREIGN KEY (`intTenantID`, `intReasonOnlineID`) REFERENCES `tblReasonToSetAssetOnline` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMoveAssetToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMoveBack`;

CREATE TABLE `tblMoveBack` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateCanceled` datetime DEFAULT NULL,
  `dtmDateConfirmed` datetime DEFAULT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDateRequested` datetime DEFAULT NULL,
  `dtmMoveBackDate` datetime DEFAULT NULL,
  `intConfirmedByID` bigint DEFAULT NULL,
  `intFromSiteID` bigint NOT NULL,
  `intMoveStatusID` bigint NOT NULL,
  `intMovedBackByUserID` bigint DEFAULT NULL,
  `intRejectedByID` bigint DEFAULT NULL,
  `intRequestedByID` bigint DEFAULT NULL,
  `intSiteID` bigint NOT NULL,
  `strNotes` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblMoveBackIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblMoveBackIntTenantIDIntFromSiteIDIntSiteID` (`intTenantID`,`intFromSiteID`,`intSiteID`),
  KEY `fkTblMoveBackToTblAssetViaIntSiteIDAndIntTenantID` (`intTenantID`,`intSiteID`),
  KEY `fkTblMoveBackToTblUserViaIntConfirmedByID` (`intConfirmedByID`),
  KEY `fkTblMoveBackToTblMoveStatusViaIntMoveStatusIDAndIntTenantID` (`intTenantID`,`intMoveStatusID`),
  KEY `fkTblMoveBackToTblUserViaIntRejectedByID` (`intRejectedByID`),
  KEY `fkTblMoveBackToTblUserViaIntMovedBackByUserID` (`intMovedBackByUserID`),
  KEY `fkTblMoveBackToTblUserViaIntRequestedByID` (`intRequestedByID`),
  CONSTRAINT `fkTblMoveBackToTblAssetViaIntFromSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intFromSiteID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblMoveBackToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intSiteID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblMoveBackToTblMoveStatusViaIntMoveStatusIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intMoveStatusID`) REFERENCES `tblMoveStatus` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMoveBackToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMoveBackToTblUserViaIntConfirmedByID` FOREIGN KEY (`intConfirmedByID`) REFERENCES `tblUser` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblMoveBackToTblUserViaIntMovedBackByUserID` FOREIGN KEY (`intMovedBackByUserID`) REFERENCES `tblUser` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblMoveBackToTblUserViaIntRejectedByID` FOREIGN KEY (`intRejectedByID`) REFERENCES `tblUser` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblMoveBackToTblUserViaIntRequestedByID` FOREIGN KEY (`intRequestedByID`) REFERENCES `tblUser` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMoveBackAsset`;

CREATE TABLE `tblMoveBackAsset` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolExclude` tinyint DEFAULT NULL,
  `bolPending` tinyint DEFAULT NULL,
  `bolSetBackOffline` tinyint DEFAULT NULL,
  `bolSetBackOnline` tinyint DEFAULT NULL,
  `intAssetID` bigint NOT NULL,
  `intMoveBackID` bigint NOT NULL,
  `intOriginalMoveAssetID` bigint NOT NULL,
  `intReasonOfflineID` bigint DEFAULT NULL,
  `intReasonOnlineID` bigint DEFAULT NULL,
  `intSiteID` bigint NOT NULL,
  `strNotes` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strToAisle` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strToBin` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strToRow` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblMoveBackAssetIntTenantIDIntSiteIDIntMoveBackIDIn1371510300` (`intTenantID`,`intSiteID`,`intMoveBackID`,`intAssetID`,`intOriginalMoveAssetID`),
  UNIQUE KEY `xuTblMoveBackAssetIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblMoveBackAssetToTblAssetViaIntAssetIDAndIntTenantID` (`intTenantID`,`intAssetID`),
  KEY `fkTblMoveBackAssetToTblMoveAssetViaIntOriginalMoveAss1788617866` (`intTenantID`,`intOriginalMoveAssetID`),
  KEY `fkTblMoveBackAssetToTblReasonToSetAssetOfflineViaIntRe118386812` (`intTenantID`,`intReasonOfflineID`),
  KEY `fkTblMoveBackAssetToTblReasonToSetAssetOnlineViaIntRea440465356` (`intTenantID`,`intReasonOnlineID`),
  KEY `fkTblMoveBackAssetToTblMoveBackViaIntMoveBackIDAndIntTenantID` (`intTenantID`,`intMoveBackID`),
  CONSTRAINT `fkTblMoveBackAssetToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblMoveBackAssetToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intSiteID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblMoveBackAssetToTblMoveAssetViaIntOriginalMoveAss1788617866` FOREIGN KEY (`intTenantID`, `intOriginalMoveAssetID`) REFERENCES `tblMoveAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblMoveBackAssetToTblMoveBackViaIntMoveBackIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intMoveBackID`) REFERENCES `tblMoveBack` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblMoveBackAssetToTblReasonToSetAssetOfflineViaIntRe118386812` FOREIGN KEY (`intTenantID`, `intReasonOfflineID`) REFERENCES `tblReasonToSetAssetOffline` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMoveBackAssetToTblReasonToSetAssetOnlineViaIntRea440465356` FOREIGN KEY (`intTenantID`, `intReasonOnlineID`) REFERENCES `tblReasonToSetAssetOnline` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMoveBackAssetToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMoveSiteManager`;

CREATE TABLE `tblMoveSiteManager` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSiteID` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblMoveSiteManagerIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblMoveSiteManagerIntTenantIDIntSiteIDIntUserID` (`intTenantID`,`intSiteID`,`intUserID`),
  KEY `fkTblMoveSiteManagerToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblMoveSiteManagerToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intSiteID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblMoveSiteManagerToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblMoveSiteManagerToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMoveStatus`;

CREATE TABLE `tblMoveStatus` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `strDefaultLabel` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblMoveStatusIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblMoveStatusIntTenantIDStrName` (`intTenantID`,`strName`),
  UNIQUE KEY `xuTblMoveStatusIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  CONSTRAINT `fkTblMoveStatusToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblNetworkSettings`;

CREATE TABLE `tblNetworkSettings` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `bolAllowHttp` tinyint DEFAULT NULL,
  `bolAllowHttps` tinyint DEFAULT NULL,
  `bolUseProxyForOutbound` tinyint DEFAULT NULL,
  `intDatabasePort` bigint DEFAULT NULL,
  `intExternalHttpPort` bigint DEFAULT NULL,
  `intExternalHttpsPort` bigint DEFAULT NULL,
  `intInternalHttpPort` bigint DEFAULT NULL,
  `intInternalHttpsPort` bigint DEFAULT NULL,
  `intStopPort` bigint DEFAULT NULL,
  `strExternalServerIPOrDomain` varchar(200) COLLATE utf8mb3_bin DEFAULT NULL,
  `strInternalServerIP` varchar(200) COLLATE utf8mb3_bin DEFAULT NULL,
  `strProxyPassword` varchar(200) COLLATE utf8mb3_bin DEFAULT NULL,
  `strProxyPort` varchar(200) COLLATE utf8mb3_bin DEFAULT NULL,
  `strProxyServer` varchar(200) COLLATE utf8mb3_bin DEFAULT NULL,
  `strProxyUsername` varchar(200) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSSLCertificateFile` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblNetworkSettingsIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblNetworkSettingsIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  CONSTRAINT `fkTblNetworkSettingsToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblOrder`;

CREATE TABLE `tblOrder` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolExcludeTax` tinyint DEFAULT NULL,
  `bolScheduledPaymentAttempted` tinyint DEFAULT NULL,
  `bolSuppressDelinquencyAutomation` tinyint DEFAULT NULL,
  `dblProrateRate` double DEFAULT NULL,
  `dblSubtotalAmount` double DEFAULT NULL,
  `dblTaxAmount` double DEFAULT NULL,
  `dblTotalAmount` double DEFAULT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDateDue` datetime DEFAULT NULL,
  `dtmDatePaid` datetime DEFAULT NULL,
  `dtmDateRefunded` datetime DEFAULT NULL,
  `dtmDateSentOrder` datetime DEFAULT NULL,
  `dtmDateSentReceipt` datetime DEFAULT NULL,
  `dtmDateUpdated` datetime DEFAULT NULL,
  `intIssuedByTenantID` bigint DEFAULT NULL,
  `intPaymentProfileID` bigint DEFAULT NULL,
  `intQuoteID` bigint DEFAULT NULL,
  `intRecurringTypeID` bigint DEFAULT NULL,
  `intSubscriptionPlanID` bigint DEFAULT NULL,
  `strOrderKey` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPoNumber` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblOrderIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblOrderToTblPaymentProfileViaIntPaymentProfileID` (`intPaymentProfileID`),
  KEY `fkTblOrderToTblSubscriptionPlanViaIntSubscriptionPlanID` (`intSubscriptionPlanID`),
  KEY `fkTblOrderToTblTenantViaIntIssuedByTenantID` (`intIssuedByTenantID`),
  KEY `fkTblOrderToTblRecurringTypeViaIntRecurringTypeID` (`intRecurringTypeID`),
  KEY `fkTblOrderToTblQuoteViaIntQuoteID` (`intQuoteID`),
  CONSTRAINT `fkTblOrderToTblPaymentProfileViaIntPaymentProfileID` FOREIGN KEY (`intPaymentProfileID`) REFERENCES `tblPaymentProfile` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblOrderToTblQuoteViaIntQuoteID` FOREIGN KEY (`intQuoteID`) REFERENCES `tblQuote` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblOrderToTblRecurringTypeViaIntRecurringTypeID` FOREIGN KEY (`intRecurringTypeID`) REFERENCES `tblRecurringType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblOrderToTblSubscriptionPlanViaIntSubscriptionPlanID` FOREIGN KEY (`intSubscriptionPlanID`) REFERENCES `tblSubscriptionPlan` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblOrderToTblTenantViaIntIssuedByTenantID` FOREIGN KEY (`intIssuedByTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblOrderToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblOrderRefund`;

CREATE TABLE `tblOrderRefund` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblRefundAmount` double NOT NULL,
  `dtmTimestamp` datetime NOT NULL,
  `intCreatedByUserID` bigint DEFAULT NULL,
  `intOrderID` bigint DEFAULT NULL,
  `strDescription` varchar(1000) COLLATE utf8mb3_bin NOT NULL,
  `strKey` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblOrderRefundIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblOrderRefundToTblOrderViaIntOrderID` (`intOrderID`),
  KEY `fkTblOrderRefundToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`),
  CONSTRAINT `fkTblOrderRefundToTblOrderViaIntOrderID` FOREIGN KEY (`intOrderID`) REFERENCES `tblOrder` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblOrderRefundToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblOrderRefundToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblOrderSystemProperty`;

CREATE TABLE `tblOrderSystemProperty` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmLastUpdated` datetime NOT NULL,
  `intOrderID` bigint NOT NULL,
  `intSystemID` bigint NOT NULL,
  `strPropertyName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPropertyValue` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblOrderSystemPropertyIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblOrderSystemPropertyIntTenantIDIntOrderIDIntSyste1034646005` (`intTenantID`,`intOrderID`,`intSystemID`,`strPropertyName`),
  KEY `xTblOrderSystemPropertyIntTenantIDIntSystemIDStrPropertyName` (`intTenantID`,`intSystemID`,`strPropertyName`),
  KEY `fkTblOrderSystemPropertyToTblOrderViaIntOrderID` (`intOrderID`),
  CONSTRAINT `fkTblOrderSystemPropertyToTblOrderViaIntOrderID` FOREIGN KEY (`intOrderID`) REFERENCES `tblOrder` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblOrderSystemPropertyToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPartner`;

CREATE TABLE `tblPartner` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `bolActive` tinyint DEFAULT NULL,
  `bolOptHelpCentre` tinyint DEFAULT NULL,
  `bolOptWhiteLabel` tinyint DEFAULT NULL,
  `bolOptWhiteLabelEmailTemplate` tinyint DEFAULT NULL,
  `bolOptWhiteLabelSmtp` tinyint DEFAULT NULL,
  `bolOptWhiteLabelUrl` tinyint DEFAULT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `intAffiliateCampaignID` bigint DEFAULT NULL,
  `intAffiliateID` bigint DEFAULT NULL,
  `intAffiliateProgramID` bigint DEFAULT NULL,
  `intCreatedByUserID` bigint DEFAULT NULL,
  `intFileContentsID` bigint DEFAULT NULL,
  `intFileLoginScreenBrandContentsID` bigint DEFAULT NULL,
  `strAffiliateReferenceCode` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  `strBaseUrl` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `strHelpCentreUrl` longtext COLLATE utf8mb3_bin,
  `strMasterEmailTemplate` longtext COLLATE utf8mb3_bin,
  `strSmtpAddress` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSmtpPassword` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSmtpSentByEmailAddress` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSmtpUsername` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPartnerIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblPartnerIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  KEY `fkTblPartnerToTblFileContentsViaIntFileLoginScreenBra1125302094` (`intFileLoginScreenBrandContentsID`),
  KEY `fkTblPartnerToTblFileContentsViaIntFileContentsID` (`intFileContentsID`),
  KEY `fkTblPartnerToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`),
  KEY `fkTblPartnerToTblAffiliateProgramViaIntAffiliateProgramID` (`intAffiliateProgramID`),
  CONSTRAINT `fkTblPartnerToTblAffiliateProgramViaIntAffiliateProgramID` FOREIGN KEY (`intAffiliateProgramID`) REFERENCES `tblAffiliateProgram` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPartnerToTblFileContentsViaIntFileContentsID` FOREIGN KEY (`intFileContentsID`) REFERENCES `tblFileContents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblPartnerToTblFileContentsViaIntFileLoginScreenBra1125302094` FOREIGN KEY (`intFileLoginScreenBrandContentsID`) REFERENCES `tblFileContents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblPartnerToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPartnerToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPartsSelection`;

CREATE TABLE `tblPartsSelection` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateCreated` datetime NOT NULL,
  `intPartId` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPartsSelectionIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblPartsSelectionToTblAssetViaIntPartIdAndIntTenantID` (`intTenantID`,`intPartId`),
  CONSTRAINT `fkTblPartsSelectionToTblAssetViaIntPartIdAndIntTenantID` FOREIGN KEY (`intTenantID`, `intPartId`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblPartsSelectionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPassword`;

CREATE TABLE `tblPassword` (
  `id` bigint NOT NULL,
  `intPasswordStorageVersionID` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  `strData` varchar(200) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPasswordIntUserID` (`intUserID`),
  KEY `fkTblPasswordToTblPasswordStorageVersionViaIntPasswordS37970469` (`intPasswordStorageVersionID`),
  CONSTRAINT `fkTblPasswordToTblPasswordStorageVersionViaIntPasswordS37970469` FOREIGN KEY (`intPasswordStorageVersionID`) REFERENCES `tblPasswordStorageVersion` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPasswordToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPasswordStorageVersion`;

CREATE TABLE `tblPasswordStorageVersion` (
  `id` bigint NOT NULL,
  `strDescription` varchar(1000) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPasswordStorageVersionStrDescription` (`strDescription`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPaymentMethod`;

CREATE TABLE `tblPaymentMethod` (
  `id` bigint NOT NULL,
  `strName` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSalesforcePaymentMethodKey` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPaymentMethodStrSalesforcePaymentMethodKey` (`strSalesforcePaymentMethodKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPaymentProfile`;

CREATE TABLE `tblPaymentProfile` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolDefault` tinyint DEFAULT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `intAccountAddressID` bigint DEFAULT NULL,
  `intCreatedByUserID` bigint DEFAULT NULL,
  `intPaymentMethodID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPaymentProfileIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblPaymentProfileToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`),
  KEY `fkTblPaymentProfileToTblPaymentMethodViaIntPaymentMethodID` (`intPaymentMethodID`),
  KEY `fkTblPaymentProfileToTblAccountAddressViaIntAccountAddressID` (`intAccountAddressID`),
  CONSTRAINT `fkTblPaymentProfileToTblAccountAddressViaIntAccountAddressID` FOREIGN KEY (`intAccountAddressID`) REFERENCES `tblAccountAddress` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPaymentProfileToTblPaymentMethodViaIntPaymentMethodID` FOREIGN KEY (`intPaymentMethodID`) REFERENCES `tblPaymentMethod` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPaymentProfileToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPaymentProfileToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPermission`;

CREATE TABLE `tblPermission` (
  `id` bigint NOT NULL,
  `intApplicationID` bigint NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  `strObjectName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  `strObjectType` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPermissionStrNameStrObjectTypeStrObjectNameIntAp1330943111` (`strName`,`strObjectType`,`strObjectName`,`intApplicationID`),
  KEY `fkTblPermissionToTblApplicationViaIntApplicationID` (`intApplicationID`),
  CONSTRAINT `fkTblPermissionToTblApplicationViaIntApplicationID` FOREIGN KEY (`intApplicationID`) REFERENCES `tblApplication` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPerRecordValue`;

CREATE TABLE `tblPerRecordValue` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolBooleanValue` tinyint DEFAULT NULL,
  `datDateValue` datetime DEFAULT NULL,
  `dblDoubleValue` double DEFAULT NULL,
  `dtmDateTimeValue` datetime DEFAULT NULL,
  `intIntegerValue` int DEFAULT NULL,
  `intLongValue` bigint DEFAULT NULL,
  `intRecordID` bigint NOT NULL,
  `intTableResourceID` bigint NOT NULL,
  `qtyQtyValue` double DEFAULT NULL,
  `strLongStringValue` longtext COLLATE utf8mb3_bin,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strStringValue` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPerRecordValueIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblPerRecordValueIntTableResourceIDIntRecordIDStrName` (`intTableResourceID`,`intRecordID`,`strName`),
  CONSTRAINT `fkTblPerRecordValueToTblResourceViaIntTableResourceID` FOREIGN KEY (`intTableResourceID`) REFERENCES `tblResource` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPerRecordValueToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPlanFeature`;

CREATE TABLE `tblPlanFeature` (
  `id` bigint NOT NULL,
  `intPlanFeatureCategoryID` bigint NOT NULL,
  `intShowOrder` bigint NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblPlanFeatureToTblPlanFeatureCategoryViaIntPlanFeat864232777` (`intPlanFeatureCategoryID`),
  CONSTRAINT `fkTblPlanFeatureToTblPlanFeatureCategoryViaIntPlanFeat864232777` FOREIGN KEY (`intPlanFeatureCategoryID`) REFERENCES `tblPlanFeatureCategory` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPlanFeatureCategory`;

CREATE TABLE `tblPlanFeatureCategory` (
  `id` bigint NOT NULL,
  `intShowOrder` bigint NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPlanFeatureProductTier`;

CREATE TABLE `tblPlanFeatureProductTier` (
  `id` bigint NOT NULL,
  `intPlanFeatureID` bigint NOT NULL,
  `intProductTierID` bigint NOT NULL,
  `strAdditionalInformation` varchar(32) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPlanFeatureProductTierIntPlanFeatureIDIntProductTierID` (`intPlanFeatureID`,`intProductTierID`),
  KEY `fkTblPlanFeatureProductTierToTblProductTierViaIntProductTierID` (`intProductTierID`),
  CONSTRAINT `fkTblPlanFeatureProductTierToTblPlanFeatureViaIntPlanFeatureID` FOREIGN KEY (`intPlanFeatureID`) REFERENCES `tblPlanFeature` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPlanFeatureProductTierToTblProductTierViaIntProductTierID` FOREIGN KEY (`intProductTierID`) REFERENCES `tblProductTier` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPlatformEventType`;

CREATE TABLE `tblPlatformEventType` (
  `id` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPlatformEventTypeStrName` (`strName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPricingTier`;

CREATE TABLE `tblPricingTier` (
  `id` bigint NOT NULL,
  `bolAvailable` tinyint DEFAULT NULL,
  `dblDefaultDiscount` double NOT NULL,
  `dblDefaultMonthlyPrice` double NOT NULL,
  `dblDefaultPrice` double NOT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDateUpdated` datetime DEFAULT NULL,
  `intDefaultQuantity` bigint NOT NULL,
  `intLastUpdatedByUserID` bigint DEFAULT NULL,
  `intMaximumQuantity` bigint DEFAULT NULL,
  `intMinimumQuantity` bigint NOT NULL,
  `intProductID` bigint NOT NULL,
  `intProductOfferingID` bigint DEFAULT NULL,
  `intProductTierID` bigint DEFAULT NULL,
  `strEcomDescription` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  `strIncludes` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strKey` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSalesforceProductKey` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPricingTierStrSalesforceProductKey` (`strSalesforceProductKey`),
  KEY `fkTblPricingTierToTblProductTierViaIntProductTierID` (`intProductTierID`),
  KEY `fkTblPricingTierToTblProductViaIntProductID` (`intProductID`),
  KEY `fkTblPricingTierToTblProductOfferingViaIntProductOfferingID` (`intProductOfferingID`),
  KEY `fkTblPricingTierToTblUserViaIntLastUpdatedByUserID` (`intLastUpdatedByUserID`),
  CONSTRAINT `fkTblPricingTierToTblProductOfferingViaIntProductOfferingID` FOREIGN KEY (`intProductOfferingID`) REFERENCES `tblProductOffering` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblPricingTierToTblProductTierViaIntProductTierID` FOREIGN KEY (`intProductTierID`) REFERENCES `tblProductTier` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblPricingTierToTblProductViaIntProductID` FOREIGN KEY (`intProductID`) REFERENCES `tblProduct` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblPricingTierToTblUserViaIntLastUpdatedByUserID` FOREIGN KEY (`intLastUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPricingTierFeature`;

CREATE TABLE `tblPricingTierFeature` (
  `id` bigint NOT NULL,
  `bolSeatMultiplier` tinyint DEFAULT NULL,
  `dblOverageUnitCost` double DEFAULT NULL,
  `intFeatureID` bigint DEFAULT NULL,
  `intFeatureValuePeriodTypeID` bigint DEFAULT NULL,
  `intFeatureValueTypeID` bigint DEFAULT NULL,
  `intOverageControlTypeID` bigint DEFAULT NULL,
  `intOverageUnitCostThresholdTypeID` bigint DEFAULT NULL,
  `intPricingTierID` bigint DEFAULT NULL,
  `qtyOverageUnitCostThreshold` double DEFAULT NULL,
  `qtyValue` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPricingTierFeatureIntPricingTierIDIntFeatureID` (`intPricingTierID`,`intFeatureID`),
  KEY `fkTblPricingTierFeatureToTblFeatureValuePeriodTypeVia1731107716` (`intFeatureValuePeriodTypeID`),
  KEY `fkTblPricingTierFeatureToTblFeatureValueOverageContro1750148949` (`intOverageControlTypeID`),
  KEY `fkTblPricingTierFeatureToTblFeatureValueTypeViaIntFeat760178626` (`intFeatureValueTypeID`),
  KEY `fkTblPricingTierFeatureToTblFeatureViaIntFeatureID` (`intFeatureID`),
  KEY `fkTblPricingTierFeatureToTblFeatureValueTypeViaIntOve1238213322` (`intOverageUnitCostThresholdTypeID`),
  CONSTRAINT `fkTblPricingTierFeatureToTblFeatureValueOverageContro1750148949` FOREIGN KEY (`intOverageControlTypeID`) REFERENCES `tblFeatureValueOverageControlType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPricingTierFeatureToTblFeatureValuePeriodTypeVia1731107716` FOREIGN KEY (`intFeatureValuePeriodTypeID`) REFERENCES `tblFeatureValuePeriodType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPricingTierFeatureToTblFeatureValueTypeViaIntFeat760178626` FOREIGN KEY (`intFeatureValueTypeID`) REFERENCES `tblFeatureValueType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPricingTierFeatureToTblFeatureValueTypeViaIntOve1238213322` FOREIGN KEY (`intOverageUnitCostThresholdTypeID`) REFERENCES `tblFeatureValueType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPricingTierFeatureToTblFeatureViaIntFeatureID` FOREIGN KEY (`intFeatureID`) REFERENCES `tblFeature` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPricingTierFeatureToTblPricingTierViaIntPricingTierID` FOREIGN KEY (`intPricingTierID`) REFERENCES `tblPricingTier` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPriority`;

CREATE TABLE `tblPriority` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `intOrder` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPriorityIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblPriorityIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  KEY `xTblPriorityIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  CONSTRAINT `fkTblPriorityToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblProduct`;

CREATE TABLE `tblProduct` (
  `id` bigint NOT NULL,
  `bolAvailable` tinyint DEFAULT NULL,
  `bolTimeTrackingEnabled` tinyint DEFAULT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDateUpdated` datetime DEFAULT NULL,
  `intBillingTypeID` bigint NOT NULL,
  `intLastUpdatedByUserID` bigint DEFAULT NULL,
  `intProductParentID` bigint DEFAULT NULL,
  `intProductUnitID` bigint DEFAULT NULL,
  `strName` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xTblProductStrUuid` (`strUuid`),
  KEY `fkTblProductToTblBillingTypeViaIntBillingTypeID` (`intBillingTypeID`),
  KEY `fkTblProductToTblProductUnitViaIntProductUnitID` (`intProductUnitID`),
  KEY `fkTblProductToTblUserViaIntLastUpdatedByUserID` (`intLastUpdatedByUserID`),
  KEY `fkTblProductToTblProductViaIntProductParentID` (`intProductParentID`),
  CONSTRAINT `fkTblProductToTblBillingTypeViaIntBillingTypeID` FOREIGN KEY (`intBillingTypeID`) REFERENCES `tblBillingType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblProductToTblProductUnitViaIntProductUnitID` FOREIGN KEY (`intProductUnitID`) REFERENCES `tblProductUnit` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblProductToTblProductViaIntProductParentID` FOREIGN KEY (`intProductParentID`) REFERENCES `tblProduct` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblProductToTblUserViaIntLastUpdatedByUserID` FOREIGN KEY (`intLastUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblProductDiscountControl`;

CREATE TABLE `tblProductDiscountControl` (
  `id` bigint NOT NULL,
  `dblMaxDiscount` double NOT NULL,
  `dtmDateUpdated` datetime DEFAULT NULL,
  `intLastUpdatedByUserID` bigint DEFAULT NULL,
  `intProductID` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblProductDiscountControlToTblProductViaIntProductID` (`intProductID`),
  KEY `fkTblProductDiscountControlToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblProductDiscountControlToTblUserViaIntLastUpdatedByUserID` (`intLastUpdatedByUserID`),
  CONSTRAINT `fkTblProductDiscountControlToTblProductViaIntProductID` FOREIGN KEY (`intProductID`) REFERENCES `tblProduct` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblProductDiscountControlToTblUserViaIntLastUpdatedByUserID` FOREIGN KEY (`intLastUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblProductDiscountControlToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblProductOffering`;

CREATE TABLE `tblProductOffering` (
  `id` bigint NOT NULL,
  `bolAvailable` tinyint DEFAULT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDateUpdated` datetime DEFAULT NULL,
  `strName` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblProductOfferingFeature`;

CREATE TABLE `tblProductOfferingFeature` (
  `id` bigint NOT NULL,
  `intFeatureID` bigint DEFAULT NULL,
  `intProductOfferingID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblProductOfferingFeatureToTblFeatureViaIntFeatureID` (`intFeatureID`),
  KEY `fkTblProductOfferingFeatureToTblProductOfferingViaIntP764916061` (`intProductOfferingID`),
  CONSTRAINT `fkTblProductOfferingFeatureToTblFeatureViaIntFeatureID` FOREIGN KEY (`intFeatureID`) REFERENCES `tblFeature` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblProductOfferingFeatureToTblProductOfferingViaIntP764916061` FOREIGN KEY (`intProductOfferingID`) REFERENCES `tblProductOffering` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblProductTier`;

CREATE TABLE `tblProductTier` (
  `id` bigint NOT NULL,
  `strName` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblProductTimeTracking`;

CREATE TABLE `tblProductTimeTracking` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateCompleted` datetime DEFAULT NULL,
  `dtmDateScheduled` datetime DEFAULT NULL,
  `intOrderLineItemID` bigint DEFAULT NULL,
  `intTrainerUserID` bigint DEFAULT NULL,
  `qtyHoursConsumed` double DEFAULT NULL,
  `strNotes` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblProductTimeTrackingIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblProductTimeTrackingToTblLineItemViaIntOrderLineItemID` (`intOrderLineItemID`),
  KEY `fkTblProductTimeTrackingToTblUserViaIntTrainerUserID` (`intTrainerUserID`),
  CONSTRAINT `fkTblProductTimeTrackingToTblLineItemViaIntOrderLineItemID` FOREIGN KEY (`intOrderLineItemID`) REFERENCES `tblLineItem` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblProductTimeTrackingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblProductTimeTrackingToTblUserViaIntTrainerUserID` FOREIGN KEY (`intTrainerUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblProductUnit`;

CREATE TABLE `tblProductUnit` (
  `id` bigint NOT NULL,
  `strName` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblProject`;

CREATE TABLE `tblProject` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmActualEndDate` datetime DEFAULT NULL,
  `dtmActualStartDate` datetime DEFAULT NULL,
  `dtmProjectedEndDate` datetime DEFAULT NULL,
  `dtmProjectedStartDate` datetime DEFAULT NULL,
  `intParentProjectID` bigint DEFAULT NULL,
  `intSiteID` bigint NOT NULL,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strName` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strNotes` longtext COLLATE utf8mb3_bin,
  `strSysCustomColumnValues` longtext COLLATE utf8mb3_bin,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblProjectIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblProjectStrUuid` (`strUuid`),
  KEY `fkTblProjectToTblAssetViaIntSiteIDAndIntTenantID` (`intTenantID`,`intSiteID`),
  KEY `fkTblProjectToTblProjectViaIntParentProjectID` (`intParentProjectID`),
  CONSTRAINT `fkTblProjectToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intSiteID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblProjectToTblProjectViaIntParentProjectID` FOREIGN KEY (`intParentProjectID`) REFERENCES `tblProject` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblProjectToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblProjectUser`;

CREATE TABLE `tblProjectUser` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateAdded` datetime DEFAULT NULL,
  `intProjectID` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblProjectUserIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblProjectUserToTblProjectViaIntProjectID` (`intProjectID`),
  KEY `fkTblProjectUserToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblProjectUserToTblProjectViaIntProjectID` FOREIGN KEY (`intProjectID`) REFERENCES `tblProject` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblProjectUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblProjectUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPromotionalOffer`;

CREATE TABLE `tblPromotionalOffer` (
  `id` bigint NOT NULL,
  `bolApplyToCmmsOnly` tinyint DEFAULT NULL,
  `bolAvailable` tinyint DEFAULT NULL,
  `bolSingleUse` tinyint DEFAULT NULL,
  `dblDiscount` double NOT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDateExpiry` datetime DEFAULT NULL,
  `dtmDateUpdated` datetime DEFAULT NULL,
  `intDurationMonths` bigint NOT NULL,
  `intLastUpdatedByUserID` bigint DEFAULT NULL,
  `intLimit` bigint NOT NULL,
  `intPromotionType` bigint DEFAULT NULL,
  `intUsed` bigint NOT NULL,
  `strDescription` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDiscountCode` varchar(24) COLLATE utf8mb3_bin NOT NULL,
  `strMessageOnSignup` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strOfferTitle` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblPromotionalOfferToTblUserViaIntLastUpdatedByUserID` (`intLastUpdatedByUserID`),
  CONSTRAINT `fkTblPromotionalOfferToTblUserViaIntLastUpdatedByUserID` FOREIGN KEY (`intLastUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPromotionalOfferDetail`;

CREATE TABLE `tblPromotionalOfferDetail` (
  `id` bigint NOT NULL,
  `intAddProductID` bigint DEFAULT NULL,
  `intNewSeats` bigint DEFAULT NULL,
  `intPromotionalOfferID` bigint NOT NULL,
  `intTypeCode` bigint NOT NULL,
  `intUpgradeProductTierID` bigint DEFAULT NULL,
  `intUpgradeRecurringTypeID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblPromotionalOfferDetailToTblProductViaIntAddProductID` (`intAddProductID`),
  KEY `fkTblPromotionalOfferDetailToTblRecurringTypeViaIntUpg230950365` (`intUpgradeRecurringTypeID`),
  KEY `fkTblPromotionalOfferDetailToTblProductTierViaIntUpgra836988905` (`intUpgradeProductTierID`),
  KEY `fkTblPromotionalOfferDetailToTblPromotionalOfferViaIn1725564611` (`intPromotionalOfferID`),
  CONSTRAINT `fkTblPromotionalOfferDetailToTblProductTierViaIntUpgra836988905` FOREIGN KEY (`intUpgradeProductTierID`) REFERENCES `tblProductTier` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblPromotionalOfferDetailToTblProductViaIntAddProductID` FOREIGN KEY (`intAddProductID`) REFERENCES `tblProduct` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblPromotionalOfferDetailToTblPromotionalOfferViaIn1725564611` FOREIGN KEY (`intPromotionalOfferID`) REFERENCES `tblPromotionalOffer` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblPromotionalOfferDetailToTblRecurringTypeViaIntUpg230950365` FOREIGN KEY (`intUpgradeRecurringTypeID`) REFERENCES `tblRecurringType` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPromotionalOfferPricingTier`;

CREATE TABLE `tblPromotionalOfferPricingTier` (
  `id` bigint NOT NULL,
  `intPricingTierID` bigint DEFAULT NULL,
  `intPromotionalOfferID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblPromotionalOfferPricingTierToTblPricingTierViaIn1370877860` (`intPricingTierID`),
  KEY `fkTblPromotionalOfferPricingTierToTblPromotionalOffer1651163174` (`intPromotionalOfferID`),
  CONSTRAINT `fkTblPromotionalOfferPricingTierToTblPricingTierViaIn1370877860` FOREIGN KEY (`intPricingTierID`) REFERENCES `tblPricingTier` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblPromotionalOfferPricingTierToTblPromotionalOffer1651163174` FOREIGN KEY (`intPromotionalOfferID`) REFERENCES `tblPromotionalOffer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPTTxnThroughput`;

CREATE TABLE `tblPTTxnThroughput` (
  `id` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPurchaseOrder`;

CREATE TABLE `tblPurchaseOrder` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblFreight` double DEFAULT NULL,
  `dblSubtotal` double NOT NULL,
  `dblTax1` double DEFAULT NULL,
  `dblTax2` double DEFAULT NULL,
  `dblTotal` double NOT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDateExpectedDelivery` datetime DEFAULT NULL,
  `dtmDateLastUpdated` datetime DEFAULT NULL,
  `dtmDateReceived` datetime DEFAULT NULL,
  `dtmDateRequiredBy` datetime DEFAULT NULL,
  `dtmDateSubmitted` datetime DEFAULT NULL,
  `intAccountID` bigint DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intBillToCountryID` bigint DEFAULT NULL,
  `intBillToID` bigint DEFAULT NULL,
  `intBillingTermID` bigint DEFAULT NULL,
  `intChargeDepartmentID` bigint DEFAULT NULL,
  `intCode` bigint NOT NULL,
  `intCreatedByUserID` bigint NOT NULL,
  `intLastUpdatedUserID` bigint DEFAULT NULL,
  `intLocationID` bigint DEFAULT NULL,
  `intPurchaseCurrencyID` bigint DEFAULT NULL,
  `intPurchaseOrderStatusID` bigint DEFAULT NULL,
  `intSendToSupplierMethod` bigint NOT NULL,
  `intShipToCountryID` bigint DEFAULT NULL,
  `intShipToID` bigint DEFAULT NULL,
  `intSiteID` bigint NOT NULL,
  `intSupplierCountryID` bigint DEFAULT NULL,
  `intSupplierID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `intVendorID` bigint DEFAULT NULL,
  `intWorkOrderID` bigint DEFAULT NULL,
  `strBillToAddress` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strBillToCity` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strBillToPostalCode` varchar(16) COLLATE utf8mb3_bin DEFAULT NULL,
  `strBillToProvince` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPurchaseOrderReference` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strShipToAddress` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strShipToCity` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strShipToPostalCode` varchar(16) COLLATE utf8mb3_bin DEFAULT NULL,
  `strShipToProvince` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSupplierAddress` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSupplierCity` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSupplierPostalCode` varchar(16) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSupplierProvince` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strTransactionID` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPurchaseOrderIntTenantIDIntCode` (`intTenantID`,`intCode`),
  UNIQUE KEY `xuTblPurchaseOrderIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblPurchaseOrderToTblAccountViaIntAccountID` (`intAccountID`),
  KEY `fkTblPurchaseOrderToTblAssetViaIntSiteIDAndIntTenantID` (`intTenantID`,`intSiteID`),
  KEY `fkTblPurchaseOrderToTblAssetViaIntLocationID` (`intLocationID`),
  KEY `fkTblPurchaseOrderToTblAssetViaIntBillToID` (`intBillToID`),
  KEY `fkTblPurchaseOrderToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`),
  KEY `fkTblPurchaseOrderToTblChargeDepartmentViaIntChargeDe1001662196` (`intTenantID`,`intChargeDepartmentID`),
  KEY `fkTblPurchaseOrderToTblCurrencyViaIntPurchaseCurrencyID` (`intPurchaseCurrencyID`),
  KEY `fkTblPurchaseOrderToTblWorkOrderViaIntWorkOrderID` (`intWorkOrderID`),
  KEY `fkTblPurchaseOrderToTblCountryViaIntBillToCountryID` (`intBillToCountryID`),
  KEY `fkTblPurchaseOrderToTblCountryViaIntShipToCountryID` (`intShipToCountryID`),
  KEY `fkTblPurchaseOrderToTblAssetViaIntShipToID` (`intShipToID`),
  KEY `fkTblPurchaseOrderToTblBusinessViaIntVendorID` (`intVendorID`),
  KEY `fkTblPurchaseOrderToTblBusinessViaIntSupplierIDAndIntTenantID` (`intTenantID`,`intSupplierID`),
  KEY `fkTblPurchaseOrderToTblCountryViaIntSupplierCountryID` (`intSupplierCountryID`),
  KEY `fkTblPurchaseOrderToTblAssetViaIntAssetID` (`intAssetID`),
  KEY `fkTblPurchaseOrderToTblPurchaseOrderStatusViaIntPurch1298462554` (`intTenantID`,`intPurchaseOrderStatusID`),
  KEY `fkTblPurchaseOrderToTblUserViaIntLastUpdatedUserID` (`intLastUpdatedUserID`),
  KEY `fkTblPurchaseOrderToTblBillingTermViaIntBillingTermIDA190938202` (`intTenantID`,`intBillingTermID`),
  CONSTRAINT `fkTblPurchaseOrderToTblAccountViaIntAccountID` FOREIGN KEY (`intAccountID`) REFERENCES `tblAccount` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderToTblAssetViaIntBillToID` FOREIGN KEY (`intBillToID`) REFERENCES `tblAsset` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderToTblAssetViaIntLocationID` FOREIGN KEY (`intLocationID`) REFERENCES `tblAsset` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderToTblAssetViaIntShipToID` FOREIGN KEY (`intShipToID`) REFERENCES `tblAsset` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intSiteID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderToTblBillingTermViaIntBillingTermIDA190938202` FOREIGN KEY (`intTenantID`, `intBillingTermID`) REFERENCES `tblBillingTerm` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderToTblBusinessViaIntSupplierIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intSupplierID`) REFERENCES `tblBusiness` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderToTblBusinessViaIntVendorID` FOREIGN KEY (`intVendorID`) REFERENCES `tblBusiness` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderToTblChargeDepartmentViaIntChargeDe1001662196` FOREIGN KEY (`intTenantID`, `intChargeDepartmentID`) REFERENCES `tblChargeDepartment` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderToTblCountryViaIntBillToCountryID` FOREIGN KEY (`intBillToCountryID`) REFERENCES `tblCountry` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderToTblCountryViaIntShipToCountryID` FOREIGN KEY (`intShipToCountryID`) REFERENCES `tblCountry` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderToTblCountryViaIntSupplierCountryID` FOREIGN KEY (`intSupplierCountryID`) REFERENCES `tblCountry` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderToTblCurrencyViaIntPurchaseCurrencyID` FOREIGN KEY (`intPurchaseCurrencyID`) REFERENCES `tblCurrency` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderToTblPurchaseOrderStatusViaIntPurch1298462554` FOREIGN KEY (`intTenantID`, `intPurchaseOrderStatusID`) REFERENCES `tblPurchaseOrderStatus` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderToTblUserViaIntLastUpdatedUserID` FOREIGN KEY (`intLastUpdatedUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderToTblWorkOrderViaIntWorkOrderID` FOREIGN KEY (`intWorkOrderID`) REFERENCES `tblWorkOrder` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPurchaseOrderAdditionalCost`;

CREATE TABLE `tblPurchaseOrderAdditionalCost` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolOverridePoLineItemTax` tinyint DEFAULT NULL,
  `dblPrice` double DEFAULT NULL,
  `dblTaxRate` double DEFAULT NULL,
  `intBusinessID` bigint DEFAULT NULL,
  `intPurchaseOrderAdditionalCostTypeID` bigint DEFAULT NULL,
  `intPurchaseOrderID` bigint DEFAULT NULL,
  `intShippingTypeID` bigint DEFAULT NULL,
  `strDescription` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPurchaseOrderAdditionalCostIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblPurchaseOrderAdditionalCostToTblPurchaseOrderViaI241590741` (`intPurchaseOrderID`),
  KEY `fkTblPurchaseOrderAdditionalCostToTblPurchaseOrderAddi831037589` (`intPurchaseOrderAdditionalCostTypeID`),
  KEY `fkTblPurchaseOrderAdditionalCostToTblShippingTypeViaI1719464281` (`intShippingTypeID`),
  KEY `fkTblPurchaseOrderAdditionalCostToTblBusinessViaIntBusinessID` (`intBusinessID`),
  CONSTRAINT `fkTblPurchaseOrderAdditionalCostToTblBusinessViaIntBusinessID` FOREIGN KEY (`intBusinessID`) REFERENCES `tblBusiness` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderAdditionalCostToTblPurchaseOrderAddi831037589` FOREIGN KEY (`intPurchaseOrderAdditionalCostTypeID`) REFERENCES `tblPurchaseOrderAdditionalCostType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderAdditionalCostToTblPurchaseOrderViaI241590741` FOREIGN KEY (`intPurchaseOrderID`) REFERENCES `tblPurchaseOrder` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderAdditionalCostToTblShippingTypeViaI1719464281` FOREIGN KEY (`intShippingTypeID`) REFERENCES `tblShippingType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderAdditionalCostToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPurchaseOrderAdditionalCostType`;

CREATE TABLE `tblPurchaseOrderAdditionalCostType` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `bolAlwaysShowOnNewPo` tinyint DEFAULT NULL,
  `intControlID` bigint NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPurchaseOrderAdditionalCostTypeIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblPurchaseOrderAdditionalCostTypeIntTenantIDStrName` (`intTenantID`,`strName`),
  CONSTRAINT `fkTblPurchaseOrderAdditionalCostTypeToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPurchaseOrderLineItem`;

CREATE TABLE `tblPurchaseOrderLineItem` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolAddedDirectlyToPurchaseOrder` tinyint DEFAULT NULL,
  `bolProductionEquipmentDownWhileOnOrder` tinyint DEFAULT NULL,
  `bolSupplierConfirmed` tinyint DEFAULT NULL,
  `dblRemoteOrgUnitPrice` double DEFAULT NULL,
  `dblTaxRate` double DEFAULT NULL,
  `dblTotalPrice` double DEFAULT NULL,
  `dblUnitPrice` double DEFAULT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmRequiredByDate` datetime DEFAULT NULL,
  `intAccountID` bigint DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intChargeDepartmentID` bigint DEFAULT NULL,
  `intParentPurchaseOrderLineItemID` bigint DEFAULT NULL,
  `intPurchaseOrderID` bigint DEFAULT NULL,
  `intRequestedByUserID` bigint DEFAULT NULL,
  `intShipToLocationID` bigint DEFAULT NULL,
  `intSiteID` bigint NOT NULL,
  `intSourceAssetID` bigint DEFAULT NULL,
  `intSourceWorkOrderID` bigint DEFAULT NULL,
  `intStockHistoryID` bigint DEFAULT NULL,
  `intStockID` bigint DEFAULT NULL,
  `intSupplierID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `qtyOnOrder` double DEFAULT NULL,
  `qtyRecieved` double DEFAULT NULL,
  `strBusinessAssetNumber` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDescription` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strJSON` varchar(10000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPurchaseOrderLineItemIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblPurchaseOrderLineItemIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblPurchaseOrderLineItemToTblBusinessViaIntSupplier1580630541` (`intTenantID`,`intSupplierID`),
  KEY `fkTblPurchaseOrderLineItemToTblStockViaIntStockIDAndIntTenantID` (`intTenantID`,`intStockID`),
  KEY `fkTblPurchaseOrderLineItemToTblAccountViaIntAccountIDA792255745` (`intTenantID`,`intAccountID`),
  KEY `fkTblPurchaseOrderLineItemToTblAssetViaIntAssetIDAndIntTenantID` (`intTenantID`,`intAssetID`),
  KEY `fkTblPurchaseOrderLineItemToTblAssetViaIntSiteIDAndIntTenantID` (`intTenantID`,`intSiteID`),
  KEY `fkTblPurchaseOrderLineItemToTblChargeDepartmentViaInt1427593549` (`intTenantID`,`intChargeDepartmentID`),
  KEY `fkTblPurchaseOrderLineItemToTblPurchaseOrderLineItemV1229238728` (`intParentPurchaseOrderLineItemID`),
  KEY `fkTblPurchaseOrderLineItemToTblStockHistoryViaIntStockHistoryID` (`intStockHistoryID`),
  KEY `fkTblPurchaseOrderLineItemToTblUserViaIntRequestedByUserID` (`intRequestedByUserID`),
  KEY `fkTblPurchaseOrderLineItemToTblAssetViaIntShipToLocat1860331469` (`intTenantID`,`intShipToLocationID`),
  KEY `fkTblPurchaseOrderLineItemToTblPurchaseOrderViaIntPur2133802367` (`intTenantID`,`intPurchaseOrderID`),
  KEY `fkTblPurchaseOrderLineItemToTblWorkOrderViaIntSourceWo825060644` (`intTenantID`,`intSourceWorkOrderID`),
  KEY `fkTblPurchaseOrderLineItemToTblAssetViaIntSourceAssetI466988292` (`intTenantID`,`intSourceAssetID`),
  CONSTRAINT `fkTblPurchaseOrderLineItemToTblAccountViaIntAccountIDA792255745` FOREIGN KEY (`intTenantID`, `intAccountID`) REFERENCES `tblAccount` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderLineItemToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblPurchaseOrderLineItemToTblAssetViaIntShipToLocat1860331469` FOREIGN KEY (`intTenantID`, `intShipToLocationID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblPurchaseOrderLineItemToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intSiteID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderLineItemToTblAssetViaIntSourceAssetI466988292` FOREIGN KEY (`intTenantID`, `intSourceAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblPurchaseOrderLineItemToTblBusinessViaIntSupplier1580630541` FOREIGN KEY (`intTenantID`, `intSupplierID`) REFERENCES `tblBusiness` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderLineItemToTblChargeDepartmentViaInt1427593549` FOREIGN KEY (`intTenantID`, `intChargeDepartmentID`) REFERENCES `tblChargeDepartment` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderLineItemToTblPurchaseOrderLineItemV1229238728` FOREIGN KEY (`intParentPurchaseOrderLineItemID`) REFERENCES `tblPurchaseOrderLineItem` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderLineItemToTblPurchaseOrderViaIntPur2133802367` FOREIGN KEY (`intTenantID`, `intPurchaseOrderID`) REFERENCES `tblPurchaseOrder` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderLineItemToTblStockHistoryViaIntStockHistoryID` FOREIGN KEY (`intStockHistoryID`) REFERENCES `tblStockHistory` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderLineItemToTblStockViaIntStockIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intStockID`) REFERENCES `tblStock` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblPurchaseOrderLineItemToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderLineItemToTblUserViaIntRequestedByUserID` FOREIGN KEY (`intRequestedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderLineItemToTblWorkOrderViaIntSourceWo825060644` FOREIGN KEY (`intTenantID`, `intSourceWorkOrderID`) REFERENCES `tblWorkOrder` (`intTenantID`, `id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPurchaseOrderLineItemRfq`;

CREATE TABLE `tblPurchaseOrderLineItemRfq` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intPurchaseOrderLineItemID` bigint NOT NULL,
  `intRFQID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPurchaseOrderLineItemRfqIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblPurchaseOrderLineItemRfqToTblRFQViaIntRFQID` (`intRFQID`),
  KEY `fkTblPurchaseOrderLineItemRfqToTblPurchaseOrderLineIt1572214171` (`intPurchaseOrderLineItemID`),
  CONSTRAINT `fkTblPurchaseOrderLineItemRfqToTblPurchaseOrderLineIt1572214171` FOREIGN KEY (`intPurchaseOrderLineItemID`) REFERENCES `tblPurchaseOrderLineItem` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblPurchaseOrderLineItemRfqToTblRFQViaIntRFQID` FOREIGN KEY (`intRFQID`) REFERENCES `tblRFQ` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblPurchaseOrderLineItemRfqToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPurchaseOrderLog`;

CREATE TABLE `tblPurchaseOrderLog` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateLogged` datetime NOT NULL,
  `intFromStatusId` bigint NOT NULL,
  `intPurchaseOrderID` bigint NOT NULL,
  `intToStatusId` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPurchaseOrderLogIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblPurchaseOrderLogToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblPurchaseOrderLogToTblPurchaseOrderStatusViaIntToStatusId` (`intToStatusId`),
  KEY `fkTblPurchaseOrderLogToTblPurchaseOrderViaIntPurchaseOrderID` (`intPurchaseOrderID`),
  KEY `fkTblPurchaseOrderLogToTblPurchaseOrderStatusViaIntFromStatusId` (`intFromStatusId`),
  CONSTRAINT `fkTblPurchaseOrderLogToTblPurchaseOrderStatusViaIntFromStatusId` FOREIGN KEY (`intFromStatusId`) REFERENCES `tblPurchaseOrderStatus` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderLogToTblPurchaseOrderStatusViaIntToStatusId` FOREIGN KEY (`intToStatusId`) REFERENCES `tblPurchaseOrderStatus` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderLogToTblPurchaseOrderViaIntPurchaseOrderID` FOREIGN KEY (`intPurchaseOrderID`) REFERENCES `tblPurchaseOrder` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderLogToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPurchaseOrderStatus`;

CREATE TABLE `tblPurchaseOrderStatus` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `intControlID` bigint NOT NULL,
  `intUpdated` bigint NOT NULL,
  `strDefaultLabel` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPurchaseOrderStatusIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblPurchaseOrderStatusIntTenantIDStrName` (`intTenantID`,`strName`),
  UNIQUE KEY `xuTblPurchaseOrderStatusIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  CONSTRAINT `fkTblPurchaseOrderStatusToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPurchaseOrderStatusTransition`;

CREATE TABLE `tblPurchaseOrderStatusTransition` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `bolRequireComment` tinyint DEFAULT NULL,
  `bolSendNotification` tinyint DEFAULT NULL,
  `intFromStatusID` bigint NOT NULL,
  `intToStatusID` bigint NOT NULL,
  `strDefaultLabel` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPropertiesFileKey` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPurchaseOrderStatusTransitionIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblPurchaseOrderStatusTransitionIntTenantIDIntFromS1058397021` (`intTenantID`,`intFromStatusID`,`intToStatusID`,`intSysCode`),
  KEY `fkTblPurchaseOrderStatusTransitionToTblPurchaseOrderS1222334400` (`intToStatusID`),
  KEY `fkTblPurchaseOrderStatusTransitionToTblPurchaseOrderS1405731857` (`intFromStatusID`),
  CONSTRAINT `fkTblPurchaseOrderStatusTransitionToTblPurchaseOrderS1222334400` FOREIGN KEY (`intToStatusID`) REFERENCES `tblPurchaseOrderStatus` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderStatusTransitionToTblPurchaseOrderS1405731857` FOREIGN KEY (`intFromStatusID`) REFERENCES `tblPurchaseOrderStatus` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderStatusTransitionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPurchaseOrderStatusTransitionPermission`;

CREATE TABLE `tblPurchaseOrderStatusTransitionPermission` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intPurchaseOrderStatusTransitionId` bigint NOT NULL,
  `strName` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPurchaseOrderStatusTransitionPermissionIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblPurchaseOrderStatusTransitionPermissionIntPurchas813070461` (`intPurchaseOrderStatusTransitionId`,`id`),
  CONSTRAINT `fkTblPurchaseOrderStatusTransitionPermissionToTblPurcha97817389` FOREIGN KEY (`intPurchaseOrderStatusTransitionId`) REFERENCES `tblPurchaseOrderStatusTransition` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderStatusTransitionPermissionToTblTenan449116137` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPurchaseOrderUser`;

CREATE TABLE `tblPurchaseOrderUser` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intPurchaseOrderID` bigint NOT NULL,
  `intUserID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPurchaseOrderUserIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblPurchaseOrderUserIntTenantIDIntPurchaseOrderIDIntUserID` (`intTenantID`,`intPurchaseOrderID`,`intUserID`),
  KEY `fkTblPurchaseOrderUserToTblPurchaseOrderViaIntPurchaseOrderID` (`intPurchaseOrderID`),
  KEY `fkTblPurchaseOrderUserToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblPurchaseOrderUserToTblPurchaseOrderViaIntPurchaseOrderID` FOREIGN KEY (`intPurchaseOrderID`) REFERENCES `tblPurchaseOrder` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblPurchaseOrderUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblPurchaseOrderUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblQuote`;

CREATE TABLE `tblQuote` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolCreatedAsInvite` tinyint DEFAULT NULL,
  `bolExcludeTax` tinyint DEFAULT NULL,
  `bolIncludeInForecast` tinyint DEFAULT NULL,
  `bolLockQuoteForUserAccept` tinyint DEFAULT NULL,
  `dblClosingPercent` double DEFAULT NULL,
  `dtmDateClosed` datetime DEFAULT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDateSent` datetime DEFAULT NULL,
  `dtmDateUpdated` datetime DEFAULT NULL,
  `dtmForecastedCloseDate` datetime DEFAULT NULL,
  `intAcceptedByUserID` bigint DEFAULT NULL,
  `intAccountQuoteStatusID` bigint DEFAULT NULL,
  `intExpiryDays` bigint NOT NULL,
  `intForecastedRecurringTypeId` bigint DEFAULT NULL,
  `intIssuedByTenantID` bigint DEFAULT NULL,
  `intPreparedByUserID` bigint DEFAULT NULL,
  `intPromotionalOfferID` bigint DEFAULT NULL,
  `intRecurringTypeID` bigint DEFAULT NULL,
  `strPoNumber` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblQuoteIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblQuoteToTblRecurringTypeViaIntForecastedRecurringTypeId` (`intForecastedRecurringTypeId`),
  KEY `fkTblQuoteToTblUserViaIntAcceptedByUserID` (`intAcceptedByUserID`),
  KEY `fkTblQuoteToTblRecurringTypeViaIntRecurringTypeID` (`intRecurringTypeID`),
  KEY `fkTblQuoteToTblTenantViaIntIssuedByTenantID` (`intIssuedByTenantID`),
  KEY `fkTblQuoteToTblPromotionalOfferViaIntPromotionalOfferID` (`intPromotionalOfferID`),
  KEY `fkTblQuoteToTblUserViaIntPreparedByUserID` (`intPreparedByUserID`),
  KEY `fkTblQuoteToTblQuoteStatusViaIntAccountQuoteStatusID` (`intAccountQuoteStatusID`),
  CONSTRAINT `fkTblQuoteToTblPromotionalOfferViaIntPromotionalOfferID` FOREIGN KEY (`intPromotionalOfferID`) REFERENCES `tblPromotionalOffer` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblQuoteToTblQuoteStatusViaIntAccountQuoteStatusID` FOREIGN KEY (`intAccountQuoteStatusID`) REFERENCES `tblQuoteStatus` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblQuoteToTblRecurringTypeViaIntForecastedRecurringTypeId` FOREIGN KEY (`intForecastedRecurringTypeId`) REFERENCES `tblRecurringType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblQuoteToTblRecurringTypeViaIntRecurringTypeID` FOREIGN KEY (`intRecurringTypeID`) REFERENCES `tblRecurringType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblQuoteToTblTenantViaIntIssuedByTenantID` FOREIGN KEY (`intIssuedByTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblQuoteToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblQuoteToTblUserViaIntAcceptedByUserID` FOREIGN KEY (`intAcceptedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblQuoteToTblUserViaIntPreparedByUserID` FOREIGN KEY (`intPreparedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblQuoteStatus`;

CREATE TABLE `tblQuoteStatus` (
  `id` bigint NOT NULL,
  `strName` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRateLimiterType`;

CREATE TABLE `tblRateLimiterType` (
  `id` bigint NOT NULL,
  `intMaxBurstSize` bigint NOT NULL,
  `intMaxRequests` bigint NOT NULL,
  `intMode` bigint NOT NULL,
  `intPerTimeUnitMultiplier` bigint NOT NULL,
  `intPerTimeUnits` bigint NOT NULL,
  `strDescription` varchar(1024) COLLATE utf8mb3_bin NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRateLimiterTypeStrName` (`strName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRCAAction`;

CREATE TABLE `tblRCAAction` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolActive` tinyint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `strCode` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  `strDescription` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRCAActionIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblRCAActionIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  CONSTRAINT `fkTblRCAActionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRCACause`;

CREATE TABLE `tblRCACause` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolActive` tinyint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `strCode` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  `strDescription` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRCACauseIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblRCACauseIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  CONSTRAINT `fkTblRCACauseToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRCAGrouping`;

CREATE TABLE `tblRCAGrouping` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intAssetCategoryID` bigint DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intRCAProblemID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRCAGroupingIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblRCAGroupingIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblRCAGroupingToTblAssetViaIntAssetIDAndIntTenantID` (`intTenantID`,`intAssetID`),
  KEY `fkTblRCAGroupingToTblRCAProblemViaIntRCAProblemID` (`intRCAProblemID`),
  KEY `fkTblRCAGroupingToTblAssetCategoryViaIntAssetCategory2144176608` (`intTenantID`,`intAssetCategoryID`),
  CONSTRAINT `fkTblRCAGroupingToTblAssetCategoryViaIntAssetCategory2144176608` FOREIGN KEY (`intTenantID`, `intAssetCategoryID`) REFERENCES `tblAssetCategory` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRCAGroupingToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRCAGroupingToTblRCAProblemViaIntRCAProblemID` FOREIGN KEY (`intRCAProblemID`) REFERENCES `tblRCAProblem` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRCAGroupingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRCAGroupingAction`;

CREATE TABLE `tblRCAGroupingAction` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intRCAActionID` bigint DEFAULT NULL,
  `intRCAGroupingID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRCAGroupingActionIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblRCAGroupingActionIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblRCAGroupingActionToTblRCAActionViaIntRCAActionID` (`intRCAActionID`),
  KEY `fkTblRCAGroupingActionToTblRCAGroupingViaIntRCAGroupingID` (`intRCAGroupingID`),
  CONSTRAINT `fkTblRCAGroupingActionToTblRCAActionViaIntRCAActionID` FOREIGN KEY (`intRCAActionID`) REFERENCES `tblRCAAction` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRCAGroupingActionToTblRCAGroupingViaIntRCAGroupingID` FOREIGN KEY (`intRCAGroupingID`) REFERENCES `tblRCAGrouping` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblRCAGroupingActionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRCAGroupingCause`;

CREATE TABLE `tblRCAGroupingCause` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intRCACauseID` bigint DEFAULT NULL,
  `intRCAGroupingID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRCAGroupingCauseIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblRCAGroupingCauseIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblRCAGroupingCauseToTblRCACauseViaIntRCACauseID` (`intRCACauseID`),
  KEY `fkTblRCAGroupingCauseToTblRCAGroupingViaIntRCAGroupingID` (`intRCAGroupingID`),
  CONSTRAINT `fkTblRCAGroupingCauseToTblRCACauseViaIntRCACauseID` FOREIGN KEY (`intRCACauseID`) REFERENCES `tblRCACause` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRCAGroupingCauseToTblRCAGroupingViaIntRCAGroupingID` FOREIGN KEY (`intRCAGroupingID`) REFERENCES `tblRCAGrouping` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblRCAGroupingCauseToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRCAProblem`;

CREATE TABLE `tblRCAProblem` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolActive` tinyint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `strCode` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  `strDescription` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRCAProblemIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblRCAProblemIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  CONSTRAINT `fkTblRCAProblemToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblReasonToSetAssetOffline`;

CREATE TABLE `tblReasonToSetAssetOffline` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSourceSysCode` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strName` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblReasonToSetAssetOfflineIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblReasonToSetAssetOfflineStrUuid` (`strUuid`),
  KEY `xTblReasonToSetAssetOfflineIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  CONSTRAINT `fkTblReasonToSetAssetOfflineToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblReasonToSetAssetOnline`;

CREATE TABLE `tblReasonToSetAssetOnline` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSourceSysCode` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strName` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblReasonToSetAssetOnlineIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblReasonToSetAssetOnlineStrUuid` (`strUuid`),
  KEY `xTblReasonToSetAssetOnlineIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  CONSTRAINT `fkTblReasonToSetAssetOnlineToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblReceipt`;

CREATE TABLE `tblReceipt` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateOrdered` datetime DEFAULT NULL,
  `dtmDateReceived` datetime DEFAULT NULL,
  `intCode` bigint NOT NULL,
  `intPurchaseCurrencyID` bigint DEFAULT NULL,
  `intPurchaseOrderID` bigint DEFAULT NULL,
  `intReceiptStatusID` bigint NOT NULL,
  `intReceivedByUserID` bigint DEFAULT NULL,
  `intSiteID` bigint NOT NULL,
  `intSupplierID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `strPackingSlip` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblReceiptIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblReceiptIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblReceiptToTblCurrencyViaIntPurchaseCurrencyID` (`intPurchaseCurrencyID`),
  KEY `fkTblReceiptToTblUserViaIntReceivedByUserID` (`intReceivedByUserID`),
  KEY `fkTblReceiptToTblPurchaseOrderViaIntPurchaseOrderIDAn1869914267` (`intTenantID`,`intPurchaseOrderID`),
  KEY `fkTblReceiptToTblAssetViaIntSiteIDAndIntTenantID` (`intTenantID`,`intSiteID`),
  KEY `fkTblReceiptToTblReceiptStatusViaIntReceiptStatusIDAnd705949051` (`intTenantID`,`intReceiptStatusID`),
  KEY `fkTblReceiptToTblBusinessViaIntSupplierIDAndIntTenantID` (`intTenantID`,`intSupplierID`),
  CONSTRAINT `fkTblReceiptToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intSiteID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblReceiptToTblBusinessViaIntSupplierIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intSupplierID`) REFERENCES `tblBusiness` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblReceiptToTblCurrencyViaIntPurchaseCurrencyID` FOREIGN KEY (`intPurchaseCurrencyID`) REFERENCES `tblCurrency` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblReceiptToTblPurchaseOrderViaIntPurchaseOrderIDAn1869914267` FOREIGN KEY (`intTenantID`, `intPurchaseOrderID`) REFERENCES `tblPurchaseOrder` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblReceiptToTblReceiptStatusViaIntReceiptStatusIDAnd705949051` FOREIGN KEY (`intTenantID`, `intReceiptStatusID`) REFERENCES `tblReceiptStatus` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblReceiptToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblReceiptToTblUserViaIntReceivedByUserID` FOREIGN KEY (`intReceivedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblReceiptLineItem`;

CREATE TABLE `tblReceiptLineItem` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblPurchasePricePerUnit` double DEFAULT NULL,
  `dblPurchasePriceTotal` double DEFAULT NULL,
  `dtmDateExpiryOfInventoryItems` datetime DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intParentReceiptLineItemID` bigint DEFAULT NULL,
  `intPurchaseOrderLineItemID` bigint DEFAULT NULL,
  `intReceiptID` bigint NOT NULL,
  `intReceiveToFacilityID` bigint DEFAULT NULL,
  `intReceiveToStockID` bigint DEFAULT NULL,
  `intStockID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `intV2ID` bigint DEFAULT NULL,
  `qtyQuantityOrdered` double DEFAULT NULL,
  `qtyQuantityReceived` double DEFAULT NULL,
  `strDescription` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strImportedFromTable` varchar(3) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblReceiptLineItemIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblReceiptLineItemStrUuid` (`strUuid`),
  KEY `xTblReceiptLineItemIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblReceiptLineItemToTblStockViaIntReceiveToStockIDAn593840726` (`intTenantID`,`intReceiveToStockID`),
  KEY `fkTblReceiptLineItemToTblAssetViaIntReceiveToFacility1859181723` (`intTenantID`,`intReceiveToFacilityID`),
  KEY `fkTblReceiptLineItemToTblReceiptViaIntReceiptIDAndIntTenantID` (`intTenantID`,`intReceiptID`),
  KEY `fkTblReceiptLineItemToTblReceiptLineItemViaIntParentRe726223574` (`intTenantID`,`intParentReceiptLineItemID`),
  KEY `fkTblReceiptLineItemToTblAssetViaIntAssetIDAndIntTenantID` (`intTenantID`,`intAssetID`),
  KEY `fkTblReceiptLineItemToTblPurchaseOrderLineItemViaIntP1716053076` (`intTenantID`,`intPurchaseOrderLineItemID`),
  KEY `fkTblReceiptLineItemToTblStockViaIntStockIDAndIntTenantID` (`intTenantID`,`intStockID`),
  CONSTRAINT `fkTblReceiptLineItemToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblReceiptLineItemToTblAssetViaIntReceiveToFacility1859181723` FOREIGN KEY (`intTenantID`, `intReceiveToFacilityID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblReceiptLineItemToTblPurchaseOrderLineItemViaIntP1716053076` FOREIGN KEY (`intTenantID`, `intPurchaseOrderLineItemID`) REFERENCES `tblPurchaseOrderLineItem` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblReceiptLineItemToTblReceiptLineItemViaIntParentRe726223574` FOREIGN KEY (`intTenantID`, `intParentReceiptLineItemID`) REFERENCES `tblReceiptLineItem` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblReceiptLineItemToTblReceiptViaIntReceiptIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intReceiptID`) REFERENCES `tblReceipt` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblReceiptLineItemToTblStockViaIntReceiveToStockIDAn593840726` FOREIGN KEY (`intTenantID`, `intReceiveToStockID`) REFERENCES `tblStock` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblReceiptLineItemToTblStockViaIntStockIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intStockID`) REFERENCES `tblStock` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblReceiptLineItemToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblReceiptStatus`;

CREATE TABLE `tblReceiptStatus` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `intControlID` bigint NOT NULL,
  `intUpdated` bigint NOT NULL,
  `strDefaultLabel` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblReceiptStatusIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblReceiptStatusIntTenantIDStrName` (`intTenantID`,`strName`),
  UNIQUE KEY `xuTblReceiptStatusIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  KEY `xTblReceiptStatusIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  CONSTRAINT `fkTblReceiptStatusToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblReceiptStatusTransition`;

CREATE TABLE `tblReceiptStatusTransition` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intFromStatusID` bigint NOT NULL,
  `intToStatusID` bigint NOT NULL,
  `strDefaultLabel` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPropertiesFileKey` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblReceiptStatusTransitionIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblReceiptStatusTransitionIntTenantIDIntFromStatusI1560244409` (`intTenantID`,`intFromStatusID`,`intToStatusID`),
  KEY `fkTblReceiptStatusTransitionToTblReceiptStatusViaIntF1439095419` (`intFromStatusID`),
  KEY `fkTblReceiptStatusTransitionToTblReceiptStatusViaIntToStatusID` (`intToStatusID`),
  CONSTRAINT `fkTblReceiptStatusTransitionToTblReceiptStatusViaIntF1439095419` FOREIGN KEY (`intFromStatusID`) REFERENCES `tblReceiptStatus` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblReceiptStatusTransitionToTblReceiptStatusViaIntToStatusID` FOREIGN KEY (`intToStatusID`) REFERENCES `tblReceiptStatus` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblReceiptStatusTransitionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblReconciliationControl`;

CREATE TABLE `tblReconciliationControl` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolIsCreate` tinyint DEFAULT NULL,
  `bolIsDelete` tinyint DEFAULT NULL,
  `bolIsRead` tinyint DEFAULT NULL,
  `bolIsUpdate` tinyint DEFAULT NULL,
  `intIntegrationID` bigint NOT NULL,
  `strBaseTable` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  `strOwnedByEntity` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblReconciliationControlIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblReconciliationControlToTblIntegrationViaIntIntegrationID` (`intIntegrationID`),
  CONSTRAINT `fkTblReconciliationControlToTblIntegrationViaIntIntegrationID` FOREIGN KEY (`intIntegrationID`) REFERENCES `tblIntegration` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblReconciliationControlToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRecurringType`;

CREATE TABLE `tblRecurringType` (
  `id` bigint NOT NULL,
  `intDaysInAdvanceCreateOrder` bigint NOT NULL,
  `intDaysInAdvanceSendOrder` bigint DEFAULT NULL,
  `intRecurringPeriod` bigint NOT NULL,
  `strKey` varchar(50) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRegionUser`;

CREATE TABLE `tblRegionUser` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intRegionID` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRegionUserIntTenantIDIntRegionIDIntUserID` (`intTenantID`,`intRegionID`,`intUserID`),
  UNIQUE KEY `xuTblRegionUserIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblRegionUserToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblRegionUserToTblAssetViaIntRegionIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intRegionID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblRegionUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRegionUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRegionUserGroup`;

CREATE TABLE `tblRegionUserGroup` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intGroupID` bigint NOT NULL,
  `intRegionUserID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRegionUserGroupIntTenantIDIntRegionUserIDIntGroupID` (`intTenantID`,`intRegionUserID`,`intGroupID`),
  UNIQUE KEY `xuTblRegionUserGroupIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblRegionUserGroupToTblUserViaIntGroupID` (`intGroupID`),
  CONSTRAINT `fkTblRegionUserGroupToTblRegionUserViaIntRegionUserIDA805625715` FOREIGN KEY (`intTenantID`, `intRegionUserID`) REFERENCES `tblRegionUser` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblRegionUserGroupToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRegionUserGroupToTblUserViaIntGroupID` FOREIGN KEY (`intGroupID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRememberMeCookie`;

CREATE TABLE `tblRememberMeCookie` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateConsumed` datetime DEFAULT NULL,
  `dtmDateCreated` datetime NOT NULL,
  `intMaxAgeSeconds` bigint DEFAULT NULL,
  `intUserID` bigint NOT NULL,
  `strCreatedFromIp` varchar(32) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPayloadHash` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRememberMeCookieIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblRememberMeCookieIntTenantIDStrPayloadHash` (`intTenantID`,`strPayloadHash`),
  KEY `fkTblRememberMeCookieToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblRememberMeCookieToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblRememberMeCookieToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRemoteEntityIdMapping`;

CREATE TABLE `tblRemoteEntityIdMapping` (
  `id` bigint NOT NULL,
  `intTenantID` bigint DEFAULT NULL,
  `intLocalID` bigint NOT NULL,
  `strRemoteID` varchar(36) COLLATE utf8mb3_bin NOT NULL,
  `strType` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRemoteEntityIdMappingStrRemoteIDStrType` (`strRemoteID`,`strType`),
  UNIQUE KEY `xuTblRemoteEntityIdMappingIntlocalIDStrType` (`intLocalID`,`strType`),
  KEY `fkTblRemoteEntityIdMappingToTblTenantViaIntTenantID` (`intTenantID`),
  CONSTRAINT `fkTblRemoteEntityIdMappingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblReportCategory`;

CREATE TABLE `tblReportCategory` (
  `id` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblReportHistory`;

CREATE TABLE `tblReportHistory` (
  `id` bigint NOT NULL,
  `bolIsScheduled` tinyint NOT NULL,
  `dtmTime` datetime NOT NULL,
  `intReportTemplateID` bigint NOT NULL,
  `intTimeToGenerateMs` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblReportHistoryToTblReportTemplateViaIntReportTemplateID` (`intReportTemplateID`),
  KEY `fkTblReportHistoryToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblReportHistoryToTblReportTemplateViaIntReportTemplateID` FOREIGN KEY (`intReportTemplateID`) REFERENCES `tblReportTemplate` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblReportHistoryToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblReportPreset`;

CREATE TABLE `tblReportPreset` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intReportTemplateID` bigint NOT NULL,
  `strDescription` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblReportPresetIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblReportPresetToTblReportTemplateViaIntReportTemplateID` (`intReportTemplateID`),
  CONSTRAINT `fkTblReportPresetToTblReportTemplateViaIntReportTemplateID` FOREIGN KEY (`intReportTemplateID`) REFERENCES `tblReportTemplate` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblReportPresetToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblReportPresetParameter`;

CREATE TABLE `tblReportPresetParameter` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `intParamValueType` bigint NOT NULL,
  `intReportPresetID` bigint NOT NULL,
  `strParamName` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `strParamValue` varchar(2000) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblReportPresetParameterIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblReportPresetParameterIntTenantIDIntReportPresetI1418654875` (`intTenantID`,`intReportPresetID`,`strParamName`),
  UNIQUE KEY `xuTblReportPresetParameterIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  KEY `fkTblReportPresetParameterToTblReportPresetViaIntReportPresetID` (`intReportPresetID`),
  CONSTRAINT `fkTblReportPresetParameterToTblReportPresetViaIntReportPresetID` FOREIGN KEY (`intReportPresetID`) REFERENCES `tblReportPreset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblReportPresetParameterToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblReportsToResolved`;

CREATE TABLE `tblReportsToResolved` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intChildID` bigint DEFAULT NULL,
  `intParentID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblReportsToResolvedIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblReportsToResolvedToTblUserViaIntParentID` (`intParentID`),
  KEY `fkTblReportsToResolvedToTblUserViaIntChildID` (`intChildID`),
  CONSTRAINT `fkTblReportsToResolvedToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblReportsToResolvedToTblUserViaIntChildID` FOREIGN KEY (`intChildID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblReportsToResolvedToTblUserViaIntParentID` FOREIGN KEY (`intParentID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblReportTemplate`;

CREATE TABLE `tblReportTemplate` (
  `id` bigint NOT NULL,
  `bolAvailable` tinyint DEFAULT NULL,
  `bolDoNotUseWithEJP` tinyint DEFAULT NULL,
  `bolScheduled` tinyint DEFAULT NULL,
  `intFileContentsID` bigint DEFAULT NULL,
  `intMawebAddOnID` bigint DEFAULT NULL,
  `intOwnerTenantID` bigint DEFAULT NULL,
  `intRenderReportAs` bigint DEFAULT NULL,
  `intReportCategoryID` bigint DEFAULT NULL,
  `intReportTypeID` bigint DEFAULT NULL,
  `strClassification` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDefinition` longtext COLLATE utf8mb3_bin,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strInstructions` longtext COLLATE utf8mb3_bin,
  `strName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strReportAsJson` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  KEY `fkTblReportTemplateToTblFileContentsViaIntFileContentsID` (`intFileContentsID`),
  KEY `fkTblReportTemplateToTblReportCategoryViaIntReportCategoryID` (`intReportCategoryID`),
  KEY `fkTblReportTemplateToTblTenantViaIntOwnerTenantID` (`intOwnerTenantID`),
  KEY `fkTblReportTemplateToTblReportTypeViaIntReportTypeID` (`intReportTypeID`),
  CONSTRAINT `fkTblReportTemplateToTblFileContentsViaIntFileContentsID` FOREIGN KEY (`intFileContentsID`) REFERENCES `tblFileContents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblReportTemplateToTblReportCategoryViaIntReportCategoryID` FOREIGN KEY (`intReportCategoryID`) REFERENCES `tblReportCategory` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblReportTemplateToTblReportTypeViaIntReportTypeID` FOREIGN KEY (`intReportTypeID`) REFERENCES `tblReportType` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblReportTemplateToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblReportTemplateBI` BEFORE INSERT ON `tblreporttemplate` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblReportTemplateBU` BEFORE UPDATE ON `tblreporttemplate` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblReportTemplateBD` BEFORE DELETE ON `tblreporttemplate` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `tblReportType`;

CREATE TABLE `tblReportType` (
  `id` bigint NOT NULL,
  `intOrder` bigint DEFAULT NULL,
  `strDescription` varchar(1024) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strProviderClassName` varchar(1024) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblResetPassword`;

CREATE TABLE `tblResetPassword` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmTokenCreated` datetime NOT NULL,
  `dtmTokenUsed` datetime DEFAULT NULL,
  `intUserID` bigint NOT NULL,
  `strToken` varchar(1000) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblResetPasswordIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblResetPasswordStrToken` (`strToken`),
  KEY `fkTblResetPasswordToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblResetPasswordToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblResetPasswordToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblResource`;

CREATE TABLE `tblResource` (
  `id` bigint NOT NULL,
  `intTenantID` bigint DEFAULT NULL,
  `intDdColumnID` bigint DEFAULT NULL,
  `intDdTableID` bigint DEFAULT NULL,
  `intParentResourceID` bigint DEFAULT NULL,
  `intResourceNamespaceID` bigint DEFAULT NULL,
  `intResourceServiceID` bigint DEFAULT NULL,
  `intResourceTypeID` bigint DEFAULT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblResourceIntDdColumnID` (`intDdColumnID`),
  UNIQUE KEY `xuTblResourceIntDdTableID` (`intDdTableID`),
  UNIQUE KEY `xuTblResourceIntTenantIDStrName` (`intTenantID`,`strName`),
  KEY `fkTblResourceToTblResourceTypeViaIntResourceTypeID` (`intResourceTypeID`),
  KEY `fkTblResourceToTblResourceNamespaceViaIntResourceNamespaceID` (`intResourceNamespaceID`),
  KEY `fkTblResourceToTblResourceServiceViaIntResourceServiceID` (`intResourceServiceID`),
  KEY `fkTblResourceToTblResourceViaIntParentResourceID` (`intParentResourceID`),
  CONSTRAINT `fkTblResourceToTblDdColumnViaIntDdColumnID` FOREIGN KEY (`intDdColumnID`) REFERENCES `tblDdColumn` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblResourceToTblDdTableViaIntDdTableID` FOREIGN KEY (`intDdTableID`) REFERENCES `tblDdTable` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblResourceToTblResourceNamespaceViaIntResourceNamespaceID` FOREIGN KEY (`intResourceNamespaceID`) REFERENCES `tblResourceNamespace` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblResourceToTblResourceServiceViaIntResourceServiceID` FOREIGN KEY (`intResourceServiceID`) REFERENCES `tblResourceService` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblResourceToTblResourceTypeViaIntResourceTypeID` FOREIGN KEY (`intResourceTypeID`) REFERENCES `tblResourceType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblResourceToTblResourceViaIntParentResourceID` FOREIGN KEY (`intParentResourceID`) REFERENCES `tblResource` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblResourceToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblResourceConsumer`;

CREATE TABLE `tblResourceConsumer` (
  `id` bigint NOT NULL,
  `intResourceConsumerTypeID` bigint NOT NULL,
  `intResourceID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblResourceConsumerIntResourceIDIntResourceConsumerTypeID` (`intResourceID`,`intResourceConsumerTypeID`),
  KEY `fkTblResourceConsumerToTblResourceConsumerTypeViaIntR1899153794` (`intResourceConsumerTypeID`),
  CONSTRAINT `fkTblResourceConsumerToTblResourceConsumerTypeViaIntR1899153794` FOREIGN KEY (`intResourceConsumerTypeID`) REFERENCES `tblResourceConsumerType` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblResourceConsumerToTblResourceViaIntResourceID` FOREIGN KEY (`intResourceID`) REFERENCES `tblResource` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblResourceConsumerType`;

CREATE TABLE `tblResourceConsumerType` (
  `id` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblResourceConsumerTypeStrName` (`strName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblResourceNamespace`;

CREATE TABLE `tblResourceNamespace` (
  `id` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblResourceNamespaceStrName` (`strName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblResourceService`;

CREATE TABLE `tblResourceService` (
  `id` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblResourceServiceStrName` (`strName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblResourceType`;

CREATE TABLE `tblResourceType` (
  `id` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblResourceTypeStrName` (`strName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRFQ`;

CREATE TABLE `tblRFQ` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateExpectedDelivery` datetime DEFAULT NULL,
  `dtmDateRequiredResponse` datetime DEFAULT NULL,
  `dtmDateSent` datetime DEFAULT NULL,
  `intBillToCountryID` bigint DEFAULT NULL,
  `intBillToID` bigint DEFAULT NULL,
  `intBusinessID` bigint DEFAULT NULL,
  `intCode` bigint DEFAULT NULL,
  `intCreatedByUserID` bigint NOT NULL,
  `intRFQStatusID` bigint DEFAULT NULL,
  `intShipToCountryID` bigint DEFAULT NULL,
  `intShipToID` bigint DEFAULT NULL,
  `intSiteID` bigint NOT NULL,
  `intSupplierCountryID` bigint DEFAULT NULL,
  `intSupplierID` bigint DEFAULT NULL,
  `strBillToAddress` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strBillToCity` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strBillToPostalCode` varchar(16) COLLATE utf8mb3_bin DEFAULT NULL,
  `strBillToProvince` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strMessageContent` longtext COLLATE utf8mb3_bin,
  `strMessageSubject` varchar(1024) COLLATE utf8mb3_bin DEFAULT NULL,
  `strQuoteReferenceNumber` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strShipToAddress` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strShipToCity` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strShipToPostalCode` varchar(16) COLLATE utf8mb3_bin DEFAULT NULL,
  `strShipToProvince` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSupplierAddress` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSupplierCity` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSupplierPostalCode` varchar(16) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSupplierProvince` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRFQIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblRFQToTblAssetViaIntBillToID` (`intBillToID`),
  KEY `fkTblRFQToTblAssetViaIntShipToID` (`intShipToID`),
  KEY `fkTblRFQToTblCountryViaIntBillToCountryID` (`intBillToCountryID`),
  KEY `fkTblRFQToTblBusinessViaIntBusinessID` (`intBusinessID`),
  KEY `fkTblRFQToTblCountryViaIntSupplierCountryID` (`intSupplierCountryID`),
  KEY `fkTblRFQToTblCountryViaIntShipToCountryID` (`intShipToCountryID`),
  KEY `fkTblRFQToTblBusinessViaIntSupplierID` (`intSupplierID`),
  KEY `fkTblRFQToTblAssetViaIntSiteIDAndIntTenantID` (`intTenantID`,`intSiteID`),
  KEY `fkTblRFQToTblRFQStatusViaIntRFQStatusID` (`intRFQStatusID`),
  KEY `fkTblRFQToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`),
  CONSTRAINT `fkTblRFQToTblAssetViaIntBillToID` FOREIGN KEY (`intBillToID`) REFERENCES `tblAsset` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRFQToTblAssetViaIntShipToID` FOREIGN KEY (`intShipToID`) REFERENCES `tblAsset` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRFQToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intSiteID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRFQToTblBusinessViaIntBusinessID` FOREIGN KEY (`intBusinessID`) REFERENCES `tblBusiness` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRFQToTblBusinessViaIntSupplierID` FOREIGN KEY (`intSupplierID`) REFERENCES `tblBusiness` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRFQToTblCountryViaIntBillToCountryID` FOREIGN KEY (`intBillToCountryID`) REFERENCES `tblCountry` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRFQToTblCountryViaIntShipToCountryID` FOREIGN KEY (`intShipToCountryID`) REFERENCES `tblCountry` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRFQToTblCountryViaIntSupplierCountryID` FOREIGN KEY (`intSupplierCountryID`) REFERENCES `tblCountry` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRFQToTblRFQStatusViaIntRFQStatusID` FOREIGN KEY (`intRFQStatusID`) REFERENCES `tblRFQStatus` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRFQToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRFQToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRFQAsset`;

CREATE TABLE `tblRFQAsset` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intRFQID` bigint DEFAULT NULL,
  `qtyQuantityRequested` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRFQAssetIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblRFQAssetToTblRFQViaIntRFQID` (`intRFQID`),
  KEY `fkTblRFQAssetToTblAssetViaIntAssetID` (`intAssetID`),
  CONSTRAINT `fkTblRFQAssetToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblRFQAssetToTblRFQViaIntRFQID` FOREIGN KEY (`intRFQID`) REFERENCES `tblRFQ` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRFQAssetToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRFQLineItem`;

CREATE TABLE `tblRFQLineItem` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblQuotedPricePerUnit` double DEFAULT NULL,
  `dblQuotedPriceTotal` double DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intParentRFQLineItemID` bigint DEFAULT NULL,
  `intPurchaseOrderLineItemID` bigint DEFAULT NULL,
  `intRFQID` bigint NOT NULL,
  `qtyQuoted` double DEFAULT NULL,
  `qtyRequested` double DEFAULT NULL,
  `strBusinessAssetNumber` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDescription` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRFQLineItemIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblRFQLineItemToTblRFQLineItemViaIntParentRFQLineItemID` (`intParentRFQLineItemID`),
  KEY `fkTblRFQLineItemToTblPurchaseOrderLineItemViaIntPurch1199844306` (`intPurchaseOrderLineItemID`),
  KEY `fkTblRFQLineItemToTblAssetViaIntAssetID` (`intAssetID`),
  KEY `fkTblRFQLineItemToTblRFQViaIntRFQID` (`intRFQID`),
  CONSTRAINT `fkTblRFQLineItemToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblRFQLineItemToTblPurchaseOrderLineItemViaIntPurch1199844306` FOREIGN KEY (`intPurchaseOrderLineItemID`) REFERENCES `tblPurchaseOrderLineItem` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRFQLineItemToTblRFQLineItemViaIntParentRFQLineItemID` FOREIGN KEY (`intParentRFQLineItemID`) REFERENCES `tblRFQLineItem` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRFQLineItemToTblRFQViaIntRFQID` FOREIGN KEY (`intRFQID`) REFERENCES `tblRFQ` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblRFQLineItemToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRFQQueue`;

CREATE TABLE `tblRFQQueue` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateAdded` datetime DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRFQQueueIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblRFQQueueToTblAssetViaIntAssetID` (`intAssetID`),
  CONSTRAINT `fkTblRFQQueueToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblRFQQueueToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRFQStatus`;

CREATE TABLE `tblRFQStatus` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `intControlID` bigint NOT NULL,
  `strDefaultLabel` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRFQStatusIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblRFQStatusIntTenantIDStrName` (`intTenantID`,`strName`),
  UNIQUE KEY `xuTblRFQStatusIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  CONSTRAINT `fkTblRFQStatusToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRFQStatusTransition`;

CREATE TABLE `tblRFQStatusTransition` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intFromStatusID` bigint NOT NULL,
  `intToStatusID` bigint NOT NULL,
  `strDefaultLabel` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPropertiesFileKey` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRFQStatusTransitionIntTenantIDIntFromStatusIDIntToStatusID` (`intTenantID`,`intFromStatusID`,`intToStatusID`),
  UNIQUE KEY `xuTblRFQStatusTransitionIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblRFQStatusTransitionToTblRFQStatusViaIntFromStatusID` (`intFromStatusID`),
  KEY `fkTblRFQStatusTransitionToTblRFQStatusViaIntToStatusID` (`intToStatusID`),
  CONSTRAINT `fkTblRFQStatusTransitionToTblRFQStatusViaIntFromStatusID` FOREIGN KEY (`intFromStatusID`) REFERENCES `tblRFQStatus` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRFQStatusTransitionToTblRFQStatusViaIntToStatusID` FOREIGN KEY (`intToStatusID`) REFERENCES `tblRFQStatus` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRFQStatusTransitionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRole`;

CREATE TABLE `tblRole` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `strRoleSysCode` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRoleIntTenantIDId` (`intTenantID`,`id`),
  CONSTRAINT `fkTblRoleToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRolePermission`;

CREATE TABLE `tblRolePermission` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intPermissionID` bigint DEFAULT NULL,
  `intRoleID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRolePermissionIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblRolePermissionToTblPermissionViaIntPermissionID` (`intPermissionID`),
  KEY `fkTblRolePermissionToTblRoleViaIntRoleID` (`intRoleID`),
  CONSTRAINT `fkTblRolePermissionToTblPermissionViaIntPermissionID` FOREIGN KEY (`intPermissionID`) REFERENCES `tblPermission` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRolePermissionToTblRoleViaIntRoleID` FOREIGN KEY (`intRoleID`) REFERENCES `tblRole` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblRolePermissionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRunCommandHistory`;

CREATE TABLE `tblRunCommandHistory` (
  `id` bigint NOT NULL,
  `bolRunEveryTime` tinyint NOT NULL,
  `bolSucceeded` tinyint NOT NULL,
  `dtmFinished` datetime DEFAULT NULL,
  `dtmStarted` datetime NOT NULL,
  `strCommand` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblSalesAccountTracking`;

CREATE TABLE `tblSalesAccountTracking` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmAccountRelationshipEnd` datetime DEFAULT NULL,
  `dtmAccountRelationshipStart` datetime DEFAULT NULL,
  `intPredecessorID` bigint DEFAULT NULL,
  `intSalespersonTypeID` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblSalesAccountTrackingIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblSalesAccountTrackingToTblSalespersonTypeViaIntSa1720825228` (`intSalespersonTypeID`),
  KEY `fkTblSalesAccountTrackingToTblSalesAccountTrackingVia1405709447` (`intPredecessorID`),
  KEY `fkTblSalesAccountTrackingToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblSalesAccountTrackingToTblSalesAccountTrackingVia1405709447` FOREIGN KEY (`intPredecessorID`) REFERENCES `tblSalesAccountTracking` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblSalesAccountTrackingToTblSalespersonTypeViaIntSa1720825228` FOREIGN KEY (`intSalespersonTypeID`) REFERENCES `tblSalespersonType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblSalesAccountTrackingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblSalesAccountTrackingToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblSalespersonType`;

CREATE TABLE `tblSalespersonType` (
  `id` bigint NOT NULL,
  `strName` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblScheduledJob`;

CREATE TABLE `tblScheduledJob` (
  `id` bigint NOT NULL,
  `dtmRunTime` datetime NOT NULL,
  `intRecurrencePeriod` bigint DEFAULT NULL,
  `intRunDuration` bigint DEFAULT NULL,
  `intRunLatency` bigint DEFAULT NULL,
  `strDescription` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strError` longtext COLLATE utf8mb3_bin,
  `strJobData` longtext COLLATE utf8mb3_bin NOT NULL,
  `strKey` varchar(48) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(32) COLLATE utf8mb3_bin DEFAULT NULL,
  `strStatus` varchar(32) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblScheduledJobStrName` (`strName`),
  KEY `xTblScheduledJobIntRecurrencePeriod` (`intRecurrencePeriod`),
  KEY `xTblScheduledJobStrStatusDtmRunTime` (`strStatus`,`dtmRunTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblScheduledJobMonitor`;

CREATE TABLE `tblScheduledJobMonitor` (
  `id` bigint NOT NULL,
  `dtmLastRun` datetime DEFAULT NULL,
  `dtmNextRun` datetime DEFAULT NULL,
  `intRunDuration` bigint DEFAULT NULL,
  `strComments` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblScheduledMaintenance`;

CREATE TABLE `tblScheduledMaintenance` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolCanFireSMWithOpenWO` tinyint DEFAULT NULL,
  `bolNotifyCreatorWhenDWOE` tinyint DEFAULT NULL,
  `bolNotifyTechniciansWhenDWOE` tinyint DEFAULT NULL,
  `bolWORequiresSignature` tinyint DEFAULT NULL,
  `dblSuggestedTime` double DEFAULT NULL,
  `dblTimeEstimatedHours` double DEFAULT NULL,
  `dtmCreateDate` datetime DEFAULT NULL,
  `dtmUpdatedDate` datetime DEFAULT NULL,
  `intAccountID` bigint DEFAULT NULL,
  `intChargeDepartmentID` bigint DEFAULT NULL,
  `intMaintenanceTypeID` bigint DEFAULT NULL,
  `intPriorityID` bigint DEFAULT NULL,
  `intProjectID` bigint DEFAULT NULL,
  `intRequestorUserID` bigint DEFAULT NULL,
  `intScheduledMaintenanceStatusID` bigint DEFAULT NULL,
  `intSiteID` bigint NOT NULL,
  `intStartAsWorkOrderStatusID` bigint DEFAULT NULL,
  `intSuggestedCompletion` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `strAdminNotes` longtext COLLATE utf8mb3_bin,
  `strAssetIds` longtext COLLATE utf8mb3_bin,
  `strAssets` longtext COLLATE utf8mb3_bin,
  `strAssignedUserIds` longtext COLLATE utf8mb3_bin,
  `strAssignedUsers` longtext COLLATE utf8mb3_bin,
  `strCode` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strCompletionNotes` longtext COLLATE utf8mb3_bin,
  `strCustomerIds` longtext COLLATE utf8mb3_bin,
  `strCustomers` longtext COLLATE utf8mb3_bin,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strRType` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `strScheduleDescription` longtext COLLATE utf8mb3_bin,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  `strVendorIds` longtext COLLATE utf8mb3_bin,
  `strVendors` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblScheduledMaintenanceIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblScheduledMaintenanceStrUuid` (`strUuid`),
  KEY `xTblScheduledMaintenanceIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblScheduledMaintenanceToTblAccountViaIntAccountID` (`intAccountID`),
  KEY `fkTblScheduledMaintenanceToTblChargeDepartmentViaIntC1436194572` (`intChargeDepartmentID`),
  KEY `fkTblScheduledMaintenanceToTblPriorityViaIntPriorityI1275650139` (`intTenantID`,`intPriorityID`),
  KEY `fkTblScheduledMaintenanceToTblWorkOrderStatusViaIntSta685709471` (`intTenantID`,`intStartAsWorkOrderStatusID`),
  KEY `fkTblScheduledMaintenanceToTblAssetViaIntSiteIDAndIntTenantID` (`intTenantID`,`intSiteID`),
  KEY `fkTblScheduledMaintenanceToTblProjectViaIntProjectIDA2115077211` (`intTenantID`,`intProjectID`),
  KEY `fkTblScheduledMaintenanceToTblMaintenanceTypeViaIntMai181494491` (`intTenantID`,`intMaintenanceTypeID`),
  KEY `fkTblScheduledMaintenanceToTblUserViaIntRequestorUserID` (`intRequestorUserID`),
  CONSTRAINT `fkTblScheduledMaintenanceToTblAccountViaIntAccountID` FOREIGN KEY (`intAccountID`) REFERENCES `tblAccount` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledMaintenanceToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intSiteID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledMaintenanceToTblChargeDepartmentViaIntC1436194572` FOREIGN KEY (`intChargeDepartmentID`) REFERENCES `tblChargeDepartment` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledMaintenanceToTblMaintenanceTypeViaIntMai181494491` FOREIGN KEY (`intTenantID`, `intMaintenanceTypeID`) REFERENCES `tblMaintenanceType` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledMaintenanceToTblPriorityViaIntPriorityI1275650139` FOREIGN KEY (`intTenantID`, `intPriorityID`) REFERENCES `tblPriority` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledMaintenanceToTblProjectViaIntProjectIDA2115077211` FOREIGN KEY (`intTenantID`, `intProjectID`) REFERENCES `tblProject` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledMaintenanceToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledMaintenanceToTblUserViaIntRequestorUserID` FOREIGN KEY (`intRequestorUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledMaintenanceToTblWorkOrderStatusViaIntSta685709471` FOREIGN KEY (`intTenantID`, `intStartAsWorkOrderStatusID`) REFERENCES `tblWorkOrderStatus` (`intTenantID`, `id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblScheduledMaintenanceActivityLog`;

CREATE TABLE `tblScheduledMaintenanceActivityLog` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDate` datetime DEFAULT NULL,
  `intActivityLogID` bigint NOT NULL,
  `intAssetEventID` bigint DEFAULT NULL,
  `intMeterReadingID` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  `intWorkOrderID` bigint DEFAULT NULL,
  `strTriggerDescription` varchar(250) COLLATE utf8mb3_bin DEFAULT NULL,
  `strTriggerThresholdValue` varchar(250) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblScheduledMaintenanceActivityLogIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblScheduledMaintenanceActivityLogToTblActivityLogVi387516583` (`intActivityLogID`),
  KEY `fkTblScheduledMaintenanceActivityLogToTblAssetEventVi1488379715` (`intAssetEventID`),
  KEY `fkTblScheduledMaintenanceActivityLogToTblMeterReading1382911279` (`intMeterReadingID`),
  KEY `fkTblScheduledMaintenanceActivityLogToTblWorkOrderVia1813118809` (`intWorkOrderID`),
  KEY `fkTblScheduledMaintenanceActivityLogToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblScheduledMaintenanceActivityLogToTblActivityLogVi387516583` FOREIGN KEY (`intActivityLogID`) REFERENCES `tblActivityLog` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblScheduledMaintenanceActivityLogToTblAssetEventVi1488379715` FOREIGN KEY (`intAssetEventID`) REFERENCES `tblAssetEvent` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledMaintenanceActivityLogToTblMeterReading1382911279` FOREIGN KEY (`intMeterReadingID`) REFERENCES `tblMeterReading` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledMaintenanceActivityLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledMaintenanceActivityLogToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledMaintenanceActivityLogToTblWorkOrderVia1813118809` FOREIGN KEY (`intWorkOrderID`) REFERENCES `tblWorkOrder` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblScheduledMaintenanceAsset`;

CREATE TABLE `tblScheduledMaintenanceAsset` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intScheduledMaintenanceID` bigint NOT NULL,
  `intUpdated` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblScheduledMaintenanceAssetIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblScheduledMaintenanceAssetIntTenantIDIntScheduledM908872415` (`intTenantID`,`intScheduledMaintenanceID`,`intAssetID`),
  KEY `xTblScheduledMaintenanceAssetIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblScheduledMaintenanceAssetToTblAssetViaIntAssetID1280349577` (`intTenantID`,`intAssetID`),
  CONSTRAINT `fkTblScheduledMaintenanceAssetToTblAssetViaIntAssetID1280349577` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledMaintenanceAssetToTblScheduledMaintenanc293404617` FOREIGN KEY (`intTenantID`, `intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblScheduledMaintenanceAssetToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblScheduledMaintenanceBusiness`;

CREATE TABLE `tblScheduledMaintenanceBusiness` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolPrimary` tinyint DEFAULT NULL,
  `intAssetBusinessID` bigint DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intBusinessGroupID` bigint DEFAULT NULL,
  `intBusinessID` bigint DEFAULT NULL,
  `intScheduledMaintenanceID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblScheduledMaintenanceBusinessIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblScheduledMaintenanceBusinessToTblBusinessGroupVi1245669179` (`intTenantID`,`intBusinessGroupID`),
  KEY `fkTblScheduledMaintenanceBusinessToTblScheduledMainten366387657` (`intTenantID`,`intScheduledMaintenanceID`),
  KEY `fkTblScheduledMaintenanceBusinessToTblAssetViaIntAsse1735728485` (`intTenantID`,`intAssetID`),
  KEY `fkTblScheduledMaintenanceBusinessToTblAssetBusinessVia662717954` (`intAssetBusinessID`),
  KEY `fkTblScheduledMaintenanceBusinessToTblBusinessViaIntBu975362557` (`intTenantID`,`intBusinessID`),
  CONSTRAINT `fkTblScheduledMaintenanceBusinessToTblAssetBusinessVia662717954` FOREIGN KEY (`intAssetBusinessID`) REFERENCES `tblAssetBusiness` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblScheduledMaintenanceBusinessToTblAssetViaIntAsse1735728485` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblScheduledMaintenanceBusinessToTblBusinessGroupVi1245669179` FOREIGN KEY (`intTenantID`, `intBusinessGroupID`) REFERENCES `tblBusinessGroup` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledMaintenanceBusinessToTblBusinessViaIntBu975362557` FOREIGN KEY (`intTenantID`, `intBusinessID`) REFERENCES `tblBusiness` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblScheduledMaintenanceBusinessToTblScheduledMainten366387657` FOREIGN KEY (`intTenantID`, `intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblScheduledMaintenanceBusinessToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblScheduledMaintenanceNesting`;

CREATE TABLE `tblScheduledMaintenanceNesting` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intCurrentIterationCycle` int DEFAULT NULL,
  `intMultiplier` int DEFAULT NULL,
  `intNameIdentifier` bigint DEFAULT NULL,
  `intParentId` bigint DEFAULT NULL,
  `intScheduledMaintenanceID` bigint NOT NULL,
  `strDescription` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblScheduledMaintenanceNestingIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblScheduledMaintenanceNestingToTblScheduledMaintena844858350` (`intParentId`),
  KEY `fkTblScheduledMaintenanceNestingToTblScheduledMainten1167800448` (`intScheduledMaintenanceID`),
  CONSTRAINT `fkTblScheduledMaintenanceNestingToTblScheduledMainten1167800448` FOREIGN KEY (`intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblScheduledMaintenanceNestingToTblScheduledMaintena844858350` FOREIGN KEY (`intParentId`) REFERENCES `tblScheduledMaintenanceNesting` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledMaintenanceNestingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblScheduledMaintenancePart`;

CREATE TABLE `tblScheduledMaintenancePart` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intPartID` bigint DEFAULT NULL,
  `intScheduledMaintenanceID` bigint DEFAULT NULL,
  `intStockID` bigint DEFAULT NULL,
  `qtySuggestedQuantity` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblScheduledMaintenancePartIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblScheduledMaintenancePartToTblAssetViaIntPartIDAn1501216245` (`intTenantID`,`intPartID`),
  KEY `fkTblScheduledMaintenancePartToTblStockViaIntStockIDAn468551432` (`intTenantID`,`intStockID`),
  KEY `fkTblScheduledMaintenancePartToTblAssetViaIntAssetIDAn196016840` (`intTenantID`,`intAssetID`),
  KEY `fkTblScheduledMaintenancePartToTblScheduledMaintenance240390858` (`intTenantID`,`intScheduledMaintenanceID`),
  CONSTRAINT `fkTblScheduledMaintenancePartToTblAssetViaIntAssetIDAn196016840` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblScheduledMaintenancePartToTblAssetViaIntPartIDAn1501216245` FOREIGN KEY (`intTenantID`, `intPartID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblScheduledMaintenancePartToTblScheduledMaintenance240390858` FOREIGN KEY (`intTenantID`, `intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblScheduledMaintenancePartToTblStockViaIntStockIDAn468551432` FOREIGN KEY (`intTenantID`, `intStockID`) REFERENCES `tblStock` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblScheduledMaintenancePartToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblScheduledMaintenanceUser`;

CREATE TABLE `tblScheduledMaintenanceUser` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolCanUpdateOrClose` tinyint DEFAULT NULL,
  `bolNotifyOnAssignment` tinyint DEFAULT NULL,
  `bolNotifyOnCompletion` tinyint DEFAULT NULL,
  `bolNotifyOnOnlineOffline` tinyint DEFAULT NULL,
  `bolNotifyOnStatusChange` tinyint DEFAULT NULL,
  `bolNotifyOnTaskCompleted` tinyint DEFAULT NULL,
  `bolPrimaryTechnician` tinyint DEFAULT NULL,
  `intScheduledMaintenanceID` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblScheduledMaintenanceUserIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblScheduledMaintenanceUserToTblScheduledMaintenance414386594` (`intTenantID`,`intScheduledMaintenanceID`),
  KEY `fkTblScheduledMaintenanceUserToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblScheduledMaintenanceUserToTblScheduledMaintenance414386594` FOREIGN KEY (`intTenantID`, `intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblScheduledMaintenanceUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledMaintenanceUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblScheduledReport`;

CREATE TABLE `tblScheduledReport` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolTSWFriday` tinyint NOT NULL,
  `bolTSWMonday` tinyint NOT NULL,
  `bolTSWSaturday` tinyint NOT NULL,
  `bolTSWSunday` tinyint NOT NULL,
  `bolTSWThursday` tinyint NOT NULL,
  `bolTSWTuesday` tinyint NOT NULL,
  `bolTSWWednesday` tinyint NOT NULL,
  `datTREndBy` datetime DEFAULT NULL,
  `datTRStart` datetime NOT NULL,
  `dtmLastTriggered` datetime DEFAULT NULL,
  `intCreatorID` bigint DEFAULT NULL,
  `intOutputFormat` bigint DEFAULT NULL,
  `intReportPresetID` bigint NOT NULL,
  `intStatusID` bigint DEFAULT NULL,
  `intTREndAfter` bigint DEFAULT NULL,
  `intTSDEveryDays` bigint NOT NULL,
  `intTSHEveryHours` bigint NOT NULL,
  `intTSMDayOfMonth` bigint NOT NULL,
  `intTSMEveryMonths` bigint NOT NULL,
  `intTSWEveryWeeks` bigint NOT NULL,
  `intTSYDayOfMonth` bigint NOT NULL,
  `intTSYEveryYears` bigint NOT NULL,
  `intTSYMonthOfYear` bigint NOT NULL,
  `strTRType` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  `strTSType` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblScheduledReportIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblScheduledReportToTblUserViaIntCreatorID` (`intCreatorID`),
  KEY `fkTblScheduledReportToTblReportPresetViaIntReportPresetID` (`intReportPresetID`),
  CONSTRAINT `fkTblScheduledReportToTblReportPresetViaIntReportPresetID` FOREIGN KEY (`intReportPresetID`) REFERENCES `tblReportPreset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblScheduledReportToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledReportToTblUserViaIntCreatorID` FOREIGN KEY (`intCreatorID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblScheduledReportUser`;

CREATE TABLE `tblScheduledReportUser` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intScheduledReportID` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblScheduledReportUserIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblScheduledReportUserToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblScheduledReportUserToTblScheduledReportViaIntSche380863882` (`intScheduledReportID`),
  CONSTRAINT `fkTblScheduledReportUserToTblScheduledReportViaIntSche380863882` FOREIGN KEY (`intScheduledReportID`) REFERENCES `tblScheduledReport` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblScheduledReportUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledReportUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblScheduledTask`;

CREATE TABLE `tblScheduledTask` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblTimeEstimatedHours` double DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intAssignedToUserID` bigint DEFAULT NULL,
  `intMeterReadingUnitID` bigint DEFAULT NULL,
  `intOrder` bigint DEFAULT NULL,
  `intParentScheduledTaskID` bigint DEFAULT NULL,
  `intScheduledMaintenanceID` bigint DEFAULT NULL,
  `intScheduledMaintenanceNestingID` bigint DEFAULT NULL,
  `intTaskControlID` bigint DEFAULT NULL,
  `intTaskGroupAssetCategoryControlID` bigint DEFAULT NULL,
  `intTaskGroupControlID` bigint DEFAULT NULL,
  `intTaskType` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `strDescription` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblScheduledTaskIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblScheduledTaskIdIntTenantID` (`id`,`intTenantID`),
  UNIQUE KEY `xuTblScheduledTaskIntScheduledMaintenanceIDIntTaskCont467938246` (`intScheduledMaintenanceID`,`intTaskControlID`,`intTaskGroupControlID`,`intAssetID`),
  KEY `xTblScheduledTaskIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblScheduledTaskToTblAssetViaIntAssetIDAndIntTenantID` (`intTenantID`,`intAssetID`),
  KEY `fkTblScheduledTaskToTblScheduledMaintenanceNestingVia1548474820` (`intScheduledMaintenanceNestingID`),
  KEY `fkTblScheduledTaskToTblTaskGroupViaIntTaskGroupControlID` (`intTaskGroupControlID`),
  KEY `fkTblScheduledTaskToTblTaskViaIntTaskControlID` (`intTaskControlID`),
  KEY `fkTblScheduledTaskToTblTaskGroupAssetCategoryViaIntTas177913541` (`intTaskGroupAssetCategoryControlID`),
  KEY `fkTblScheduledTaskToTblScheduledMaintenanceViaIntSche1314218161` (`intTenantID`,`intScheduledMaintenanceID`),
  KEY `fkTblScheduledTaskToTblUserViaIntAssignedToUserID` (`intAssignedToUserID`),
  KEY `fkTblScheduledTaskToTblScheduledTaskViaIntParentSched1434415465` (`intTenantID`,`intParentScheduledTaskID`),
  KEY `fkTblScheduledTaskToTblMeterReadingUnitViaIntMeterRea2123827089` (`intTenantID`,`intMeterReadingUnitID`),
  CONSTRAINT `fkTblScheduledTaskToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblScheduledTaskToTblMeterReadingUnitViaIntMeterRea2123827089` FOREIGN KEY (`intTenantID`, `intMeterReadingUnitID`) REFERENCES `tblMeterReadingUnit` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledTaskToTblScheduledMaintenanceNestingVia1548474820` FOREIGN KEY (`intScheduledMaintenanceNestingID`) REFERENCES `tblScheduledMaintenanceNesting` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledTaskToTblScheduledMaintenanceViaIntSche1314218161` FOREIGN KEY (`intTenantID`, `intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblScheduledTaskToTblScheduledTaskViaIntParentSched1434415465` FOREIGN KEY (`intTenantID`, `intParentScheduledTaskID`) REFERENCES `tblScheduledTask` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblScheduledTaskToTblTaskGroupAssetCategoryViaIntTas177913541` FOREIGN KEY (`intTaskGroupAssetCategoryControlID`) REFERENCES `tblTaskGroupAssetCategory` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledTaskToTblTaskGroupViaIntTaskGroupControlID` FOREIGN KEY (`intTaskGroupControlID`) REFERENCES `tblTaskGroup` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledTaskToTblTaskViaIntTaskControlID` FOREIGN KEY (`intTaskControlID`) REFERENCES `tblTask` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblScheduledTaskToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledTaskToTblUserViaIntAssignedToUserID` FOREIGN KEY (`intAssignedToUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblScheduledTaskFile`;

CREATE TABLE `tblScheduledTaskFile` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intFileID` bigint NOT NULL,
  `intOrder` bigint NOT NULL,
  `intScheduledTaskID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblScheduledTaskFileIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblScheduledTaskFileToTblScheduledTaskViaIntSchedule960741179` (`intTenantID`,`intScheduledTaskID`),
  KEY `fkTblScheduledTaskFileToTblFileViaIntFileIDAndIntTenantID` (`intTenantID`,`intFileID`),
  CONSTRAINT `fkTblScheduledTaskFileToTblFileViaIntFileIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intFileID`) REFERENCES `tblFile` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduledTaskFileToTblScheduledTaskViaIntSchedule960741179` FOREIGN KEY (`intTenantID`, `intScheduledTaskID`) REFERENCES `tblScheduledTask` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblScheduledTaskFileToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblScheduleTrigger`;

CREATE TABLE `tblScheduleTrigger` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolCreateWorkOrderOnStartDate` tinyint DEFAULT NULL,
  `bolMrByWOClosed` tinyint DEFAULT NULL,
  `bolTSWFriday` tinyint NOT NULL,
  `bolTSWMonday` tinyint NOT NULL,
  `bolTSWSaturday` tinyint NOT NULL,
  `bolTSWSunday` tinyint NOT NULL,
  `bolTSWThursday` tinyint NOT NULL,
  `bolTSWTuesday` tinyint NOT NULL,
  `bolTSWWednesday` tinyint NOT NULL,
  `datLastDate` double DEFAULT NULL,
  `datTREndBy` datetime DEFAULT NULL,
  `datTRStart` datetime NOT NULL,
  `dblLastMeterReading` double DEFAULT NULL,
  `dblRMeterReading` double NOT NULL,
  `dblROMeterReading` double NOT NULL,
  `dblRREndBy` double DEFAULT NULL,
  `dblRRStart` double NOT NULL,
  `dtmLastTriggered` datetime DEFAULT NULL,
  `intAssetEventTypeID` bigint DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intRMeterReadingUnitID` bigint NOT NULL,
  `intROMeterReadingUnitID` bigint NOT NULL,
  `intRREndAfter` bigint DEFAULT NULL,
  `intScheduledMaintenanceID` bigint NOT NULL,
  `intTREndAfter` bigint DEFAULT NULL,
  `intTRTriggerTime` int DEFAULT NULL,
  `intTSDEveryDays` bigint NOT NULL,
  `intTSHEveryHours` bigint NOT NULL,
  `intTSMDayOfMonth` bigint NOT NULL,
  `intTSMEveryMonths` bigint NOT NULL,
  `intTSWEveryWeeks` bigint NOT NULL,
  `intTSYDayOfMonth` bigint NOT NULL,
  `intTSYEveryYears` bigint NOT NULL,
  `intTSYMonthOfYear` bigint NOT NULL,
  `intUpdated` bigint NOT NULL,
  `strDatLogicDaily` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDatLogicHourly` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDatLogicMonthly` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDatLogicYearly` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `strMrLogic` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `strROType` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  `strRRType` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  `strRType` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  `strScheduleDescription` longtext COLLATE utf8mb3_bin,
  `strTRType` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  `strTSType` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  `strType` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblScheduleTriggerIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblScheduleTriggerIntTenantIDIntRMeterReadingUnitIDI1610038416` (`intTenantID`,`intRMeterReadingUnitID`,`intROMeterReadingUnitID`),
  KEY `xTblScheduleTriggerIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblScheduleTriggerToTblMeterReadingUnitViaIntROMete1589245054` (`intROMeterReadingUnitID`),
  KEY `fkTblScheduleTriggerToTblScheduledMaintenanceViaIntSch771186307` (`intScheduledMaintenanceID`),
  KEY `fkTblScheduleTriggerToTblMeterReadingUnitViaIntRMeter2093417039` (`intRMeterReadingUnitID`),
  KEY `fkTblScheduleTriggerToTblAssetViaIntAssetID` (`intAssetID`),
  KEY `fkTblScheduleTriggerToTblAssetEventTypeViaIntAssetEventTypeID` (`intAssetEventTypeID`),
  CONSTRAINT `fkTblScheduleTriggerToTblAssetEventTypeViaIntAssetEventTypeID` FOREIGN KEY (`intAssetEventTypeID`) REFERENCES `tblAssetEventType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduleTriggerToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblScheduleTriggerToTblMeterReadingUnitViaIntRMeter2093417039` FOREIGN KEY (`intRMeterReadingUnitID`) REFERENCES `tblMeterReadingUnit` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduleTriggerToTblMeterReadingUnitViaIntROMete1589245054` FOREIGN KEY (`intROMeterReadingUnitID`) REFERENCES `tblMeterReadingUnit` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblScheduleTriggerToTblScheduledMaintenanceViaIntSch771186307` FOREIGN KEY (`intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblScheduleTriggerToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblServerSetting`;

CREATE TABLE `tblServerSetting` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `intAutoUpdateDOW` bigint DEFAULT NULL,
  `intAutoUpdateHour` bigint DEFAULT NULL,
  `intAutoUpdateType` bigint DEFAULT NULL,
  `intCriticalAutoUpdateDelayDays` bigint DEFAULT NULL,
  `intRegularAutoUpdateDelayDays` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblServerSettingIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblServerSettingIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  CONSTRAINT `fkTblServerSettingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblShippingType`;

CREATE TABLE `tblShippingType` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblShippingTypeIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblShippingTypeIntTenantIDStrName` (`intTenantID`,`strName`),
  CONSTRAINT `fkTblShippingTypeToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblSiteAvailability`;

CREATE TABLE `tblSiteAvailability` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolActive` tinyint DEFAULT NULL,
  `intAllowedSiteID` bigint DEFAULT NULL,
  `intOriginSiteID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblSiteAvailabilityIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblSiteAvailabilityIntOriginSiteIDIntAllowedSiteIDBolActive` (`intOriginSiteID`,`intAllowedSiteID`,`bolActive`),
  KEY `fkTblSiteAvailabilityToTblAssetViaIntAllowedSiteID` (`intAllowedSiteID`),
  CONSTRAINT `fkTblSiteAvailabilityToTblAssetViaIntAllowedSiteID` FOREIGN KEY (`intAllowedSiteID`) REFERENCES `tblAsset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblSiteAvailabilityToTblAssetViaIntOriginSiteID` FOREIGN KEY (`intOriginSiteID`) REFERENCES `tblAsset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblSiteAvailabilityToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblSiteSetting`;

CREATE TABLE `tblSiteSetting` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolUseSiteSettingsForClassification` tinyint DEFAULT NULL,
  `dtmAnnualUsageFrom` datetime DEFAULT NULL,
  `dtmAnnualUsageTo` datetime DEFAULT NULL,
  `dtmLastClassified` datetime DEFAULT NULL,
  `intClassAOutset` int DEFAULT NULL,
  `intClassBOutset` int DEFAULT NULL,
  `intClassCOutset` int DEFAULT NULL,
  `intSiteID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblSiteSettingIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblSiteSettingIntTenantIDIntSiteID` (`intTenantID`,`intSiteID`),
  KEY `fkTblSiteSettingToTblAssetViaIntSiteID` (`intSiteID`),
  CONSTRAINT `fkTblSiteSettingToTblAssetViaIntSiteID` FOREIGN KEY (`intSiteID`) REFERENCES `tblAsset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblSiteSettingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblSiteStock`;

CREATE TABLE `tblSiteStock` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intFacilityID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `qtyMinQty` double DEFAULT NULL,
  `qtyOnHand` double DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblSiteStockIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblSiteStockStrUuid` (`strUuid`),
  KEY `xTblSiteStockIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblSiteStockToTblAssetViaIntFacilityIDAndIntTenantID` (`intTenantID`,`intFacilityID`),
  KEY `fkTblSiteStockToTblAssetViaIntAssetIDAndIntTenantID` (`intTenantID`,`intAssetID`),
  CONSTRAINT `fkTblSiteStockToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblSiteStockToTblAssetViaIntFacilityIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intFacilityID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblSiteStockToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblSiteUser`;

CREATE TABLE `tblSiteUser` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSiteID` bigint NOT NULL,
  `intUpdated` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblSiteUserIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblSiteUserIntTenantIDIntSiteIDIntUserID` (`intTenantID`,`intSiteID`,`intUserID`),
  KEY `fkTblSiteUserToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblSiteUserToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intSiteID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblSiteUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblSiteUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblSiteUserGroup`;

CREATE TABLE `tblSiteUserGroup` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intGroupID` bigint NOT NULL,
  `intSiteUserID` bigint NOT NULL,
  `intUpdated` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblSiteUserGroupIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblSiteUserGroupIntTenantIDIntSiteUserIDIntGroupID` (`intTenantID`,`intSiteUserID`,`intGroupID`),
  KEY `xTblSiteUserGroupIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblSiteUserGroupToTblUserViaIntGroupID` (`intGroupID`),
  CONSTRAINT `fkTblSiteUserGroupToTblSiteUserViaIntSiteUserIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intSiteUserID`) REFERENCES `tblSiteUser` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblSiteUserGroupToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblSiteUserGroupToTblUserViaIntGroupID` FOREIGN KEY (`intGroupID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblSkin`;

CREATE TABLE `tblSkin` (
  `id` bigint NOT NULL,
  `strDirectoryName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblSmtpEvent`;

CREATE TABLE `tblSmtpEvent` (
  `id` bigint NOT NULL,
  `dtmDate` datetime NOT NULL,
  `intDoneByUserID` bigint DEFAULT NULL,
  `intSmtpEventTypeID` bigint NOT NULL,
  `intSmtpProviderID` bigint DEFAULT NULL,
  `strInfo` longtext COLLATE utf8mb3_bin,
  `strMessageID` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xTblSmtpEventDtmDate` (`dtmDate`),
  KEY `fkTblSmtpEventToTblSmtpEventTypeViaIntSmtpEventTypeID` (`intSmtpEventTypeID`),
  KEY `fkTblSmtpEventToTblUserViaIntDoneByUserID` (`intDoneByUserID`),
  KEY `fkTblSmtpEventToTblSmtpProviderViaIntSmtpProviderID` (`intSmtpProviderID`),
  CONSTRAINT `fkTblSmtpEventToTblSmtpEventTypeViaIntSmtpEventTypeID` FOREIGN KEY (`intSmtpEventTypeID`) REFERENCES `tblSmtpEventType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblSmtpEventToTblSmtpProviderViaIntSmtpProviderID` FOREIGN KEY (`intSmtpProviderID`) REFERENCES `tblSmtpProvider` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblSmtpEventToTblUserViaIntDoneByUserID` FOREIGN KEY (`intDoneByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblSmtpEventType`;

CREATE TABLE `tblSmtpEventType` (
  `id` bigint NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblSmtpEventTypeStrName` (`strName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblSmtpProvider`;

CREATE TABLE `tblSmtpProvider` (
  `id` bigint NOT NULL,
  `intTenantID` bigint DEFAULT NULL,
  `bolEnabled` tinyint NOT NULL,
  `bolSecure` tinyint NOT NULL,
  `intPort` bigint NOT NULL,
  `intWeight` bigint NOT NULL,
  `strEncryptedHost` varchar(1000) COLLATE utf8mb3_bin NOT NULL,
  `strEncryptedPassword` varchar(1000) COLLATE utf8mb3_bin NOT NULL,
  `strEncryptedUsername` varchar(1000) COLLATE utf8mb3_bin NOT NULL,
  `strFrom` varchar(1000) COLLATE utf8mb3_bin NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  `strSslProtocols` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblSmtpProviderIntTenantIDStrName` (`intTenantID`,`strName`),
  CONSTRAINT `fkTblSmtpProviderToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblSSOImplementation`;

CREATE TABLE `tblSSOImplementation` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolAvailable` tinyint DEFAULT NULL,
  `bolFederatedLogout` tinyint NOT NULL,
  `intProviderID` bigint NOT NULL,
  `strAlgorithm` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `strClientId` varchar(1024) COLLATE utf8mb3_bin NOT NULL,
  `strConnectionId` varchar(1024) COLLATE utf8mb3_bin DEFAULT NULL,
  `strIssuerId` varchar(1024) COLLATE utf8mb3_bin NOT NULL,
  `strLoginLabel` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strRedirectUri` varchar(1024) COLLATE utf8mb3_bin NOT NULL,
  `strSecret` varchar(1024) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblSSOImplementationIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblSSOImplementationToTblSSOProviderViaIntProviderID` (`intProviderID`),
  CONSTRAINT `fkTblSSOImplementationToTblSSOProviderViaIntProviderID` FOREIGN KEY (`intProviderID`) REFERENCES `tblSSOProvider` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblSSOImplementationToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblSSOProvider`;

CREATE TABLE `tblSSOProvider` (
  `id` bigint NOT NULL,
  `strBackgroundColor` varchar(6) COLLATE utf8mb3_bin DEFAULT NULL,
  `strCode` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  `strIconUri` longtext COLLATE utf8mb3_bin,
  `strLabel` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strProviderType` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  `strTextColor` varchar(6) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblSSOProviderStrCode` (`strCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblStock`;

CREATE TABLE `tblStock` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolDeactivated` tinyint DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intFacilityID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `qtyMaxQty` double DEFAULT NULL,
  `qtyMinQty` double DEFAULT NULL,
  `qtyOnHand` double DEFAULT NULL,
  `strAisle` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strBin` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strRow` varchar(96) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblStockIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblStockStrUuid` (`strUuid`),
  KEY `xTblStockIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblStockToTblAssetViaIntAssetIDAndIntTenantID` (`intTenantID`,`intAssetID`),
  KEY `fkTblStockToTblAssetViaIntFacilityIDAndIntTenantID` (`intTenantID`,`intFacilityID`),
  CONSTRAINT `fkTblStockToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblStockToTblAssetViaIntFacilityIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intFacilityID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblStockToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblStockAdjustmentItem`;

CREATE TABLE `tblStockAdjustmentItem` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDate` datetime NOT NULL,
  `intStockID` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  `qtyQuantity` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblStockAdjustmentItemIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblStockAdjustmentItemToTblStockViaIntStockID` (`intStockID`),
  KEY `fkTblStockAdjustmentItemToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblStockAdjustmentItemToTblStockViaIntStockID` FOREIGN KEY (`intStockID`) REFERENCES `tblStock` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblStockAdjustmentItemToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblStockAdjustmentItemToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblStockCycleCount`;

CREATE TABLE `tblStockCycleCount` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblPrice` double DEFAULT NULL,
  `dtmDateCounted` datetime DEFAULT NULL,
  `intCountedBy` bigint DEFAULT NULL,
  `intCycleCountID` bigint NOT NULL,
  `intStockID` bigint NOT NULL,
  `intUpdated` bigint NOT NULL,
  `qtyExpected` double DEFAULT NULL,
  `qtyStockCount` double DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblStockCycleCountIntStockIDIntCycleCountID` (`intStockID`,`intCycleCountID`),
  UNIQUE KEY `xuTblStockCycleCountIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblStockCycleCountIntTenantIDStrUuid` (`intTenantID`,`strUuid`),
  KEY `xTblStockCycleCountIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblStockCycleCountToTblCycleCountViaIntCycleCountIDA797288248` (`intTenantID`,`intCycleCountID`),
  KEY `fkTblStockCycleCountToTblUserViaIntCountedBy` (`intCountedBy`),
  KEY `fkTblStockCycleCountToTblStockViaIntStockIDAndIntTenantID` (`intTenantID`,`intStockID`),
  CONSTRAINT `fkTblStockCycleCountToTblCycleCountViaIntCycleCountIDA797288248` FOREIGN KEY (`intTenantID`, `intCycleCountID`) REFERENCES `tblCycleCount` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblStockCycleCountToTblStockViaIntStockIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intStockID`) REFERENCES `tblStock` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblStockCycleCountToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblStockCycleCountToTblUserViaIntCountedBy` FOREIGN KEY (`intCountedBy`) REFERENCES `tblUser` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblStockHistory`;

CREATE TABLE `tblStockHistory` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblLastPrice` double DEFAULT NULL,
  `dtmDate` datetime NOT NULL,
  `intInventoryMethodType` bigint NOT NULL,
  `intStockID` bigint NOT NULL,
  `intStockTxID` bigint DEFAULT NULL,
  `intStockTxTypeID` bigint NOT NULL,
  `intUpdated` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  `qtyAfter` double NOT NULL,
  `qtyBefore` double NOT NULL,
  `qtyMethodQty` double DEFAULT NULL,
  `qtyQuantity` double NOT NULL,
  `strDescription` varchar(200) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblStockHistoryIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblStockHistoryIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblStockHistoryToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblStockHistoryToTblStockTxTypeViaIntStockTxTypeID` (`intStockTxTypeID`),
  KEY `fkTblStockHistoryToTblStockViaIntStockID` (`intStockID`),
  CONSTRAINT `fkTblStockHistoryToTblStockTxTypeViaIntStockTxTypeID` FOREIGN KEY (`intStockTxTypeID`) REFERENCES `tblStockTxType` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblStockHistoryToTblStockViaIntStockID` FOREIGN KEY (`intStockID`) REFERENCES `tblStock` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblStockHistoryToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblStockHistoryToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblStockPurchaseItem`;

CREATE TABLE `tblStockPurchaseItem` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolMigrated` tinyint DEFAULT NULL,
  `dblPurchasePricePerUnit` double DEFAULT NULL,
  `dblPurchasePriceTotal` double DEFAULT NULL,
  `dtmDateExpiryOfInventoryItems` datetime DEFAULT NULL,
  `dtmDateOrdered` datetime DEFAULT NULL,
  `dtmDateReceived` datetime DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intBusinessID` bigint DEFAULT NULL,
  `intPurchaseCurrencyID` bigint DEFAULT NULL,
  `intStockID` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  `intV2ID` bigint DEFAULT NULL,
  `qtyQuantity` double DEFAULT NULL,
  `qtyQuantityLeft` double DEFAULT NULL,
  `qtyQuantityLeftAtTimeOfOrder` double DEFAULT NULL,
  `qtyQuantityOrdered` double DEFAULT NULL,
  `qtyQuantityPurchased` double DEFAULT NULL,
  `qtyQuantityUsed` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblStockPurchaseItemIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblStockPurchaseItemToTblStockViaIntStockID` (`intStockID`),
  KEY `fkTblStockPurchaseItemToTblCurrencyViaIntPurchaseCurrencyID` (`intPurchaseCurrencyID`),
  KEY `fkTblStockPurchaseItemToTblAssetViaIntAssetID` (`intAssetID`),
  KEY `fkTblStockPurchaseItemToTblBusinessViaIntBusinessID` (`intBusinessID`),
  KEY `fkTblStockPurchaseItemToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblStockPurchaseItemToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblStockPurchaseItemToTblBusinessViaIntBusinessID` FOREIGN KEY (`intBusinessID`) REFERENCES `tblBusiness` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblStockPurchaseItemToTblCurrencyViaIntPurchaseCurrencyID` FOREIGN KEY (`intPurchaseCurrencyID`) REFERENCES `tblCurrency` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblStockPurchaseItemToTblStockViaIntStockID` FOREIGN KEY (`intStockID`) REFERENCES `tblStock` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblStockPurchaseItemToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblStockPurchaseItemToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblStockTxType`;

CREATE TABLE `tblStockTxType` (
  `id` bigint NOT NULL,
  `intTenantID` bigint DEFAULT NULL,
  `strName` varchar(96) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblStockTxTypeIntTenantIDStrName` (`intTenantID`,`strName`),
  CONSTRAINT `fkTblStockTxTypeToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblStockTxTypeBI` BEFORE INSERT ON `tblstocktxtype` FOR EACH ROW BEGIN 
	IF NEW.intTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblStockTxTypeBU` BEFORE UPDATE ON `tblstocktxtype` FOR EACH ROW BEGIN 
	IF NEW.intTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblStockTxTypeBD` BEFORE DELETE ON `tblstocktxtype` FOR EACH ROW BEGIN 
	IF OLD.intTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `tblSubscriptionPlan`;

CREATE TABLE `tblSubscriptionPlan` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmActiveFromDate` datetime DEFAULT NULL,
  `dtmActiveToDate` datetime DEFAULT NULL,
  `dtmFeaturesProvisioned` datetime DEFAULT NULL,
  `dtmFeaturesProvisioningDate` datetime DEFAULT NULL,
  `dtmNextOrderDate` datetime DEFAULT NULL,
  `dtmScheduledDate` datetime DEFAULT NULL,
  `dtmSubscriptionCreated` datetime DEFAULT NULL,
  `intCreatedByUserID` bigint DEFAULT NULL,
  `intIssuedByTenantID` bigint DEFAULT NULL,
  `intMarketingProgramID` bigint DEFAULT NULL,
  `intQuoteID` bigint DEFAULT NULL,
  `intRecurringTypeID` bigint DEFAULT NULL,
  `intReplacedBySubscriptionPlanID` bigint DEFAULT NULL,
  `intSubscriptionStatusID` bigint DEFAULT NULL,
  `strDelinquentStatus` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPoNumber` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSubscriptionKey` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblSubscriptionPlanIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblSubscriptionPlanToTblTenantViaIntIssuedByTenantID` (`intIssuedByTenantID`),
  KEY `fkTblSubscriptionPlanToTblSubscriptionStatusViaIntSubsc69938658` (`intSubscriptionStatusID`),
  KEY `fkTblSubscriptionPlanToTblMarketingProgramViaIntMarket889270404` (`intMarketingProgramID`),
  KEY `fkTblSubscriptionPlanToTblRecurringTypeViaIntRecurringTypeID` (`intRecurringTypeID`),
  KEY `fkTblSubscriptionPlanToTblSubscriptionPlanViaIntReplac185297517` (`intReplacedBySubscriptionPlanID`),
  KEY `fkTblSubscriptionPlanToTblQuoteViaIntQuoteID` (`intQuoteID`),
  KEY `fkTblSubscriptionPlanToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`),
  CONSTRAINT `fkTblSubscriptionPlanToTblMarketingProgramViaIntMarket889270404` FOREIGN KEY (`intMarketingProgramID`) REFERENCES `tblMarketingProgram` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblSubscriptionPlanToTblQuoteViaIntQuoteID` FOREIGN KEY (`intQuoteID`) REFERENCES `tblQuote` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblSubscriptionPlanToTblRecurringTypeViaIntRecurringTypeID` FOREIGN KEY (`intRecurringTypeID`) REFERENCES `tblRecurringType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblSubscriptionPlanToTblSubscriptionPlanViaIntReplac185297517` FOREIGN KEY (`intReplacedBySubscriptionPlanID`) REFERENCES `tblSubscriptionPlan` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblSubscriptionPlanToTblSubscriptionStatusViaIntSubsc69938658` FOREIGN KEY (`intSubscriptionStatusID`) REFERENCES `tblSubscriptionStatus` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblSubscriptionPlanToTblTenantViaIntIssuedByTenantID` FOREIGN KEY (`intIssuedByTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblSubscriptionPlanToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblSubscriptionPlanToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblSubscriptionStatus`;

CREATE TABLE `tblSubscriptionStatus` (
  `id` bigint NOT NULL,
  `strName` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblSystemMessageUser`;

CREATE TABLE `tblSystemMessageUser` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolDeleted` tinyint DEFAULT NULL,
  `bolOpened` tinyint DEFAULT NULL,
  `intMessageID` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblSystemMessageUserIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblSystemMessageUserIntTenantIDIntMessageIDIntUserID` (`intTenantID`,`intMessageID`,`intUserID`),
  KEY `fkTblSystemMessageUserToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblSystemMessageUserToTblMessageViaIntMessageID` (`intMessageID`),
  CONSTRAINT `fkTblSystemMessageUserToTblMessageViaIntMessageID` FOREIGN KEY (`intMessageID`) REFERENCES `tblMessage` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblSystemMessageUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblSystemMessageUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblSystemSetting`;

CREATE TABLE `tblSystemSetting` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `bolAddRequestorToNotificationsOnWorkReq` tinyint DEFAULT NULL,
  `bolDemoDatabase` tinyint DEFAULT NULL,
  `bolDisableBrowserPasswordCaching` tinyint DEFAULT NULL,
  `bolEmailWRPeopleOnCompletion` tinyint DEFAULT NULL,
  `bolEnableAllowNegativeStocks` tinyint DEFAULT NULL,
  `bolEnableAssignedToOnWorkReq` tinyint DEFAULT NULL,
  `bolEnableAuditLogging` tinyint DEFAULT NULL,
  `bolEnableBlockWhenOutOfStock` tinyint DEFAULT NULL,
  `bolEnableBusinessTracking` tinyint DEFAULT NULL,
  `bolEnableBusinessTrackingShowCustomer` tinyint DEFAULT NULL,
  `bolEnableBusinessTrackingShowVendor` tinyint DEFAULT NULL,
  `bolEnableCaptchaGuestWorkReq` tinyint DEFAULT NULL,
  `bolEnableForcePasswordChange` tinyint DEFAULT NULL,
  `bolEnableGoogleTranslate` tinyint DEFAULT NULL,
  `bolEnableInspectionTaskNAOption` tinyint DEFAULT NULL,
  `bolEnableInventoryMethodFifo` tinyint DEFAULT NULL,
  `bolEnableKeepMeLoggedIn` tinyint DEFAULT NULL,
  `bolEnableLabsGhgCalculator` tinyint DEFAULT NULL,
  `bolEnableMoveControl` tinyint DEFAULT NULL,
  `bolEnableMoveTracking` tinyint DEFAULT NULL,
  `bolEnableMultiAttachAction` tinyint DEFAULT NULL,
  `bolEnablePromptUnsaved` tinyint DEFAULT NULL,
  `bolEnablePromptWhenOutOfStock` tinyint DEFAULT NULL,
  `bolEnableStateControl` tinyint DEFAULT NULL,
  `bolEnableStockDisassociationInPOsAndRFQs` tinyint DEFAULT NULL,
  `bolEnableTrackForUserOnWorkReq` tinyint DEFAULT NULL,
  `bolEnableVendorAmazon` tinyint DEFAULT NULL,
  `bolEnableVendorGrainger` tinyint DEFAULT NULL,
  `bolEnableVendorMACMMS` tinyint DEFAULT NULL,
  `bolEnableVendorSolr` tinyint DEFAULT NULL,
  `bolGuestMrAssetScanPermission` tinyint DEFAULT NULL,
  `bolGuestMrEmailRequired` tinyint DEFAULT NULL,
  `bolGuestMrNotificationOnAssigned` tinyint DEFAULT NULL,
  `bolGuestMrNotificationOnCompleted` tinyint DEFAULT NULL,
  `bolGuestMrNotificationOnSubmit` tinyint DEFAULT NULL,
  `bolGuestMrShowCompletionNotes` tinyint DEFAULT NULL,
  `bolOnlyAdministratorCanCustomizeUserInterface` tinyint DEFAULT NULL,
  `bolRequireCompletionNotesForCompletion` tinyint DEFAULT NULL,
  `bolRequireCompletionNotesForCompletionStateControl` tinyint DEFAULT NULL,
  `bolRequiredContactInfo` tinyint DEFAULT NULL,
  `bolTimeGeneratedWO` tinyint NOT NULL,
  `bolToolbarEnableGrainger` tinyint DEFAULT NULL,
  `bolUsersCanEditDashboards` tinyint DEFAULT NULL,
  `bolWOEnableLocking` tinyint DEFAULT NULL,
  `bolWOEnableRCA` tinyint DEFAULT NULL,
  `bolWOEnableRCASearch` tinyint DEFAULT NULL,
  `bolWOEnableRCAStrictMode` tinyint DEFAULT NULL,
  `bolWRAssetInputRequired` tinyint DEFAULT NULL,
  `bolWRAssetInputShow` tinyint DEFAULT NULL,
  `bolWRAutoRouting` tinyint DEFAULT NULL,
  `bolWRMaintenanceTypeShow` tinyint DEFAULT NULL,
  `bolWRPriorityShow` tinyint DEFAULT NULL,
  `bolWRSuggestedTimeShow` tinyint DEFAULT NULL,
  `dtmAnnualUsageFrom` datetime DEFAULT NULL,
  `dtmAnnualUsageTo` datetime DEFAULT NULL,
  `dtmLastApplicationNotification` datetime DEFAULT NULL,
  `dtmLastSMThreadRun` datetime DEFAULT NULL,
  `dtmLastSyncThreadRun` datetime DEFAULT NULL,
  `dtmMoveToCloudEndDate` datetime DEFAULT NULL,
  `dtmMoveToCloudStartDate` datetime DEFAULT NULL,
  `dtmPartForecasterReportDate` datetime DEFAULT NULL,
  `intBusinessServersID` bigint DEFAULT NULL,
  `intClassAOutset` int DEFAULT NULL,
  `intClassBOutset` int DEFAULT NULL,
  `intClassCOutset` int DEFAULT NULL,
  `intCreateBackupEveryHours` bigint DEFAULT NULL,
  `intDefaultCurrencyID` bigint DEFAULT NULL,
  `intDefaultLocalizationID` bigint DEFAULT NULL,
  `intDefaultWorkOrderStatusID` bigint NOT NULL,
  `intDefaultWorkRequestStatusID` bigint NOT NULL,
  `intGenerateWOBefore` bigint NOT NULL,
  `intGenerateWOBeforeTime` bigint NOT NULL,
  `intKeepBackupForDays` bigint DEFAULT NULL,
  `intNumDaysForPasswordExpiry` bigint DEFAULT NULL,
  `intPoolRFQsTime` bigint NOT NULL,
  `intRFQNumberDaysForQuoteResponse` bigint DEFAULT NULL,
  `intStartPurchaseOrderNumberingAtValue` bigint DEFAULT NULL,
  `intUnitPricePrecision` bigint DEFAULT NULL,
  `strAssetInsightReportDay` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL,
  `strAssetInsightSelection` varchar(20) COLLATE utf8mb3_bin DEFAULT NULL,
  `strBackupLocation` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDatabaseBuildNumber` varchar(12) COLLATE utf8mb3_bin NOT NULL,
  `strDatabaseVersion` varchar(12) COLLATE utf8mb3_bin NOT NULL,
  `strGenerateWO` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  `strGenerateWOBefore` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  `strGenerateWOWhen` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  `strGraingerAccountNum` varchar(50) COLLATE utf8mb3_bin DEFAULT NULL,
  `strGuestMrFeatureLevel` varchar(20) COLLATE utf8mb3_bin DEFAULT NULL,
  `strGuestMrListViewType` varchar(20) COLLATE utf8mb3_bin DEFAULT NULL,
  `strLockingEnabledWorkOrderStatusIds` longtext COLLATE utf8mb3_bin,
  `strPartForecasterReportFrequency` varchar(20) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPartForecastorSelection` varchar(20) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPoolRFQsAndSendOn` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  `strSendRFQImmediately` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  `strSettings` longtext COLLATE utf8mb3_bin,
  `strShowContactInfoInputs` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUserGroupsIdsWithCloseAndReopenWorkOrder` longtext COLLATE utf8mb3_bin,
  `strUserGroupsIdsWithCloseWorkOrder` longtext COLLATE utf8mb3_bin,
  `strV2SettingsXml` longtext COLLATE utf8mb3_bin,
  `strV6ReportingDefaultDashboard` varchar(50) COLLATE utf8mb3_bin DEFAULT NULL,
  `strWOCF1` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  `strWOCF2` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  `strWOCF3` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  `strWOCF4` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  `strWOCFSeparator` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  `strWOCFSeparatorType` varchar(1) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblSystemSettingIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblSystemSettingIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  KEY `fkTblSystemSettingToTblLocalizationViaIntDefaultLocalizationID` (`intDefaultLocalizationID`),
  KEY `fkTblSystemSettingToTblWorkOrderStatusViaIntDefaultWo1393144001` (`intDefaultWorkRequestStatusID`),
  KEY `fkTblSystemSettingToTblCurrencyViaIntDefaultCurrencyID` (`intDefaultCurrencyID`),
  KEY `fkTblSystemSettingToTblWorkOrderStatusViaIntDefaultWork81959358` (`intDefaultWorkOrderStatusID`),
  CONSTRAINT `fkTblSystemSettingToTblCurrencyViaIntDefaultCurrencyID` FOREIGN KEY (`intDefaultCurrencyID`) REFERENCES `tblCurrency` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblSystemSettingToTblLocalizationViaIntDefaultLocalizationID` FOREIGN KEY (`intDefaultLocalizationID`) REFERENCES `tblLocalization` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblSystemSettingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblSystemSettingToTblWorkOrderStatusViaIntDefaultWo1393144001` FOREIGN KEY (`intDefaultWorkRequestStatusID`) REFERENCES `tblWorkOrderStatus` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblSystemSettingToTblWorkOrderStatusViaIntDefaultWork81959358` FOREIGN KEY (`intDefaultWorkOrderStatusID`) REFERENCES `tblWorkOrderStatus` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTask`;

CREATE TABLE `tblTask` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblTimeEstimatedHours` double DEFAULT NULL,
  `intMasterID` bigint DEFAULT NULL,
  `intMeterReadingUnitID` bigint DEFAULT NULL,
  `intOrder` bigint NOT NULL,
  `intTaskGroupID` bigint NOT NULL,
  `intTaskType` bigint DEFAULT NULL,
  `strDescription` longtext COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTaskIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblTaskToTblTaskGroupViaIntTaskGroupID` (`intTaskGroupID`),
  KEY `fkTblTaskToTblMeterReadingUnitViaIntMeterReadingUnitID` (`intMeterReadingUnitID`),
  CONSTRAINT `fkTblTaskToTblMeterReadingUnitViaIntMeterReadingUnitID` FOREIGN KEY (`intMeterReadingUnitID`) REFERENCES `tblMeterReadingUnit` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTaskToTblTaskGroupViaIntTaskGroupID` FOREIGN KEY (`intTaskGroupID`) REFERENCES `tblTaskGroup` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTaskToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTaskFile`;

CREATE TABLE `tblTaskFile` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intFileID` bigint NOT NULL,
  `intOrder` bigint NOT NULL,
  `intTaskID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTaskFileIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblTaskFileToTblTaskViaIntTaskID` (`intTaskID`),
  KEY `fkTblTaskFileToTblFileViaIntFileIDAndIntTenantID` (`intTenantID`,`intFileID`),
  CONSTRAINT `fkTblTaskFileToTblFileViaIntFileIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intFileID`) REFERENCES `tblFile` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTaskFileToTblTaskViaIntTaskID` FOREIGN KEY (`intTaskID`) REFERENCES `tblTask` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblTaskFileToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTaskGroup`;

CREATE TABLE `tblTaskGroup` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolHasUnConfiguredTasks` tinyint DEFAULT NULL,
  `dtmLastUpdated` datetime DEFAULT NULL,
  `intCreatedByUserID` bigint DEFAULT NULL,
  `intLastUpdatedByUserID` bigint DEFAULT NULL,
  `intMasterID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTaskGroupIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblTaskGroupIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblTaskGroupToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`),
  KEY `fkTblTaskGroupToTblUserViaIntLastUpdatedByUserID` (`intLastUpdatedByUserID`),
  CONSTRAINT `fkTblTaskGroupToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTaskGroupToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTaskGroupToTblUserViaIntLastUpdatedByUserID` FOREIGN KEY (`intLastUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTaskGroupAssetCategory`;

CREATE TABLE `tblTaskGroupAssetCategory` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolIncludeChildCategories` tinyint NOT NULL,
  `intAssetCategoryID` bigint DEFAULT NULL,
  `intTaskGroupID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTaskGroupAssetCategoryIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblTaskGroupAssetCategoryToTblAssetCategoryViaIntAss845664912` (`intAssetCategoryID`),
  KEY `fkTblTaskGroupAssetCategoryToTblTaskGroupViaIntTaskGroupID` (`intTaskGroupID`),
  CONSTRAINT `fkTblTaskGroupAssetCategoryToTblAssetCategoryViaIntAss845664912` FOREIGN KEY (`intAssetCategoryID`) REFERENCES `tblAssetCategory` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblTaskGroupAssetCategoryToTblTaskGroupViaIntTaskGroupID` FOREIGN KEY (`intTaskGroupID`) REFERENCES `tblTaskGroup` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblTaskGroupAssetCategoryToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTaskResultConfiguration`;

CREATE TABLE `tblTaskResultConfiguration` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intTaskResultValueID` bigint NOT NULL,
  `strAction` varchar(526) COLLATE utf8mb3_bin NOT NULL,
  `strParamValue` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTaskResultConfigurationIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblTaskResultConfigurationToTblTaskResultValueViaIn1584196194` (`intTaskResultValueID`),
  CONSTRAINT `fkTblTaskResultConfigurationToTblTaskResultValueViaIn1584196194` FOREIGN KEY (`intTaskResultValueID`) REFERENCES `tblTaskResultValue` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblTaskResultConfigurationToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTaskResultValue`;

CREATE TABLE `tblTaskResultValue` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intScheduledTaskID` bigint DEFAULT NULL,
  `intTaskID` bigint DEFAULT NULL,
  `intWorkOrderTaskID` bigint DEFAULT NULL,
  `strLabel` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  `strTaskResult` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTaskResultValueIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblTaskResultValueToTblTaskViaIntTaskID` (`intTaskID`),
  KEY `fkTblTaskResultValueToTblWorkOrderTaskViaIntWorkOrder1013594236` (`intTenantID`,`intWorkOrderTaskID`),
  KEY `fkTblTaskResultValueToTblScheduledTaskViaIntScheduled1615152717` (`intScheduledTaskID`,`intTenantID`),
  CONSTRAINT `fkTblTaskResultValueToTblScheduledTaskViaIntScheduled1615152717` FOREIGN KEY (`intScheduledTaskID`, `intTenantID`) REFERENCES `tblScheduledTask` (`id`, `intTenantID`) ON DELETE CASCADE,
  CONSTRAINT `fkTblTaskResultValueToTblScheduledTaskViaIntScheduledTaskID` FOREIGN KEY (`intScheduledTaskID`) REFERENCES `tblScheduledTask` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblTaskResultValueToTblTaskViaIntTaskID` FOREIGN KEY (`intTaskID`) REFERENCES `tblTask` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblTaskResultValueToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTaskResultValueToTblWorkOrderTaskViaIntWorkOrder1013594236` FOREIGN KEY (`intTenantID`, `intWorkOrderTaskID`) REFERENCES `tblWorkOrderTask` (`intTenantID`, `id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTemplate`;

CREATE TABLE `tblTemplate` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `intTemplateCategoryID` bigint DEFAULT NULL,
  `strContents` longtext COLLATE utf8mb3_bin,
  `strName` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPushNotification` longtext COLLATE utf8mb3_bin,
  `strSubject` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTemplateIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblTemplateIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  KEY `fkTblTemplateToTblTemplateCategoryViaIntTemplateCategoryID` (`intTemplateCategoryID`),
  CONSTRAINT `fkTblTemplateToTblTemplateCategoryViaIntTemplateCategoryID` FOREIGN KEY (`intTemplateCategoryID`) REFERENCES `tblTemplateCategory` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTemplateToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTemplateCategory`;

CREATE TABLE `tblTemplateCategory` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTemplateCategoryIntTenantIDId` (`intTenantID`,`id`),
  CONSTRAINT `fkTblTemplateCategoryToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTenant`;

CREATE TABLE `tblTenant` (
  `id` bigint NOT NULL,
  `bolApiProvisioned` tinyint DEFAULT NULL,
  `bolCreatedByWeb` tinyint DEFAULT NULL,
  `bolDoNotLoadExternalContent` tinyint DEFAULT NULL,
  `bolImportedFromV4` tinyint NOT NULL,
  `bolLegacyCustomer` tinyint DEFAULT NULL,
  `bolMustAcceptEula` tinyint DEFAULT NULL,
  `bolOptAdminCanEditLogs` tinyint DEFAULT NULL,
  `bolOptApiPermissions` tinyint DEFAULT NULL,
  `bolOptAuditLog` tinyint DEFAULT NULL,
  `bolOptCustomFilters` tinyint DEFAULT NULL,
  `bolOptDisablePasswordStrength` tinyint DEFAULT NULL,
  `bolOptDisableUpgradePopovers` tinyint DEFAULT NULL,
  `bolOptDisableZendeskSubAddress` tinyint DEFAULT NULL,
  `bolOptEnableCors` tinyint DEFAULT NULL,
  `bolOptEntityLinks` tinyint DEFAULT NULL,
  `bolOptGrainger` tinyint DEFAULT NULL,
  `bolOptGuestRequestor` tinyint DEFAULT NULL,
  `bolOptLaborTasks` tinyint DEFAULT NULL,
  `bolOptMAShare` tinyint DEFAULT NULL,
  `bolOptMeterReadingsOnTaskLevel` tinyint DEFAULT NULL,
  `bolOptMiscCosting` tinyint DEFAULT NULL,
  `bolOptMobile` tinyint DEFAULT NULL,
  `bolOptMultiLanguage` tinyint DEFAULT NULL,
  `bolOptMultiUpload` tinyint DEFAULT NULL,
  `bolOptMultisite` tinyint DEFAULT NULL,
  `bolOptNavWarningOff` tinyint DEFAULT NULL,
  `bolOptNotificationSeats` tinyint DEFAULT NULL,
  `bolOptPremiumReports` tinyint DEFAULT NULL,
  `bolOptPurchasing` tinyint DEFAULT NULL,
  `bolOptQrCode` tinyint DEFAULT NULL,
  `bolOptRememberFilterValues` tinyint DEFAULT NULL,
  `bolOptRememberMe` tinyint DEFAULT NULL,
  `bolOptRounds` tinyint DEFAULT NULL,
  `bolOptSyncToHubspot` tinyint DEFAULT NULL,
  `bolOptUseFiixBranding` tinyint DEFAULT NULL,
  `bolOptUserCertification` tinyint DEFAULT NULL,
  `bolPartnerCustomer` tinyint DEFAULT NULL,
  `bolSuppressDelinquencyAutomation` tinyint DEFAULT NULL,
  `bolSuppressInAppMarketingCampaigns` tinyint DEFAULT NULL,
  `bolUnlimitedUsers` tinyint DEFAULT NULL,
  `dtmAcceptedEulaTimestamp` datetime DEFAULT NULL,
  `dtmAccountSalesTransitionDate` datetime DEFAULT NULL,
  `dtmInviteSent` datetime DEFAULT NULL,
  `dtmSignedUp` datetime DEFAULT NULL,
  `intAcceptedEulaUserID` bigint DEFAULT NULL,
  `intAccountManagerUserID` bigint DEFAULT NULL,
  `intConfirmCopiedToTenantID` bigint DEFAULT NULL,
  `intCreatedByUserID` bigint DEFAULT NULL,
  `intDefaultLocalizationID` bigint DEFAULT NULL,
  `intDefaultRefreshIntervalMs` int DEFAULT NULL,
  `intFileLoginScreenBrandContentsID` bigint DEFAULT NULL,
  `intFileMenuContentsID` bigint DEFAULT NULL,
  `intLeadStateID` bigint DEFAULT NULL,
  `intMaxStorageMb` bigint NOT NULL,
  `intMaxUsers` bigint NOT NULL,
  `intPartnerID` bigint DEFAULT NULL,
  `intTargetPaymentMethodID` bigint DEFAULT NULL,
  `intTenantStatusID` bigint NOT NULL,
  `intTenantTypeID` bigint NOT NULL,
  `strAccountSalesClassification` varchar(10) COLLATE utf8mb3_bin DEFAULT NULL,
  `strBillingCCList` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  `strCreatedReferenceKey` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  `strCrmAccountId` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strCrmCmmsInstanceId` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strCustomerTokenKey` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  `strInviteHash` varchar(20) COLLATE utf8mb3_bin DEFAULT NULL,
  `strNotificationHistory` longtext COLLATE utf8mb3_bin,
  `strSignedUpFromIP` varchar(20) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSubdomain` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `strTenantToCopyToID` varchar(10) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTenantStrUuid` (`strUuid`),
  UNIQUE KEY `xuTblTenantStrSubdomain` (`strSubdomain`),
  KEY `fkTblTenantToTblTenantTypeViaIntTenantTypeID` (`intTenantTypeID`),
  KEY `fkTblTenantToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`),
  KEY `fkTblTenantToTblPaymentMethodViaIntTargetPaymentMethodID` (`intTargetPaymentMethodID`),
  KEY `fkTblTenantToTblTenantViaIntConfirmCopiedToTenantID` (`intConfirmCopiedToTenantID`),
  KEY `fkTblTenantToTblTenantViaIntPartnerID` (`intPartnerID`),
  KEY `fkTblTenantToTblFileContentsViaIntFileMenuContentsID` (`intFileMenuContentsID`),
  KEY `fkTblTenantToTblTenantStatusViaIntTenantStatusID` (`intTenantStatusID`),
  KEY `fkTblTenantToTblLeadStateViaIntLeadStateID` (`intLeadStateID`),
  KEY `fkTblTenantToTblLocalizationViaIntDefaultLocalizationID` (`intDefaultLocalizationID`),
  KEY `fkTblTenantToTblUserViaIntAccountManagerUserID` (`intAccountManagerUserID`),
  KEY `fkTblTenantToTblFileContentsViaIntFileLoginScreenBran1394697510` (`intFileLoginScreenBrandContentsID`),
  KEY `fkTblTenantToTblUserViaIntAcceptedEulaUserID` (`intAcceptedEulaUserID`),
  CONSTRAINT `fkTblTenantToTblFileContentsViaIntFileLoginScreenBran1394697510` FOREIGN KEY (`intFileLoginScreenBrandContentsID`) REFERENCES `tblFileContents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblTenantToTblFileContentsViaIntFileMenuContentsID` FOREIGN KEY (`intFileMenuContentsID`) REFERENCES `tblFileContents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblTenantToTblLeadStateViaIntLeadStateID` FOREIGN KEY (`intLeadStateID`) REFERENCES `tblLeadState` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantToTblLocalizationViaIntDefaultLocalizationID` FOREIGN KEY (`intDefaultLocalizationID`) REFERENCES `tblLocalization` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantToTblPaymentMethodViaIntTargetPaymentMethodID` FOREIGN KEY (`intTargetPaymentMethodID`) REFERENCES `tblPaymentMethod` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblTenantToTblTenantStatusViaIntTenantStatusID` FOREIGN KEY (`intTenantStatusID`) REFERENCES `tblTenantStatus` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantToTblTenantTypeViaIntTenantTypeID` FOREIGN KEY (`intTenantTypeID`) REFERENCES `tblTenantType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantToTblTenantViaIntConfirmCopiedToTenantID` FOREIGN KEY (`intConfirmCopiedToTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantToTblTenantViaIntPartnerID` FOREIGN KEY (`intPartnerID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantToTblUserViaIntAcceptedEulaUserID` FOREIGN KEY (`intAcceptedEulaUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantToTblUserViaIntAccountManagerUserID` FOREIGN KEY (`intAccountManagerUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTenantAutomation`;

CREATE TABLE `tblTenantAutomation` (
  `id` bigint NOT NULL,
  `bolAddFeature` tinyint DEFAULT NULL,
  `bolCancelTenant` tinyint DEFAULT NULL,
  `bolIsActive` tinyint DEFAULT NULL,
  `bolRemoveFeature` tinyint DEFAULT NULL,
  `bolTestMode` tinyint DEFAULT NULL,
  `intFeatureID` bigint DEFAULT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strNotes` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  KEY `fkTblTenantAutomationToTblFeatureViaIntFeatureID` (`intFeatureID`),
  CONSTRAINT `fkTblTenantAutomationToTblFeatureViaIntFeatureID` FOREIGN KEY (`intFeatureID`) REFERENCES `tblFeature` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTenantDashboard`;

CREATE TABLE `tblTenantDashboard` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intDashboardID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTenantDashboardIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblTenantDashboardToTblDashboardViaIntDashboardID` (`intDashboardID`),
  CONSTRAINT `fkTblTenantDashboardToTblDashboardViaIntDashboardID` FOREIGN KEY (`intDashboardID`) REFERENCES `tblDashboard` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblTenantDashboardToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTenantDeleteStatus`;

CREATE TABLE `tblTenantDeleteStatus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `intTenantID` bigint NOT NULL,
  `isDeleted` tinyint DEFAULT '0',
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `strComment` varchar(500) DEFAULT NULL,
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fkTblTenantDeleteStatusToTblTenantViaIntTenantID` (`intTenantID`),
  CONSTRAINT `fkTblTenantDeleteStatusToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `tblTenantDeleteTableNames`;

CREATE TABLE `tblTenantDeleteTableNames` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `strTableName` varchar(500) DEFAULT NULL,
  `isBatchDeleteApplicable` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `tblTenantDistributionCampaign`;

CREATE TABLE `tblTenantDistributionCampaign` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolActive` tinyint DEFAULT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `intDistributionID` bigint DEFAULT NULL,
  `strCampaignCode` varchar(50) COLLATE utf8mb3_bin DEFAULT NULL,
  `strCampaignName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTenantDistributionCampaignIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblTenantDistributionCampaignToTblDistributionViaIn1248073008` (`intDistributionID`),
  CONSTRAINT `fkTblTenantDistributionCampaignToTblDistributionViaIn1248073008` FOREIGN KEY (`intDistributionID`) REFERENCES `tblDistribution` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblTenantDistributionCampaignToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTenantFeature`;

CREATE TABLE `tblTenantFeature` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolAvailable` tinyint DEFAULT NULL,
  `bolSeatMultiplier` tinyint DEFAULT NULL,
  `dblOverageUnitCost` double DEFAULT NULL,
  `dtmDateUpdated` datetime DEFAULT NULL,
  `intAddedFromPricingTierFeatureID` bigint DEFAULT NULL,
  `intCreatedByUserID` bigint DEFAULT NULL,
  `intFeatureID` bigint DEFAULT NULL,
  `intFeatureValuePeriodTypeID` bigint DEFAULT NULL,
  `intFeatureValueTypeID` bigint DEFAULT NULL,
  `intOverageControlTypeID` bigint DEFAULT NULL,
  `intOverageUnitCostThresholdTypeID` bigint DEFAULT NULL,
  `intUpdatedByUserID` bigint DEFAULT NULL,
  `qtyOverageUnitCostThreshold` double DEFAULT NULL,
  `qtyValue` double DEFAULT NULL,
  `strNotes` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTenantFeatureIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblTenantFeatureStrUuid` (`strUuid`),
  KEY `fkTblTenantFeatureToTblFeatureValueTypeViaIntFeatureValueTypeID` (`intFeatureValueTypeID`),
  KEY `fkTblTenantFeatureToTblFeatureValueOverageControlTypeVi25024799` (`intOverageControlTypeID`),
  KEY `fkTblTenantFeatureToTblFeatureViaIntFeatureID` (`intFeatureID`),
  KEY `fkTblTenantFeatureToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`),
  KEY `fkTblTenantFeatureToTblPricingTierFeatureViaIntAddedFr692937396` (`intAddedFromPricingTierFeatureID`),
  KEY `fkTblTenantFeatureToTblUserViaIntUpdatedByUserID` (`intUpdatedByUserID`),
  KEY `fkTblTenantFeatureToTblFeatureValueTypeViaIntOverageUn568047530` (`intOverageUnitCostThresholdTypeID`),
  KEY `fkTblTenantFeatureToTblFeatureValuePeriodTypeViaIntFea757598728` (`intFeatureValuePeriodTypeID`),
  CONSTRAINT `fkTblTenantFeatureToTblFeatureValueOverageControlTypeVi25024799` FOREIGN KEY (`intOverageControlTypeID`) REFERENCES `tblFeatureValueOverageControlType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantFeatureToTblFeatureValuePeriodTypeViaIntFea757598728` FOREIGN KEY (`intFeatureValuePeriodTypeID`) REFERENCES `tblFeatureValuePeriodType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantFeatureToTblFeatureValueTypeViaIntFeatureValueTypeID` FOREIGN KEY (`intFeatureValueTypeID`) REFERENCES `tblFeatureValueType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantFeatureToTblFeatureValueTypeViaIntOverageUn568047530` FOREIGN KEY (`intOverageUnitCostThresholdTypeID`) REFERENCES `tblFeatureValueType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantFeatureToTblFeatureViaIntFeatureID` FOREIGN KEY (`intFeatureID`) REFERENCES `tblFeature` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantFeatureToTblPricingTierFeatureViaIntAddedFr692937396` FOREIGN KEY (`intAddedFromPricingTierFeatureID`) REFERENCES `tblPricingTierFeature` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantFeatureToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantFeatureToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantFeatureToTblUserViaIntUpdatedByUserID` FOREIGN KEY (`intUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTenantLineItem`;

CREATE TABLE `tblTenantLineItem` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblDiscount` double NOT NULL,
  `dblPrice` double NOT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDateUpdated` datetime DEFAULT NULL,
  `intQuantity` bigint NOT NULL,
  `intReferenceOrderID` bigint DEFAULT NULL,
  `intTenantOrderID` bigint DEFAULT NULL,
  `intUpdatedByUserID` bigint DEFAULT NULL,
  `strName` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `strNotes` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTenantLineItemIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblTenantLineItemToTblTenantOrderViaIntTenantOrderID` (`intTenantOrderID`),
  KEY `fkTblTenantLineItemToTblOrderViaIntReferenceOrderID` (`intReferenceOrderID`),
  KEY `fkTblTenantLineItemToTblUserViaIntUpdatedByUserID` (`intUpdatedByUserID`),
  CONSTRAINT `fkTblTenantLineItemToTblOrderViaIntReferenceOrderID` FOREIGN KEY (`intReferenceOrderID`) REFERENCES `tblOrder` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblTenantLineItemToTblTenantOrderViaIntTenantOrderID` FOREIGN KEY (`intTenantOrderID`) REFERENCES `tblTenantOrder` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblTenantLineItemToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantLineItemToTblUserViaIntUpdatedByUserID` FOREIGN KEY (`intUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTenantNotification`;

CREATE TABLE `tblTenantNotification` (
  `id` bigint NOT NULL,
  `dblTriggerEventValue` double DEFAULT NULL,
  `strContents` longtext COLLATE utf8mb3_bin,
  `strName` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSubject` longtext COLLATE utf8mb3_bin,
  `strTriggerEventName` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTenantNotificationPricingTier`;

CREATE TABLE `tblTenantNotificationPricingTier` (
  `id` bigint NOT NULL,
  `intPricingTierID` bigint NOT NULL,
  `intTenantNotificationID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblTenantNotificationPricingTierToTblTenantNotificati96878801` (`intTenantNotificationID`),
  KEY `fkTblTenantNotificationPricingTierToTblPricingTierVia1197790813` (`intPricingTierID`),
  CONSTRAINT `fkTblTenantNotificationPricingTierToTblPricingTierVia1197790813` FOREIGN KEY (`intPricingTierID`) REFERENCES `tblPricingTier` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblTenantNotificationPricingTierToTblTenantNotificati96878801` FOREIGN KEY (`intTenantNotificationID`) REFERENCES `tblTenantNotification` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTenantOrder`;

CREATE TABLE `tblTenantOrder` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblSubtotalAmount` double DEFAULT NULL,
  `dblTaxAmount` double DEFAULT NULL,
  `dblTotalAmount` double DEFAULT NULL,
  `dtmDateClose` datetime DEFAULT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDateOpen` datetime DEFAULT NULL,
  `dtmDatePaid` datetime DEFAULT NULL,
  `dtmDateRefunded` datetime DEFAULT NULL,
  `dtmDateSentOrder` datetime DEFAULT NULL,
  `dtmDateSentReceipt` datetime DEFAULT NULL,
  `dtmDateUpdated` datetime DEFAULT NULL,
  `intPaymentProfileID` bigint DEFAULT NULL,
  `intTenantOrderTypeID` bigint DEFAULT NULL,
  `strNotes` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTenantOrderIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblTenantOrderToTblTenantOrderTypeViaIntTenantOrderTypeID` (`intTenantOrderTypeID`),
  KEY `fkTblTenantOrderToTblPaymentProfileViaIntPaymentProfileID` (`intPaymentProfileID`),
  CONSTRAINT `fkTblTenantOrderToTblPaymentProfileViaIntPaymentProfileID` FOREIGN KEY (`intPaymentProfileID`) REFERENCES `tblPaymentProfile` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantOrderToTblTenantOrderTypeViaIntTenantOrderTypeID` FOREIGN KEY (`intTenantOrderTypeID`) REFERENCES `tblTenantOrderType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantOrderToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTenantOrderType`;

CREATE TABLE `tblTenantOrderType` (
  `id` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTenantPurgeRecordCount`;

CREATE TABLE `tblTenantPurgeRecordCount` (
  `intTenantID` int DEFAULT NULL,
  `strTableName` varchar(50) DEFAULT NULL,
  `strState` varchar(10) DEFAULT NULL,
  `intRecords` int DEFAULT NULL,
  `dtmCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `tblTenantRelationship`;

CREATE TABLE `tblTenantRelationship` (
  `id` bigint NOT NULL,
  `dtmActiveFromDate` datetime DEFAULT NULL,
  `dtmActiveToDate` datetime DEFAULT NULL,
  `intDistributionId` bigint DEFAULT NULL,
  `intMasterTenantID` bigint DEFAULT NULL,
  `intSlaveTenantID` bigint NOT NULL,
  `intTenantDistributionCampaignId` bigint DEFAULT NULL,
  `intTenantRelationshipTypeID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTenantRelationshipIntMasterTenantIDIntSlaveTenan1370907718` (`intMasterTenantID`,`intSlaveTenantID`,`intTenantRelationshipTypeID`),
  KEY `fkTblTenantRelationshipToTblTenantViaIntSlaveTenantID` (`intSlaveTenantID`),
  KEY `fkTblTenantRelationshipToTblTenantDistributionCampaign961459584` (`intTenantDistributionCampaignId`),
  KEY `fkTblTenantRelationshipToTblDistributionViaIntDistributionId` (`intDistributionId`),
  KEY `fkTblTenantRelationshipToTblTenantRelationshipTypeViaI502057060` (`intTenantRelationshipTypeID`),
  CONSTRAINT `fkTblTenantRelationshipToTblDistributionViaIntDistributionId` FOREIGN KEY (`intDistributionId`) REFERENCES `tblDistribution` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantRelationshipToTblTenantDistributionCampaign961459584` FOREIGN KEY (`intTenantDistributionCampaignId`) REFERENCES `tblTenantDistributionCampaign` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantRelationshipToTblTenantRelationshipTypeViaI502057060` FOREIGN KEY (`intTenantRelationshipTypeID`) REFERENCES `tblTenantRelationshipType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantRelationshipToTblTenantViaIntMasterTenantID` FOREIGN KEY (`intMasterTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantRelationshipToTblTenantViaIntSlaveTenantID` FOREIGN KEY (`intSlaveTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblTenantRelationshipBI` BEFORE INSERT ON `tbltenantrelationship` FOR EACH ROW BEGIN 
	IF NEW.intMasterTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblTenantRelationshipBU` BEFORE UPDATE ON `tbltenantrelationship` FOR EACH ROW BEGIN 
	IF NEW.intMasterTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`usrAdmin`@`%`*/ /*!50003 TRIGGER `trgMatblTenantRelationshipBD` BEFORE DELETE ON `tbltenantrelationship` FOR EACH ROW BEGIN 
	IF OLD.intMasterTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `tblTenantRelationshipType`;

CREATE TABLE `tblTenantRelationshipType` (
  `id` bigint NOT NULL,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTenantReport`;

CREATE TABLE `tblTenantReport` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intReportTemplateID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTenantReportIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblTenantReportToTblReportTemplateViaIntReportTemplateID` (`intReportTemplateID`),
  CONSTRAINT `fkTblTenantReportToTblReportTemplateViaIntReportTemplateID` FOREIGN KEY (`intReportTemplateID`) REFERENCES `tblReportTemplate` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblTenantReportToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTenantStatus`;

CREATE TABLE `tblTenantStatus` (
  `id` bigint NOT NULL,
  `strDescription` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTenantSystemProperty`;

CREATE TABLE `tblTenantSystemProperty` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmLastUpdated` datetime NOT NULL,
  `intSystemID` bigint NOT NULL,
  `strPropertyName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPropertyValue` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTenantSystemPropertyIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblTenantSystemPropertyIntTenantIDIntSystemIDStrPropertyName` (`intTenantID`,`intSystemID`,`strPropertyName`),
  CONSTRAINT `fkTblTenantSystemPropertyToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTenantSystemPropertyLog`;

CREATE TABLE `tblTenantSystemPropertyLog` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmUpdated` datetime NOT NULL,
  `intSystemID` bigint NOT NULL,
  `strPropertyName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPropertyValue` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTenantSystemPropertyLogIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblTenantSystemPropertyLogIntTenantIDIntSystemIDStrP1866839388` (`intTenantID`,`intSystemID`,`strPropertyName`),
  CONSTRAINT `fkTblTenantSystemPropertyLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTenantTransaction`;

CREATE TABLE `tblTenantTransaction` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblTotalAmount` double DEFAULT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDatePaid` datetime DEFAULT NULL,
  `intPaidByUserID` bigint DEFAULT NULL,
  `intPaymentProfileID` bigint DEFAULT NULL,
  `intTenantOrderID` bigint DEFAULT NULL,
  `strNotes` longtext COLLATE utf8mb3_bin,
  `strTransactionReference` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTenantTransactionIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblTenantTransactionToTblTenantOrderViaIntTenantOrderID` (`intTenantOrderID`),
  KEY `fkTblTenantTransactionToTblUserViaIntPaidByUserID` (`intPaidByUserID`),
  KEY `fkTblTenantTransactionToTblPaymentProfileViaIntPaymentProfileID` (`intPaymentProfileID`),
  CONSTRAINT `fkTblTenantTransactionToTblPaymentProfileViaIntPaymentProfileID` FOREIGN KEY (`intPaymentProfileID`) REFERENCES `tblPaymentProfile` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantTransactionToTblTenantOrderViaIntTenantOrderID` FOREIGN KEY (`intTenantOrderID`) REFERENCES `tblTenantOrder` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantTransactionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTenantTransactionToTblUserViaIntPaidByUserID` FOREIGN KEY (`intPaidByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTenantType`;

CREATE TABLE `tblTenantType` (
  `id` bigint NOT NULL,
  `strDescription` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTenantWidget`;

CREATE TABLE `tblTenantWidget` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intWidgetID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTenantWidgetIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblTenantWidgetToTblDashboardWidgetViaIntWidgetID` (`intWidgetID`),
  CONSTRAINT `fkTblTenantWidgetToTblDashboardWidgetViaIntWidgetID` FOREIGN KEY (`intWidgetID`) REFERENCES `tblDashboardWidget` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblTenantWidgetToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTestingBlack`;

CREATE TABLE `tblTestingBlack` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `intBlackCascadeID` bigint DEFAULT NULL,
  `intBlackRestrictID` bigint DEFAULT NULL,
  `intBlackSetNullID` bigint DEFAULT NULL,
  `intLongValue` bigint DEFAULT NULL,
  `intWhiteCascadeID` bigint DEFAULT NULL,
  `qtyQuantityValue` double DEFAULT NULL,
  `strCode` varchar(8) COLLATE utf8mb3_bin DEFAULT NULL,
  `strStringValue` varchar(60) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTestingBlackIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblTestingBlackIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  KEY `fkTblTestingBlackToTblTestingBlackViaIntBlackRestrictID` (`intBlackRestrictID`),
  KEY `fkTblTestingBlackToTblTestingBlackViaIntBlackSetNullID` (`intBlackSetNullID`),
  KEY `fkTblTestingBlackToTblTestingBlackViaIntBlackCascadeID` (`intBlackCascadeID`),
  KEY `fkTblTestingBlackToTblTestingWhiteCViaIntWhiteCascadeID` (`intWhiteCascadeID`),
  CONSTRAINT `fkTblTestingBlackToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTestingBlackToTblTestingBlackViaIntBlackCascadeID` FOREIGN KEY (`intBlackCascadeID`) REFERENCES `tblTestingBlack` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTestingBlackToTblTestingBlackViaIntBlackRestrictID` FOREIGN KEY (`intBlackRestrictID`) REFERENCES `tblTestingBlack` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTestingBlackToTblTestingBlackViaIntBlackSetNullID` FOREIGN KEY (`intBlackSetNullID`) REFERENCES `tblTestingBlack` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTestingBlackToTblTestingWhiteCViaIntWhiteCascadeID` FOREIGN KEY (`intWhiteCascadeID`) REFERENCES `tblTestingWhiteC` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTestingRedC`;

CREATE TABLE `tblTestingRedC` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolRareBooleanIndexed` tinyint DEFAULT NULL,
  `intBlackCascadeID` bigint DEFAULT NULL,
  `intBlackRestrictID` bigint DEFAULT NULL,
  `intBlackSetNullID` bigint DEFAULT NULL,
  `intLongValueIndexed` bigint DEFAULT NULL,
  `intLongValueNotIndexed` bigint DEFAULT NULL,
  `intWhiteCCascadeID` bigint DEFAULT NULL,
  `intWhiteCRestrictID` bigint DEFAULT NULL,
  `intWhiteCSetNullID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTestingRedCIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblTestingRedCToTblTestingBlackViaIntBlackRestrictID` (`intBlackRestrictID`),
  KEY `fkTblTestingRedCToTblTestingWhiteCViaIntWhiteCSetNullID` (`intWhiteCSetNullID`),
  KEY `fkTblTestingRedCToTblTestingBlackViaIntBlackSetNullID` (`intBlackSetNullID`),
  KEY `fkTblTestingRedCToTblTestingWhiteCViaIntWhiteCRestrictID` (`intWhiteCRestrictID`),
  KEY `fkTblTestingRedCToTblTestingBlackViaIntBlackCascadeID` (`intBlackCascadeID`),
  KEY `fkTblTestingRedCToTblTestingWhiteCViaIntWhiteCCascadeID` (`intWhiteCCascadeID`),
  CONSTRAINT `fkTblTestingRedCToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTestingRedCToTblTestingBlackViaIntBlackCascadeID` FOREIGN KEY (`intBlackCascadeID`) REFERENCES `tblTestingBlack` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTestingRedCToTblTestingBlackViaIntBlackRestrictID` FOREIGN KEY (`intBlackRestrictID`) REFERENCES `tblTestingBlack` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTestingRedCToTblTestingBlackViaIntBlackSetNullID` FOREIGN KEY (`intBlackSetNullID`) REFERENCES `tblTestingBlack` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTestingRedCToTblTestingWhiteCViaIntWhiteCCascadeID` FOREIGN KEY (`intWhiteCCascadeID`) REFERENCES `tblTestingWhiteC` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTestingRedCToTblTestingWhiteCViaIntWhiteCRestrictID` FOREIGN KEY (`intWhiteCRestrictID`) REFERENCES `tblTestingWhiteC` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTestingRedCToTblTestingWhiteCViaIntWhiteCSetNullID` FOREIGN KEY (`intWhiteCSetNullID`) REFERENCES `tblTestingWhiteC` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTestingWhiteC`;

CREATE TABLE `tblTestingWhiteC` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `intBlackCascadeID` bigint DEFAULT NULL,
  `intLongValue` bigint DEFAULT NULL,
  `intLongValueIndexed` bigint DEFAULT NULL,
  `qtyQuantityValue` double DEFAULT NULL,
  `strCode` varchar(8) COLLATE utf8mb3_bin DEFAULT NULL,
  `strStringValue` varchar(60) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTestingWhiteCIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblTestingWhiteCIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  KEY `fkTblTestingWhiteCToTblTestingBlackViaIntBlackCascadeID` (`intBlackCascadeID`),
  CONSTRAINT `fkTblTestingWhiteCToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTestingWhiteCToTblTestingBlackViaIntBlackCascadeID` FOREIGN KEY (`intBlackCascadeID`) REFERENCES `tblTestingBlack` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTestingYellow`;

CREATE TABLE `tblTestingYellow` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intBlackCascadeID` bigint DEFAULT NULL,
  `intBlackRestrictID` bigint DEFAULT NULL,
  `intBlackSetNullID` bigint DEFAULT NULL,
  `intLongValue` bigint DEFAULT NULL,
  `intWhiteCCascadeID` bigint DEFAULT NULL,
  `intWhiteCRestrictID` bigint DEFAULT NULL,
  `intWhiteCSetNullID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTestingYellowIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblTestingYellowToTblTestingBlackViaIntBlackCascadeID` (`intBlackCascadeID`),
  KEY `fkTblTestingYellowToTblTestingBlackViaIntBlackSetNullID` (`intBlackSetNullID`),
  KEY `fkTblTestingYellowToTblTestingWhiteCViaIntWhiteCCascadeID` (`intWhiteCCascadeID`),
  KEY `fkTblTestingYellowToTblTestingBlackViaIntBlackRestrictID` (`intBlackRestrictID`),
  KEY `fkTblTestingYellowToTblTestingWhiteCViaIntWhiteCRestrictID` (`intWhiteCRestrictID`),
  KEY `fkTblTestingYellowToTblTestingWhiteCViaIntWhiteCSetNullID` (`intWhiteCSetNullID`),
  CONSTRAINT `fkTblTestingYellowToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTestingYellowToTblTestingBlackViaIntBlackCascadeID` FOREIGN KEY (`intBlackCascadeID`) REFERENCES `tblTestingBlack` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTestingYellowToTblTestingBlackViaIntBlackRestrictID` FOREIGN KEY (`intBlackRestrictID`) REFERENCES `tblTestingBlack` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTestingYellowToTblTestingBlackViaIntBlackSetNullID` FOREIGN KEY (`intBlackSetNullID`) REFERENCES `tblTestingBlack` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTestingYellowToTblTestingWhiteCViaIntWhiteCCascadeID` FOREIGN KEY (`intWhiteCCascadeID`) REFERENCES `tblTestingWhiteC` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTestingYellowToTblTestingWhiteCViaIntWhiteCRestrictID` FOREIGN KEY (`intWhiteCRestrictID`) REFERENCES `tblTestingWhiteC` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTestingYellowToTblTestingWhiteCViaIntWhiteCSetNullID` FOREIGN KEY (`intWhiteCSetNullID`) REFERENCES `tblTestingWhiteC` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTestTable`;

CREATE TABLE `tblTestTable` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolYo` tinyint DEFAULT NULL,
  `datYo` datetime DEFAULT NULL,
  `dblYo` double DEFAULT NULL,
  `dtmYo` datetime DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  `intYo` bigint DEFAULT NULL,
  `intYoInteger` int DEFAULT NULL,
  `qtyYo` double DEFAULT NULL,
  `strYo` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strYoLong` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTestTableIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblTestTableToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblTestTableToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblTestTableToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTheThrowable`;

CREATE TABLE `tblTheThrowable` (
  `id` bigint NOT NULL,
  `bolIgnore` tinyint NOT NULL,
  `intStackTraceHashCode` bigint NOT NULL,
  `intStackTraceLength` bigint NOT NULL,
  `strStackTrace` varchar(2000) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xTblTheThrowableIntStackTraceHashCodeIntStackTraceLength` (`intStackTraceHashCode`,`intStackTraceLength`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTheThrowableReported`;

CREATE TABLE `tblTheThrowableReported` (
  `id` bigint NOT NULL,
  `intTenantID` bigint DEFAULT NULL,
  `dtmTimestamp` datetime NOT NULL,
  `intBuildNumber` bigint NOT NULL,
  `intTheThrowableID` bigint NOT NULL,
  `intUserID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblTheThrowableReportedToTblTheThrowableViaIntTheThrowableID` (`intTheThrowableID`),
  CONSTRAINT `fkTblTheThrowableReportedToTblTheThrowableViaIntTheThrowableID` FOREIGN KEY (`intTheThrowableID`) REFERENCES `tblTheThrowable` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUicProfile`;

CREATE TABLE `tblUicProfile` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intUserID` bigint DEFAULT NULL,
  `strUics` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUicProfileIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblUicProfileToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblUicProfileToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUicProfileToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUsageLog`;

CREATE TABLE `tblUsageLog` (
  `id` bigint NOT NULL,
  `intTenantID` bigint DEFAULT NULL,
  `dtmTimestamp` datetime NOT NULL,
  `intUserID` bigint DEFAULT NULL,
  `strAction` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUiHandlerName` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUsageLogIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblUsageLogToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblUsageLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUsageLogToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUser`;

CREATE TABLE `tblUser` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `bolApiApplicationUser` tinyint DEFAULT NULL,
  `bolApiManaged` tinyint DEFAULT NULL,
  `bolEmailAllAlerts` tinyint DEFAULT NULL,
  `bolEmailAllMessages` tinyint DEFAULT NULL,
  `bolEmailSystemErrors` tinyint DEFAULT NULL,
  `bolForceResetPassword` tinyint DEFAULT NULL,
  `bolGroup` tinyint DEFAULT NULL,
  `bolInternalMailAllMessages` tinyint DEFAULT NULL,
  `bolIsCrmAccountOwner` tinyint DEFAULT NULL,
  `bolIsLocalizing` tinyint DEFAULT NULL,
  `bolIsVirtuallyDeleted` tinyint DEFAULT NULL,
  `bolNotifyOnDWOE` tinyint DEFAULT NULL,
  `bolNotifyOnWOAssigned` tinyint DEFAULT NULL,
  `bolNotifyOnWOCompleted` tinyint DEFAULT NULL,
  `bolNotifyOnWODraft` tinyint DEFAULT NULL,
  `bolNotifyOnWOOnHold` tinyint DEFAULT NULL,
  `bolNotifyOnWOOpen` tinyint DEFAULT NULL,
  `bolNotifyOnWORequested` tinyint DEFAULT NULL,
  `bolNotifyOnWOWithNoAsset` tinyint DEFAULT NULL,
  `bolNotifyOnWOWorkInProgress` tinyint DEFAULT NULL,
  `bolProgressMeterNoticeDisplayed` tinyint DEFAULT NULL,
  `bolPushNotificationMessages` tinyint DEFAULT NULL,
  `bolSendEmailOnExpire` tinyint DEFAULT NULL,
  `bolShowHoverWindows` tinyint DEFAULT NULL,
  `bolSystemLevelUser` tinyint DEFAULT NULL,
  `bolWebInterfaceContact` tinyint DEFAULT NULL,
  `bolWelcomeEmailSent` tinyint DEFAULT NULL,
  `dblHourlyRate` double DEFAULT NULL,
  `dtmBusinessApprove` datetime DEFAULT NULL,
  `dtmDateAccountExpire` datetime DEFAULT NULL,
  `dtmDateActivated` datetime DEFAULT NULL,
  `dtmDateApprovalExpire` datetime DEFAULT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDateDeactivated` datetime DEFAULT NULL,
  `dtmDateRequest` datetime DEFAULT NULL,
  `dtmLastLogin` datetime DEFAULT NULL,
  `dtmLastNagScreenTime` datetime DEFAULT NULL,
  `dtmLastPasswordChange` datetime DEFAULT NULL,
  `dtmUserApprove` datetime DEFAULT NULL,
  `dtmV6LastLogin` datetime DEFAULT NULL,
  `intBgImageFileID` bigint DEFAULT NULL,
  `intBusinessApproveStatus` bigint DEFAULT NULL,
  `intCountryID` bigint DEFAULT NULL,
  `intCurrencyID` bigint DEFAULT NULL,
  `intLocalizationID` bigint DEFAULT NULL,
  `intMenuType` bigint DEFAULT NULL,
  `intNotifyExpireDaysBefore` bigint DEFAULT NULL,
  `intRecordsPerPage` bigint DEFAULT NULL,
  `intSSOImplementationID` bigint DEFAULT NULL,
  `intSessionTimeoutSeconds` bigint DEFAULT NULL,
  `intSkinID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `intUserApproveStatus` bigint DEFAULT NULL,
  `intUserStatusID` bigint DEFAULT NULL,
  `strAddress1` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `strAddress2` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `strBusinessIds` longtext COLLATE utf8mb3_bin,
  `strBusinessUserPrivateKey` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strBusinesses` longtext COLLATE utf8mb3_bin,
  `strCity` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDefaultLoginLocation` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `strEmailAddress` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strFormLayoutType` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `strFullName` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strNotes` longtext COLLATE utf8mb3_bin,
  `strNotifyOnWOAsset` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `strOneSignalPlayerIDs` longtext COLLATE utf8mb3_bin,
  `strPassword` varchar(512) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPersonnelCode` varchar(16) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPlayerID` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPostalCode` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPreferences` longtext COLLATE utf8mb3_bin,
  `strRequestNotes` longtext COLLATE utf8mb3_bin,
  `strRoleUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  `strState` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSubmenuType` varchar(1) COLLATE utf8mb3_bin DEFAULT NULL,
  `strTelephone` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strTelephone2` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUserName` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUserTitle` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUserStrUuid` (`strUuid`),
  UNIQUE KEY `xuTblUserIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblUserIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  KEY `xTblUserStrRoleUuid` (`strRoleUuid`),
  KEY `xTblUserIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblUserToTblCurrencyViaIntCurrencyID` (`intCurrencyID`),
  KEY `fkTblUserToTblSSOImplementationViaIntSSOImplementationID` (`intSSOImplementationID`),
  KEY `fkTblUserToTblSkinViaIntSkinID` (`intSkinID`),
  KEY `fkTblUserToTblLocalizationViaIntLocalizationID` (`intLocalizationID`),
  KEY `fkTblUserToTblCountryViaIntCountryID` (`intCountryID`),
  CONSTRAINT `fkTblUserToTblCountryViaIntCountryID` FOREIGN KEY (`intCountryID`) REFERENCES `tblCountry` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserToTblCurrencyViaIntCurrencyID` FOREIGN KEY (`intCurrencyID`) REFERENCES `tblCurrency` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserToTblLocalizationViaIntLocalizationID` FOREIGN KEY (`intLocalizationID`) REFERENCES `tblLocalization` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserToTblSkinViaIntSkinID` FOREIGN KEY (`intSkinID`) REFERENCES `tblSkin` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserToTblSSOImplementationViaIntSSOImplementationID` FOREIGN KEY (`intSSOImplementationID`) REFERENCES `tblSSOImplementation` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUserAnalyticsPermission`;

CREATE TABLE `tblUserAnalyticsPermission` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmFirstAssignedDate` datetime DEFAULT NULL,
  `dtmLastUpdatedDate` datetime DEFAULT NULL,
  `intUserID` bigint NOT NULL,
  `strPermissionLevel` varchar(32) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUserAnalyticsPermissionIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblUserAnalyticsPermissionIntUserID` (`intUserID`),
  CONSTRAINT `fkTblUserAnalyticsPermissionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserAnalyticsPermissionToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUserApiConsumerPermission`;

CREATE TABLE `tblUserApiConsumerPermission` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intApiConsumerID` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  `strPermissionName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUserApiConsumerPermissionIntTenantIDIntApiConsum1151135752` (`intTenantID`,`intApiConsumerID`,`intUserID`),
  UNIQUE KEY `xuTblUserApiConsumerPermissionIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblUserApiConsumerPermissionIntTenantIDIntApiConsumerID` (`intTenantID`,`intApiConsumerID`),
  KEY `fkTblUserApiConsumerPermissionToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblUserApiConsumerPermissionToTblApiConsumerViaIntA1679822146` (`intApiConsumerID`),
  CONSTRAINT `fkTblUserApiConsumerPermissionToTblApiConsumerViaIntA1679822146` FOREIGN KEY (`intApiConsumerID`) REFERENCES `tblApiConsumer` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblUserApiConsumerPermissionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserApiConsumerPermissionToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUserCertification`;

CREATE TABLE `tblUserCertification` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `datValidFrom` datetime DEFAULT NULL,
  `datValidTo` datetime DEFAULT NULL,
  `dtmExpiryNotificationSent` datetime DEFAULT NULL,
  `intCertificationID` bigint DEFAULT NULL,
  `intFileContentsID` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUserCertificationIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblUserCertificationToTblCertificationViaIntCertificationID` (`intCertificationID`),
  KEY `fkTblUserCertificationToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblUserCertificationToTblFileContentsViaIntFileContentsID` (`intFileContentsID`),
  CONSTRAINT `fkTblUserCertificationToTblCertificationViaIntCertificationID` FOREIGN KEY (`intCertificationID`) REFERENCES `tblCertification` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserCertificationToTblFileContentsViaIntFileContentsID` FOREIGN KEY (`intFileContentsID`) REFERENCES `tblFileContents` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserCertificationToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserCertificationToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUserClockInOut`;

CREATE TABLE `tblUserClockInOut` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmClockInTime` datetime DEFAULT NULL,
  `dtmClockOutTime` datetime DEFAULT NULL,
  `intFacilityID` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUserClockInOutIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblUserClockInOutToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblUserClockInOutToTblAssetViaIntFacilityID` (`intFacilityID`),
  CONSTRAINT `fkTblUserClockInOutToTblAssetViaIntFacilityID` FOREIGN KEY (`intFacilityID`) REFERENCES `tblAsset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblUserClockInOutToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserClockInOutToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUserEpicFeatureNotice`;

CREATE TABLE `tblUserEpicFeatureNotice` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolDontShowAgain` tinyint DEFAULT NULL,
  `dtmDateViewed` datetime DEFAULT NULL,
  `intDashboardFeatureNoticeID` bigint DEFAULT NULL,
  `intEpicFeatureNoticeID` bigint DEFAULT NULL,
  `intNumberViews` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUserEpicFeatureNoticeIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblUserEpicFeatureNoticeToTblEpicFeatureNoticeViaInt749281880` (`intEpicFeatureNoticeID`),
  KEY `fkTblUserEpicFeatureNoticeToTblDashboardFeatureNoticeV108178802` (`intDashboardFeatureNoticeID`),
  KEY `fkTblUserEpicFeatureNoticeToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblUserEpicFeatureNoticeToTblDashboardFeatureNoticeV108178802` FOREIGN KEY (`intDashboardFeatureNoticeID`) REFERENCES `tblDashboardFeatureNotice` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserEpicFeatureNoticeToTblEpicFeatureNoticeViaInt749281880` FOREIGN KEY (`intEpicFeatureNoticeID`) REFERENCES `tblEpicFeatureNotice` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserEpicFeatureNoticeToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserEpicFeatureNoticeToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUserGroupDashboardPersona`;

CREATE TABLE `tblUserGroupDashboardPersona` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intDashboardPersonaID` bigint NOT NULL,
  `intUserGroupID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUserGroupDashboardPersonaIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblUserGroupDashboardPersonaIntTenantIDIntUserGroupI992125209` (`intTenantID`,`intUserGroupID`,`intDashboardPersonaID`),
  KEY `fkTblUserGroupDashboardPersonaToTblUserViaIntUserGroupID` (`intUserGroupID`),
  KEY `fkTblUserGroupDashboardPersonaToTblDashboardPersonaVia532792540` (`intDashboardPersonaID`),
  CONSTRAINT `fkTblUserGroupDashboardPersonaToTblDashboardPersonaVia532792540` FOREIGN KEY (`intDashboardPersonaID`) REFERENCES `tblDashboardPersona` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblUserGroupDashboardPersonaToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserGroupDashboardPersonaToTblUserViaIntUserGroupID` FOREIGN KEY (`intUserGroupID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUserMASourceStart`;

CREATE TABLE `tblUserMASourceStart` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolDontShowAgain` tinyint DEFAULT NULL,
  `dtmDateViewed` datetime DEFAULT NULL,
  `intNumberViews` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUserMASourceStartIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblUserMASourceStartIntUserID` (`intUserID`),
  CONSTRAINT `fkTblUserMASourceStartToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserMASourceStartToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUserMilestone`;

CREATE TABLE `tblUserMilestone` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolCompleted` tinyint NOT NULL,
  `bolIgnored` tinyint NOT NULL,
  `dtmCompleted` datetime DEFAULT NULL,
  `dtmIgnored` datetime DEFAULT NULL,
  `intMilestoneID` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUserMilestoneIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblUserMilestoneToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblUserMilestoneToTblMilestoneViaIntMilestoneID` (`intMilestoneID`),
  CONSTRAINT `fkTblUserMilestoneToTblMilestoneViaIntMilestoneID` FOREIGN KEY (`intMilestoneID`) REFERENCES `tblMilestone` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblUserMilestoneToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserMilestoneToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUserPermission`;

CREATE TABLE `tblUserPermission` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intPermissionID` bigint DEFAULT NULL,
  `intUserID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUserPermissionIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblUserPermissionToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblUserPermissionToTblPermissionViaIntPermissionID` (`intPermissionID`),
  CONSTRAINT `fkTblUserPermissionToTblPermissionViaIntPermissionID` FOREIGN KEY (`intPermissionID`) REFERENCES `tblPermission` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserPermissionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserPermissionToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUserPurchaseOrderStatusTransitionPermission`;

CREATE TABLE `tblUserPurchaseOrderStatusTransitionPermission` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intPermissionID` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUserPurchaseOrderStatusTransitionPermissionIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblUserPurchaseOrderStatusTransitionPermissionToTblP105693494` (`intPermissionID`),
  KEY `fkTblUserPurchaseOrderStatusTransitionPermissionToTbl1230136470` (`intUserID`),
  CONSTRAINT `fkTblUserPurchaseOrderStatusTransitionPermissionToTbl1230136470` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserPurchaseOrderStatusTransitionPermissionToTblP105693494` FOREIGN KEY (`intPermissionID`) REFERENCES `tblPurchaseOrderStatusTransitionPermission` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserPurchaseOrderStatusTransitionPermissionToTblT317160276` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUserReportsToUser`;

CREATE TABLE `tblUserReportsToUser` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmCreatedOnDate` datetime DEFAULT NULL,
  `intReportsToID` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUserReportsToUserIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblUserReportsToUserToTblUserViaIntReportsToID` (`intReportsToID`),
  KEY `fkTblUserReportsToUserToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblUserReportsToUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserReportsToUserToTblUserViaIntReportsToID` FOREIGN KEY (`intReportsToID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserReportsToUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUserRole`;

CREATE TABLE `tblUserRole` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intRoleID` bigint NOT NULL,
  `intUpdated` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  `strRoleUuid` varchar(36) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUserRoleIntTenantIDIntUserIDIntRoleID` (`intTenantID`,`intUserID`,`intRoleID`),
  UNIQUE KEY `xuTblUserRoleIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblUserRoleToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblUserRoleToTblRoleViaIntRoleIDAndIntTenantID` (`intTenantID`,`intRoleID`),
  CONSTRAINT `fkTblUserRoleToTblRoleViaIntRoleIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intRoleID`) REFERENCES `tblRole` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserRoleToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserRoleToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUserSetting`;

CREATE TABLE `tblUserSetting` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  `strName` varchar(200) COLLATE utf8mb3_bin NOT NULL,
  `strValue` varchar(1024) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUserSettingIntTenantIDIntUserIDStrName` (`intTenantID`,`intUserID`,`strName`),
  UNIQUE KEY `xuTblUserSettingIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblUserSettingToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblUserSettingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserSettingToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUserSystemProperty`;

CREATE TABLE `tblUserSystemProperty` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmLastUpdated` datetime NOT NULL,
  `intSystemID` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  `strPropertyName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPropertyValue` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUserSystemPropertyIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblUserSystemPropertyIntTenantIDIntUserIDIntSystemI1417226711` (`intTenantID`,`intUserID`,`intSystemID`,`strPropertyName`),
  KEY `xTblUserSystemPropertyIntTenantIDIntSystemIDStrPropertyName` (`intTenantID`,`intSystemID`,`strPropertyName`),
  KEY `fkTblUserSystemPropertyToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblUserSystemPropertyToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserSystemPropertyToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUserSystemPropertyLog`;

CREATE TABLE `tblUserSystemPropertyLog` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmUpdated` datetime NOT NULL,
  `intSystemID` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  `strPropertyName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPropertyValue` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUserSystemPropertyLogIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblUserSystemPropertyLogIntTenantIDIntUserIDIntSystem245006120` (`intTenantID`,`intUserID`,`intSystemID`,`strPropertyName`),
  KEY `xTblUserSystemPropertyLogIntTenantIDIntUserIDIntSystemID` (`intTenantID`,`intUserID`,`intSystemID`),
  KEY `fkTblUserSystemPropertyLogToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblUserSystemPropertyLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblUserSystemPropertyLogToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblV4Tenant`;

CREATE TABLE `tblV4Tenant` (
  `id` bigint NOT NULL,
  `bolIsUp` tinyint DEFAULT NULL,
  `bolMigratedToV5` tinyint DEFAULT NULL,
  `intStatus` bigint DEFAULT NULL,
  `strInstanceId` varchar(32) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPublicDnsName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strStateName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSubdomain` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblV4TenantStrSubdomain` (`strSubdomain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblV5DataToV5EventsConversionStatus`;

CREATE TABLE `tblV5DataToV5EventsConversionStatus` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmConversionCompleted` datetime DEFAULT NULL,
  `dtmRequestSent` datetime NOT NULL,
  `dtmStatusLastUpdated` datetime NOT NULL,
  `intRequestingUserID` bigint NOT NULL,
  `strRequestType` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strStatus` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblV5DataToV5EventsConversionStatusIntTenantIDStrUuid` (`intTenantID`,`strUuid`),
  KEY `xTblV5DataToV5EventsConversionStatusDtmRequestSent` (`dtmRequestSent`),
  KEY `xTblV5DataToV5EventsConversionStatusIntTenantID` (`intTenantID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblV6ApiApplicationUserMapping`;

CREATE TABLE `tblV6ApiApplicationUserMapping` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intUpdated` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  `strApiApplicationClientId` varchar(36) COLLATE utf8mb3_bin NOT NULL,
  `strApiApplicationUuid` varchar(36) COLLATE utf8mb3_bin NOT NULL,
  `strTenantUuid` varchar(36) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblV6ApiApplicationUserMappingStrApiApplicationUuidIntUserID` (`strApiApplicationUuid`,`intUserID`),
  UNIQUE KEY `xuTblV6ApiApplicationUserMappingIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblV6ApiApplicationUserMappingToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblV6ApiApplicationUserMappingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblV6ApiApplicationUserMappingToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblV6RolePermissionLookup`;

CREATE TABLE `tblV6RolePermissionLookup` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intRoleID` bigint DEFAULT NULL,
  `strPermission` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strRoleUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblV6RolePermissionLookupIntTenantIDId` (`intTenantID`,`id`),
  CONSTRAINT `fkTblV6RolePermissionLookupToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblV6TenantUserInactivityTimeout`;

CREATE TABLE `tblV6TenantUserInactivityTimeout` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSessionTimeoutSeconds` bigint NOT NULL,
  `intUpdated` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblV6TenantUserInactivityTimeoutIntTenantIDId` (`intTenantID`,`id`),
  CONSTRAINT `fkTblV6TenantUserInactivityTimeoutToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblV6TenantUserMgmtMigration`;

CREATE TABLE `tblV6TenantUserMgmtMigration` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateTriggered` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblV6TenantUserMgmtMigrationToTblTenantViaIntTenantID` (`intTenantID`),
  CONSTRAINT `fkTblV6TenantUserMgmtMigrationToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblV6UserDeletionTracking`;

CREATE TABLE `tblV6UserDeletionTracking` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDeletionDate` datetime DEFAULT NULL,
  `intUserID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblV6UserDeletionTrackingIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblV6UserDeletionTrackingToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblV6UserDeletionTrackingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblV6UserDeletionTrackingToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWarranty`;

CREATE TABLE `tblWarranty` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateAdded` datetime DEFAULT NULL,
  `dtmExpiryDate` datetime DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intMeterReadingUnitsID` bigint DEFAULT NULL,
  `intProvider` bigint DEFAULT NULL,
  `intWarrantyTypeID` bigint DEFAULT NULL,
  `intWarrantyUsageTermTypeID` bigint DEFAULT NULL,
  `strCertificateNumber` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL,
  `strDescription` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strMeterReadingValueLimit` varchar(200) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWarrantyIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblWarrantyStrUuid` (`strUuid`),
  KEY `fkTblWarrantyToTblBusinessViaIntProvider` (`intProvider`),
  KEY `fkTblWarrantyToTblAssetViaIntAssetID` (`intAssetID`),
  KEY `fkTblWarrantyToTblWarrantyTypeViaIntWarrantyTypeID` (`intWarrantyTypeID`),
  KEY `fkTblWarrantyToTblMeterReadingUnitViaIntMeterReadingUnitsID` (`intMeterReadingUnitsID`),
  KEY `fkTblWarrantyToTblWarrantyUsageTermTypeViaIntWarrantyU212019224` (`intWarrantyUsageTermTypeID`),
  CONSTRAINT `fkTblWarrantyToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblWarrantyToTblBusinessViaIntProvider` FOREIGN KEY (`intProvider`) REFERENCES `tblBusiness` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblWarrantyToTblMeterReadingUnitViaIntMeterReadingUnitsID` FOREIGN KEY (`intMeterReadingUnitsID`) REFERENCES `tblMeterReadingUnit` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWarrantyToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWarrantyToTblWarrantyTypeViaIntWarrantyTypeID` FOREIGN KEY (`intWarrantyTypeID`) REFERENCES `tblWarrantyType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWarrantyToTblWarrantyUsageTermTypeViaIntWarrantyU212019224` FOREIGN KEY (`intWarrantyUsageTermTypeID`) REFERENCES `tblWarrantyUsageTermType` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWarrantyType`;

CREATE TABLE `tblWarrantyType` (
  `id` bigint NOT NULL,
  `strName` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWarrantyUsageTermType`;

CREATE TABLE `tblWarrantyUsageTermType` (
  `id` bigint NOT NULL,
  `strName` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWork`;

CREATE TABLE `tblWork` (
  `id` bigint NOT NULL,
  `dtmReceivedFromClient` datetime NOT NULL,
  `dtmReturnedToClient` datetime DEFAULT NULL,
  `intClientApplyTimeMs` int DEFAULT NULL,
  `intClientPrepareTimeMs` int DEFAULT NULL,
  `intClientRequestID` int DEFAULT NULL,
  `intClientSessionID` bigint DEFAULT NULL,
  `intClientTotalMs` int DEFAULT NULL,
  `intClientWaitTimeMs` int DEFAULT NULL,
  `intDbRequestCount` int DEFAULT NULL,
  `intDbTimeMs` int DEFAULT NULL,
  `intServerBuildTimeMs` int DEFAULT NULL,
  `intServerPrepareTimeMs` int DEFAULT NULL,
  `intServerRenderTimeMs` int DEFAULT NULL,
  `intServerTotalTimeMs` int DEFAULT NULL,
  `strRequestInfo` varchar(1024) COLLATE utf8mb3_bin DEFAULT NULL,
  `strWSAction` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strWSId` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strWSTarget` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strWSTargetName` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xTblWorkIntClientSessionIDIntClientRequestID` (`intClientSessionID`,`intClientRequestID`),
  CONSTRAINT `fkTblWorkToTblClientSessionViaIntClientSessionID` FOREIGN KEY (`intClientSessionID`) REFERENCES `tblClientSession` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkflow`;

CREATE TABLE `tblWorkflow` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolActive` tinyint NOT NULL,
  `bolSystem` tinyint DEFAULT NULL,
  `dtmDateCreated` datetime NOT NULL,
  `dtmTbeLastTriggerDate` datetime DEFAULT NULL,
  `intCreatedByUserID` bigint NOT NULL,
  `intDeResourceID` bigint DEFAULT NULL,
  `intTbeEveryXxxSeconds` bigint DEFAULT NULL,
  `intWorkflowTriggerTypeID` bigint DEFAULT NULL,
  `strDeExtraInfo` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkflowIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblWorkflowToTblResourceViaIntDeResourceID` (`intDeResourceID`),
  KEY `fkTblWorkflowToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`),
  KEY `fkTblWorkflowToTblWorkflowTriggerTypeViaIntWorkflowTr1445185211` (`intWorkflowTriggerTypeID`),
  CONSTRAINT `fkTblWorkflowToTblResourceViaIntDeResourceID` FOREIGN KEY (`intDeResourceID`) REFERENCES `tblResource` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkflowToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkflowToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkflowToTblWorkflowTriggerTypeViaIntWorkflowTr1445185211` FOREIGN KEY (`intWorkflowTriggerTypeID`) REFERENCES `tblWorkflowTriggerType` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkflowActivity`;

CREATE TABLE `tblWorkflowActivity` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateCreated` datetime NOT NULL,
  `intCreatedByUserID` bigint NOT NULL,
  `intIntegrationActionID` bigint DEFAULT NULL,
  `intIntegrationID` bigint DEFAULT NULL,
  `intIntegrationTemplateID` bigint DEFAULT NULL,
  `intOrder` bigint DEFAULT NULL,
  `intParentWorkflowActivityID` bigint DEFAULT NULL,
  `intParentWorkflowID` bigint DEFAULT NULL,
  `intWorkflowActivityTypeGroupID` bigint DEFAULT NULL,
  `intWorkflowActivityTypeID` bigint DEFAULT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strRole` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkflowActivityIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblWorkflowActivityToTblWorkflowViaIntParentWorkflowID` (`intParentWorkflowID`),
  KEY `fkTblWorkflowActivityToTblWorkflowActivityTypeGroupVi1999155658` (`intWorkflowActivityTypeGroupID`),
  KEY `fkTblWorkflowActivityToTblWorkflowActivityViaIntParentWo5804382` (`intParentWorkflowActivityID`),
  KEY `fkTblWorkflowActivityToTblIntegrationTemplateViaIntIn1470688790` (`intIntegrationTemplateID`),
  KEY `fkTblWorkflowActivityToTblIntegrationActionViaIntInte1606361302` (`intIntegrationActionID`),
  KEY `fkTblWorkflowActivityToTblIntegrationViaIntIntegrationID` (`intIntegrationID`),
  KEY `fkTblWorkflowActivityToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`),
  KEY `fkTblWorkflowActivityToTblWorkflowActivityTypeViaIntWo128754936` (`intWorkflowActivityTypeID`),
  CONSTRAINT `fkTblWorkflowActivityToTblIntegrationActionViaIntInte1606361302` FOREIGN KEY (`intIntegrationActionID`) REFERENCES `tblIntegrationAction` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkflowActivityToTblIntegrationTemplateViaIntIn1470688790` FOREIGN KEY (`intIntegrationTemplateID`) REFERENCES `tblIntegrationTemplate` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkflowActivityToTblIntegrationViaIntIntegrationID` FOREIGN KEY (`intIntegrationID`) REFERENCES `tblIntegration` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkflowActivityToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkflowActivityToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkflowActivityToTblWorkflowActivityTypeGroupVi1999155658` FOREIGN KEY (`intWorkflowActivityTypeGroupID`) REFERENCES `tblWorkflowActivityTypeGroup` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkflowActivityToTblWorkflowActivityTypeViaIntWo128754936` FOREIGN KEY (`intWorkflowActivityTypeID`) REFERENCES `tblWorkflowActivityType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkflowActivityToTblWorkflowActivityViaIntParentWo5804382` FOREIGN KEY (`intParentWorkflowActivityID`) REFERENCES `tblWorkflowActivity` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkflowActivityToTblWorkflowViaIntParentWorkflowID` FOREIGN KEY (`intParentWorkflowID`) REFERENCES `tblWorkflow` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkflowActivityType`;

CREATE TABLE `tblWorkflowActivityType` (
  `id` bigint NOT NULL,
  `intWorkflowActivityTypeGroupID` bigint NOT NULL,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkflowActivityTypeStrName` (`strName`),
  KEY `fkTblWorkflowActivityTypeToTblWorkflowActivityTypeGrou224890084` (`intWorkflowActivityTypeGroupID`),
  CONSTRAINT `fkTblWorkflowActivityTypeToTblWorkflowActivityTypeGrou224890084` FOREIGN KEY (`intWorkflowActivityTypeGroupID`) REFERENCES `tblWorkflowActivityTypeGroup` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkflowActivityTypeGroup`;

CREATE TABLE `tblWorkflowActivityTypeGroup` (
  `id` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkflowActivityTypeGroupStrName` (`strName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkflowComment`;

CREATE TABLE `tblWorkflowComment` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateCreated` datetime NOT NULL,
  `intCommentedByUser` bigint NOT NULL,
  `intPkPoLogId` bigint DEFAULT NULL,
  `intPkPurchaseOrderId` bigint DEFAULT NULL,
  `strComment` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkflowCommentIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblWorkflowCommentIntTenantIDIdIntPkPoLogId` (`intTenantID`,`id`,`intPkPoLogId`),
  KEY `fkTblWorkflowCommentToTblPurchaseOrderViaIntPkPurchaseOrderId` (`intPkPurchaseOrderId`),
  KEY `fkTblWorkflowCommentToTblPurchaseOrderLogViaIntPkPoLogId` (`intPkPoLogId`),
  KEY `fkTblWorkflowCommentToTblUserViaIntCommentedByUser` (`intCommentedByUser`),
  CONSTRAINT `fkTblWorkflowCommentToTblPurchaseOrderLogViaIntPkPoLogId` FOREIGN KEY (`intPkPoLogId`) REFERENCES `tblPurchaseOrderLog` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkflowCommentToTblPurchaseOrderViaIntPkPurchaseOrderId` FOREIGN KEY (`intPkPurchaseOrderId`) REFERENCES `tblPurchaseOrder` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkflowCommentToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkflowCommentToTblUserViaIntCommentedByUser` FOREIGN KEY (`intCommentedByUser`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkflowExecution`;

CREATE TABLE `tblWorkflowExecution` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolSuccess` tinyint NOT NULL,
  `dtmEndTime` datetime NOT NULL,
  `dtmStartTime` datetime NOT NULL,
  `intWorkflowID` bigint NOT NULL,
  `strLog` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkflowExecutionIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblWorkflowExecutionToTblWorkflowViaIntWorkflowID` (`intWorkflowID`),
  CONSTRAINT `fkTblWorkflowExecutionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkflowExecutionToTblWorkflowViaIntWorkflowID` FOREIGN KEY (`intWorkflowID`) REFERENCES `tblWorkflow` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=COMPRESSED;

DROP TABLE IF EXISTS `tblWorkflowTriggerType`;

CREATE TABLE `tblWorkflowTriggerType` (
  `id` bigint NOT NULL,
  `intWorkflowTriggerTypeGroupID` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkflowTriggerTypeStrName` (`strName`),
  KEY `fkTblWorkflowTriggerTypeToTblWorkflowTriggerTypeGroupV956444445` (`intWorkflowTriggerTypeGroupID`),
  CONSTRAINT `fkTblWorkflowTriggerTypeToTblWorkflowTriggerTypeGroupV956444445` FOREIGN KEY (`intWorkflowTriggerTypeGroupID`) REFERENCES `tblWorkflowTriggerTypeGroup` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkflowTriggerTypeGroup`;

CREATE TABLE `tblWorkflowTriggerTypeGroup` (
  `id` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkflowTriggerTypeGroupStrName` (`strName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkOrder`;

CREATE TABLE `tblWorkOrder` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolLocked` tinyint NOT NULL,
  `bolRequiresSignature` tinyint DEFAULT NULL,
  `datForDate` datetime DEFAULT NULL,
  `dblAssetProductionTime` double DEFAULT NULL,
  `dblSuggestedTime` double DEFAULT NULL,
  `dblTimeEstimatedHours` double DEFAULT NULL,
  `dblTimeSpentHours` double DEFAULT NULL,
  `dblTotalMaintHoursOffline` double DEFAULT NULL,
  `dblTotalMaintHoursOnline` double DEFAULT NULL,
  `dtmDateCompleted` datetime DEFAULT NULL,
  `dtmDateCreated` datetime DEFAULT NULL,
  `dtmDateLastModified` datetime DEFAULT NULL,
  `dtmDateSigned` datetime DEFAULT NULL,
  `dtmSuggestedCompletionDate` datetime DEFAULT NULL,
  `dtmSuggestedStartDate` datetime DEFAULT NULL,
  `intAccountID` bigint DEFAULT NULL,
  `intChargeDepartmentID` bigint DEFAULT NULL,
  `intCompletedByUserID` bigint DEFAULT NULL,
  `intDWOENotificationsSent` bigint DEFAULT NULL,
  `intLastModifiedByUserID` bigint DEFAULT NULL,
  `intMaintenanceTypeID` bigint DEFAULT NULL,
  `intOriginWorkOrderTaskID` bigint DEFAULT NULL,
  `intPriorityID` bigint DEFAULT NULL,
  `intProjectID` bigint DEFAULT NULL,
  `intRCAActionID` bigint DEFAULT NULL,
  `intRCACauseID` bigint DEFAULT NULL,
  `intRCAProblemID` bigint DEFAULT NULL,
  `intRequestedByUserID` bigint DEFAULT NULL,
  `intScheduledMaintenanceID` bigint DEFAULT NULL,
  `intSignedByUserID` bigint DEFAULT NULL,
  `intSiteID` bigint NOT NULL,
  `intUpdated` bigint NOT NULL,
  `intWorkOrderStatusGroup` bigint DEFAULT NULL,
  `intWorkOrderStatusID` bigint DEFAULT NULL,
  `strAdminNotes` longtext COLLATE utf8mb3_bin,
  `strAssetIds` longtext COLLATE utf8mb3_bin,
  `strAssets` longtext COLLATE utf8mb3_bin,
  `strAssignedUserIds` longtext COLLATE utf8mb3_bin,
  `strAssignedUsers` longtext COLLATE utf8mb3_bin,
  `strCode` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  `strCompletedByUserIds` longtext COLLATE utf8mb3_bin,
  `strCompletedByUsers` longtext COLLATE utf8mb3_bin,
  `strCompletionNotes` longtext COLLATE utf8mb3_bin,
  `strCustomerIds` longtext COLLATE utf8mb3_bin,
  `strCustomers` longtext COLLATE utf8mb3_bin,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strEmailUserGuest` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  `strNameUserGuest` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  `strPhoneUserGuest` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  `strProblem` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  `strRootCause` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSolution` varchar(500) COLLATE utf8mb3_bin DEFAULT NULL,
  `strSysCustomColumnValues` longtext COLLATE utf8mb3_bin,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  `strVendorIds` longtext COLLATE utf8mb3_bin,
  `strVendors` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkOrderIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblWorkOrderIntTenantIDStrUuid` (`intTenantID`,`strUuid`),
  KEY `xTblWorkOrderIntTenantIDIntScheduledMaintenanceID` (`intTenantID`,`intScheduledMaintenanceID`),
  KEY `xTblWorkOrderIntWorkOrderStatusIDIntTenantIDIntSiteID` (`intWorkOrderStatusID`,`intTenantID`,`intSiteID`),
  KEY `xTblWorkOrderIntTenantIDIntWorkOrderStatusIDDtmDateCompleted` (`intTenantID`,`intWorkOrderStatusID`,`dtmDateCompleted`),
  KEY `xTblWorkOrderIntTenantIDStrCode` (`intTenantID`,`strCode`),
  KEY `xTblWorkOrderIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `xTblWorkOrderIntWorkOrderStatusGroupIntTenantIDIntSiteID` (`intWorkOrderStatusGroup`,`intTenantID`,`intSiteID`),
  KEY `fkTblWorkOrderToTblAccountViaIntAccountID` (`intAccountID`),
  KEY `fkTblWorkOrderToTblRCAActionViaIntRCAActionID` (`intRCAActionID`),
  KEY `fkTblWorkOrderToTblScheduledMaintenanceViaIntSchedule1469603623` (`intScheduledMaintenanceID`),
  KEY `fkTblWorkOrderToTblUserViaIntSignedByUserID` (`intSignedByUserID`),
  KEY `fkTblWorkOrderToTblWorkOrderTaskViaIntOriginWorkOrderT751519152` (`intTenantID`,`intOriginWorkOrderTaskID`),
  KEY `fkTblWorkOrderToTblAssetViaIntSiteID` (`intSiteID`),
  KEY `fkTblWorkOrderToTblMaintenanceTypeViaIntMaintenanceTyp828088054` (`intTenantID`,`intMaintenanceTypeID`),
  KEY `fkTblWorkOrderToTblProjectViaIntProjectID` (`intProjectID`),
  KEY `fkTblWorkOrderToTblUserViaIntCompletedByUserID` (`intCompletedByUserID`),
  KEY `fkTblWorkOrderToTblRCACauseViaIntRCACauseID` (`intRCACauseID`),
  KEY `fkTblWorkOrderToTblUserViaIntRequestedByUserID` (`intRequestedByUserID`),
  KEY `fkTblWorkOrderToTblRCAProblemViaIntRCAProblemID` (`intRCAProblemID`),
  KEY `fkTblWorkOrderToTblChargeDepartmentViaIntChargeDepartmentID` (`intChargeDepartmentID`),
  KEY `fkTblWorkOrderToTblPriorityViaIntPriorityIDAndIntTenantID` (`intTenantID`,`intPriorityID`),
  KEY `fkTblWorkOrderToTblUserViaIntLastModifiedByUserID` (`intLastModifiedByUserID`),
  CONSTRAINT `fkTblWorkOrderToTblAccountViaIntAccountID` FOREIGN KEY (`intAccountID`) REFERENCES `tblAccount` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderToTblAssetViaIntSiteID` FOREIGN KEY (`intSiteID`) REFERENCES `tblAsset` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderToTblChargeDepartmentViaIntChargeDepartmentID` FOREIGN KEY (`intChargeDepartmentID`) REFERENCES `tblChargeDepartment` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderToTblMaintenanceTypeViaIntMaintenanceTyp828088054` FOREIGN KEY (`intTenantID`, `intMaintenanceTypeID`) REFERENCES `tblMaintenanceType` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderToTblPriorityViaIntPriorityIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intPriorityID`) REFERENCES `tblPriority` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderToTblProjectViaIntProjectID` FOREIGN KEY (`intProjectID`) REFERENCES `tblProject` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderToTblRCAActionViaIntRCAActionID` FOREIGN KEY (`intRCAActionID`) REFERENCES `tblRCAAction` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderToTblRCACauseViaIntRCACauseID` FOREIGN KEY (`intRCACauseID`) REFERENCES `tblRCACause` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderToTblRCAProblemViaIntRCAProblemID` FOREIGN KEY (`intRCAProblemID`) REFERENCES `tblRCAProblem` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderToTblScheduledMaintenanceViaIntSchedule1469603623` FOREIGN KEY (`intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblWorkOrderToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderToTblUserViaIntCompletedByUserID` FOREIGN KEY (`intCompletedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderToTblUserViaIntLastModifiedByUserID` FOREIGN KEY (`intLastModifiedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderToTblUserViaIntRequestedByUserID` FOREIGN KEY (`intRequestedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderToTblUserViaIntSignedByUserID` FOREIGN KEY (`intSignedByUserID`) REFERENCES `tblUser` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblWorkOrderToTblWorkOrderStatusViaIntWorkOrderStat1525344310` FOREIGN KEY (`intTenantID`, `intWorkOrderStatusID`) REFERENCES `tblWorkOrderStatus` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderToTblWorkOrderTaskViaIntOriginWorkOrderT751519152` FOREIGN KEY (`intTenantID`, `intOriginWorkOrderTaskID`) REFERENCES `tblWorkOrderTask` (`intTenantID`, `id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkOrderAsset`;

CREATE TABLE `tblWorkOrderAsset` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `intWorkOrderID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkOrderAssetIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblWorkOrderAssetIntTenantIDIntAssetIDIntWorkOrderID` (`intTenantID`,`intAssetID`,`intWorkOrderID`),
  UNIQUE KEY `xuTblWorkOrderAssetIntTenantIDIntWorkOrderIDIntAssetID` (`intTenantID`,`intWorkOrderID`,`intAssetID`),
  KEY `xTblWorkOrderAssetIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  CONSTRAINT `fkTblWorkOrderAssetToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderAssetToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderAssetToTblWorkOrderViaIntWorkOrderIDAnd2120539310` FOREIGN KEY (`intTenantID`, `intWorkOrderID`) REFERENCES `tblWorkOrder` (`intTenantID`, `id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkOrderBusiness`;

CREATE TABLE `tblWorkOrderBusiness` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolPrimary` tinyint DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intBusinessGroupID` bigint DEFAULT NULL,
  `intBusinessID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `intWorkOrderID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkOrderBusinessIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblWorkOrderBusinessIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblWorkOrderBusinessToTblWorkOrderViaIntWorkOrderIDA680860950` (`intTenantID`,`intWorkOrderID`),
  KEY `fkTblWorkOrderBusinessToTblBusinessGroupViaIntBusines1791499734` (`intTenantID`,`intBusinessGroupID`),
  KEY `fkTblWorkOrderBusinessToTblAssetViaIntAssetIDAndIntTenantID` (`intTenantID`,`intAssetID`),
  KEY `fkTblWorkOrderBusinessToTblBusinessViaIntBusinessIDAnd866584152` (`intTenantID`,`intBusinessID`),
  CONSTRAINT `fkTblWorkOrderBusinessToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblWorkOrderBusinessToTblBusinessGroupViaIntBusines1791499734` FOREIGN KEY (`intTenantID`, `intBusinessGroupID`) REFERENCES `tblBusinessGroup` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderBusinessToTblBusinessViaIntBusinessIDAnd866584152` FOREIGN KEY (`intTenantID`, `intBusinessID`) REFERENCES `tblBusiness` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblWorkOrderBusinessToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderBusinessToTblWorkOrderViaIntWorkOrderIDA680860950` FOREIGN KEY (`intTenantID`, `intWorkOrderID`) REFERENCES `tblWorkOrder` (`intTenantID`, `id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkOrderLog`;

CREATE TABLE `tblWorkOrderLog` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dblHoursTaken` double DEFAULT NULL,
  `dblInventoryCost` double DEFAULT NULL,
  `dblPricePerUnit` double DEFAULT NULL,
  `dtmLogDate` datetime DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intCostTypeID` bigint DEFAULT NULL,
  `intCurrencyID` bigint DEFAULT NULL,
  `intLogTypeID` bigint DEFAULT NULL,
  `intMaintenanceTypeID` bigint DEFAULT NULL,
  `intStockID` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  `intWorkOrderID` bigint DEFAULT NULL,
  `qtyQuantityUsed` double DEFAULT NULL,
  `strCompletionNotes` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkOrderLogIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblWorkOrderLogIntTenantIDDtmLogDate` (`intTenantID`,`dtmLogDate`),
  KEY `xTblWorkOrderLogIntTenantIDDblInventoryCost` (`intTenantID`,`dblInventoryCost`),
  KEY `fkTblWorkOrderLogToTblMaintenanceTypeViaIntMaintenanceTypeID` (`intMaintenanceTypeID`),
  KEY `fkTblWorkOrderLogToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblWorkOrderLogToTblWorkOrderViaIntWorkOrderID` (`intWorkOrderID`),
  KEY `fkTblWorkOrderLogToTblStockViaIntStockID` (`intStockID`),
  KEY `fkTblWorkOrderLogToTblAssetViaIntAssetID` (`intAssetID`),
  KEY `fkTblWorkOrderLogToTblCurrencyViaIntCurrencyID` (`intCurrencyID`),
  KEY `fkTblWorkOrderLogToTblLogTypeViaIntLogTypeID` (`intLogTypeID`),
  KEY `fkTblWorkOrderLogToTblLogCostTypeViaIntCostTypeID` (`intCostTypeID`),
  CONSTRAINT `fkTblWorkOrderLogToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderLogToTblCurrencyViaIntCurrencyID` FOREIGN KEY (`intCurrencyID`) REFERENCES `tblCurrency` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderLogToTblLogCostTypeViaIntCostTypeID` FOREIGN KEY (`intCostTypeID`) REFERENCES `tblLogCostType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderLogToTblLogTypeViaIntLogTypeID` FOREIGN KEY (`intLogTypeID`) REFERENCES `tblLogType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderLogToTblMaintenanceTypeViaIntMaintenanceTypeID` FOREIGN KEY (`intMaintenanceTypeID`) REFERENCES `tblMaintenanceType` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderLogToTblStockViaIntStockID` FOREIGN KEY (`intStockID`) REFERENCES `tblStock` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblWorkOrderLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderLogToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderLogToTblWorkOrderViaIntWorkOrderID` FOREIGN KEY (`intWorkOrderID`) REFERENCES `tblWorkOrder` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkOrderPart`;

CREATE TABLE `tblWorkOrderPart` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intPartID` bigint DEFAULT NULL,
  `intStockID` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `intWorkOrderID` bigint NOT NULL,
  `qtyActualQuantityUsed` double DEFAULT NULL,
  `qtySuggestedQuantity` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkOrderPartIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblWorkOrderPartIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `fkTblWorkOrderPartToTblAssetViaIntAssetIDAndIntTenantID` (`intTenantID`,`intAssetID`),
  KEY `fkTblWorkOrderPartToTblStockViaIntStockIDAndIntTenantID` (`intTenantID`,`intStockID`),
  KEY `fkTblWorkOrderPartToTblWorkOrderViaIntWorkOrderIDAndIntTenantID` (`intTenantID`,`intWorkOrderID`),
  KEY `fkTblWorkOrderPartToTblAssetViaIntPartIDAndIntTenantID` (`intTenantID`,`intPartID`),
  CONSTRAINT `fkTblWorkOrderPartToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblWorkOrderPartToTblAssetViaIntPartIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intPartID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblWorkOrderPartToTblStockViaIntStockIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intStockID`) REFERENCES `tblStock` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblWorkOrderPartToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderPartToTblWorkOrderViaIntWorkOrderIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intWorkOrderID`) REFERENCES `tblWorkOrder` (`intTenantID`, `id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkOrderStatus`;

CREATE TABLE `tblWorkOrderStatus` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSysCode` bigint DEFAULT NULL,
  `intControlID` bigint NOT NULL,
  `intUpdated` bigint NOT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkOrderStatusIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblWorkOrderStatusIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`),
  KEY `xTblWorkOrderStatusIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  CONSTRAINT `fkTblWorkOrderStatusToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkOrderStatusTransition`;

CREATE TABLE `tblWorkOrderStatusTransition` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDate` datetime NOT NULL,
  `intFromWorkOrderStatusID` bigint DEFAULT NULL,
  `intToWorkOrderStatusID` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  `intWorkOrderID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkOrderStatusTransitionIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblWorkOrderStatusTransitionToTblWorkOrderStatusVia1218096616` (`intFromWorkOrderStatusID`),
  KEY `fkTblWorkOrderStatusTransitionToTblWorkOrderStatusVia1530727113` (`intToWorkOrderStatusID`),
  KEY `fkTblWorkOrderStatusTransitionToTblWorkOrderViaIntWorkOrderID` (`intWorkOrderID`),
  KEY `fkTblWorkOrderStatusTransitionToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblWorkOrderStatusTransitionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderStatusTransitionToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderStatusTransitionToTblWorkOrderStatusVia1218096616` FOREIGN KEY (`intFromWorkOrderStatusID`) REFERENCES `tblWorkOrderStatus` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderStatusTransitionToTblWorkOrderStatusVia1530727113` FOREIGN KEY (`intToWorkOrderStatusID`) REFERENCES `tblWorkOrderStatus` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderStatusTransitionToTblWorkOrderViaIntWorkOrderID` FOREIGN KEY (`intWorkOrderID`) REFERENCES `tblWorkOrder` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkOrderTask`;

CREATE TABLE `tblWorkOrderTask` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolHasWorkOrderInfo` tinyint DEFAULT NULL,
  `dblTimeEstimatedHours` double DEFAULT NULL,
  `dblTimeSpentHours` double DEFAULT NULL,
  `dtmDateCompleted` datetime DEFAULT NULL,
  `dtmStartDate` datetime DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  `intAssignedToUserID` bigint DEFAULT NULL,
  `intCompletedByUserID` bigint DEFAULT NULL,
  `intMeterReadingUnitID` bigint DEFAULT NULL,
  `intOrder` bigint DEFAULT NULL,
  `intParentWorkOrderTaskID` bigint DEFAULT NULL,
  `intTaskGroupControlID` bigint DEFAULT NULL,
  `intTaskResultValueID` bigint DEFAULT NULL,
  `intTaskType` bigint DEFAULT NULL,
  `intUpdated` bigint NOT NULL,
  `intWorkOrderID` bigint DEFAULT NULL,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strResult` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL,
  `strTaskNotesCompletion` longtext COLLATE utf8mb3_bin,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkOrderTaskIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblWorkOrderTaskStrUuid` (`strUuid`),
  KEY `xTblWorkOrderTaskIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`),
  KEY `xTblWorkOrderTaskIntWorkOrderIDIntAssignedToUserIDIntTenantID` (`intWorkOrderID`,`intAssignedToUserID`,`intTenantID`),
  KEY `xTblWorkOrderTaskDtmStartDate` (`dtmStartDate`),
  KEY `fkTblWorkOrderTaskToTblTaskResultValueViaIntTaskResultValueID` (`intTaskResultValueID`),
  KEY `fkTblWorkOrderTaskToTblMeterReadingUnitViaIntMeterRea1040397185` (`intTenantID`,`intMeterReadingUnitID`),
  KEY `fkTblWorkOrderTaskToTblWorkOrderViaIntWorkOrderIDAndIntTenantID` (`intTenantID`,`intWorkOrderID`),
  KEY `fkTblWorkOrderTaskToTblAssetViaIntAssetIDAndIntTenantID` (`intTenantID`,`intAssetID`),
  KEY `fkTblWorkOrderTaskToTblTaskGroupViaIntTaskGroupControlID` (`intTaskGroupControlID`),
  KEY `fkTblWorkOrderTaskToTblWorkOrderTaskViaIntParentWorkOr530918535` (`intTenantID`,`intParentWorkOrderTaskID`),
  CONSTRAINT `fkTblWorkOrderTaskToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intAssetID`) REFERENCES `tblAsset` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblWorkOrderTaskToTblMeterReadingUnitViaIntMeterRea1040397185` FOREIGN KEY (`intTenantID`, `intMeterReadingUnitID`) REFERENCES `tblMeterReadingUnit` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderTaskToTblTaskGroupViaIntTaskGroupControlID` FOREIGN KEY (`intTaskGroupControlID`) REFERENCES `tblTaskGroup` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblWorkOrderTaskToTblTaskResultValueViaIntTaskResultValueID` FOREIGN KEY (`intTaskResultValueID`) REFERENCES `tblTaskResultValue` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fkTblWorkOrderTaskToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderTaskToTblWorkOrderTaskViaIntParentWorkOr530918535` FOREIGN KEY (`intTenantID`, `intParentWorkOrderTaskID`) REFERENCES `tblWorkOrderTask` (`intTenantID`, `id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblWorkOrderTaskToTblWorkOrderViaIntWorkOrderIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intWorkOrderID`) REFERENCES `tblWorkOrder` (`intTenantID`, `id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkOrderTaskAdditionalProperties`;

CREATE TABLE `tblWorkOrderTaskAdditionalProperties` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolIsCompletable` tinyint NOT NULL,
  `intWorkOrderTaskID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkOrderTaskAdditionalPropertiesIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblWorkOrderTaskAdditionalPropertiesIntWorkOrderTas1480622187` (`intWorkOrderTaskID`,`intTenantID`),
  CONSTRAINT `fkTblWorkOrderTaskAdditionalPropertiesToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderTaskAdditionalPropertiesToTblWorkOrderTa906842214` FOREIGN KEY (`intWorkOrderTaskID`) REFERENCES `tblWorkOrderTask` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkOrderTaskFile`;

CREATE TABLE `tblWorkOrderTaskFile` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intFileID` bigint NOT NULL,
  `intOrder` bigint NOT NULL,
  `intWorkOrderTaskID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkOrderTaskFileIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblWorkOrderTaskFileToTblFileViaIntFileIDAndIntTenantID` (`intTenantID`,`intFileID`),
  KEY `fkTblWorkOrderTaskFileToTblWorkOrderTaskViaIntWorkOrd1293168971` (`intTenantID`,`intWorkOrderTaskID`),
  CONSTRAINT `fkTblWorkOrderTaskFileToTblFileViaIntFileIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intFileID`) REFERENCES `tblFile` (`intTenantID`, `id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderTaskFileToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderTaskFileToTblWorkOrderTaskViaIntWorkOrd1293168971` FOREIGN KEY (`intTenantID`, `intWorkOrderTaskID`) REFERENCES `tblWorkOrderTask` (`intTenantID`, `id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkOrderTaskUser`;

CREATE TABLE `tblWorkOrderTaskUser` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intPriority` int NOT NULL,
  `intUserID` bigint NOT NULL,
  `intWorkOrderTaskID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkOrderTaskUserIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblWorkOrderTaskUserIntWorkOrderTaskIDIntUserIDIntTenantID` (`intWorkOrderTaskID`,`intUserID`,`intTenantID`),
  UNIQUE KEY `xuTblWorkOrderTaskUserIntWorkOrderTaskIDIntUserID` (`intWorkOrderTaskID`,`intUserID`),
  KEY `fkTblWorkOrderTaskUserToTblUserViaIntUserID` (`intUserID`),
  CONSTRAINT `fkTblWorkOrderTaskUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderTaskUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fkTblWorkOrderTaskUserToTblWorkOrderTaskViaIntWorkOrderTaskID` FOREIGN KEY (`intWorkOrderTaskID`) REFERENCES `tblWorkOrderTask` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkOrderUser`;

CREATE TABLE `tblWorkOrderUser` (
  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolCanUpdateOrClose` tinyint DEFAULT NULL,
  `bolNotifyOnAssignment` tinyint DEFAULT NULL,
  `bolNotifyOnCompletion` tinyint DEFAULT NULL,
  `bolNotifyOnOnlineOffline` tinyint DEFAULT NULL,
  `bolNotifyOnStatusChange` tinyint DEFAULT NULL,
  `bolNotifyOnTaskCompleted` tinyint DEFAULT NULL,
  `bolPrimaryTechnician` tinyint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  `intWorkOrderID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkOrderUserIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblWorkOrderUserToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblWorkOrderUserToTblWorkOrderViaIntWorkOrderIDAndIntTenantID` (`intTenantID`,`intWorkOrderID`),
  CONSTRAINT `fkTblWorkOrderUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fkTblWorkOrderUserToTblWorkOrderViaIntWorkOrderIDAndIntTenantID` FOREIGN KEY (`intTenantID`, `intWorkOrderID`) REFERENCES `tblWorkOrder` (`intTenantID`, `id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblYeMo`;

CREATE TABLE `tblYeMo` (
  `id` bigint NOT NULL,
  `Date` datetime NOT NULL,
  `month` bigint NOT NULL,
  `monthName` varchar(12) COLLATE utf8mb3_bin NOT NULL,
  `year` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `TokenEntry`;

CREATE TABLE `TokenEntry` (
  `processorName` varchar(255) NOT NULL,
  `segment` int NOT NULL,
  `token` blob,
  `tokenType` varchar(255) DEFAULT NULL,
  `timestamp` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`processorName`,`segment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `vworkorder`;
/*!50001 DROP VIEW IF EXISTS `vworkorder`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vworkorder` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolLocked`,
 1 AS `bolRequiresSignature`,
 1 AS `datForDate`,
 1 AS `dblAssetProductionTime`,
 1 AS `dblSuggestedTime`,
 1 AS `dblTimeEstimatedHours`,
 1 AS `dblTimeSpentHours`,
 1 AS `dblTotalMaintHoursOffline`,
 1 AS `dblTotalMaintHoursOnline`,
 1 AS `dtmDateCompleted`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDateLastModified`,
 1 AS `dtmDateSigned`,
 1 AS `dtmSuggestedCompletionDate`,
 1 AS `dtmSuggestedStartDate`,
 1 AS `intAccountID`,
 1 AS `intChargeDepartmentID`,
 1 AS `intCompletedByUserID`,
 1 AS `intDWOENotificationsSent`,
 1 AS `intLastModifiedByUserID`,
 1 AS `intMaintenanceTypeID`,
 1 AS `intOriginWorkOrderTaskID`,
 1 AS `intPriorityID`,
 1 AS `intProjectID`,
 1 AS `intRCAActionID`,
 1 AS `intRCACauseID`,
 1 AS `intRCAProblemID`,
 1 AS `intRequestedByUserID`,
 1 AS `intScheduledMaintenanceID`,
 1 AS `intSignedByUserID`,
 1 AS `intSiteID`,
 1 AS `intUpdated`,
 1 AS `intWorkOrderStatusGroup`,
 1 AS `intWorkOrderStatusID`,
 1 AS `strAdminNotes`,
 1 AS `strAssetIds`,
 1 AS `strAssets`,
 1 AS `strAssignedUserIds`,
 1 AS `strAssignedUsers`,
 1 AS `strCode`,
 1 AS `strCompletedByUserIds`,
 1 AS `strCompletedByUsers`,
 1 AS `strCompletionNotes`,
 1 AS `strCustomerIds`,
 1 AS `strCustomers`,
 1 AS `strDescription`,
 1 AS `strEmailUserGuest`,
 1 AS `strNameUserGuest`,
 1 AS `strPhoneUserGuest`,
 1 AS `strProblem`,
 1 AS `strRootCause`,
 1 AS `strSolution`,
 1 AS `strSysCustomColumnValues`,
 1 AS `strUuid`,
 1 AS `strVendorIds`,
 1 AS `strVendors`,
 1 AS `intControlID`,
 1 AS `intTenantIDFromWorkOrderStatus`*/;
SET character_set_client = @saved_cs_client;
/*!50003 DROP PROCEDURE IF EXISTS `delete_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`usrAdmin`@`%` PROCEDURE `delete_data`(     IN inputTenantId bigint )
BEGIN      DECLARE done INT DEFAULT 0;     DECLARE v_tableName varchar(200);     DECLARE v_isBatchDelete INT;     DECLARE info TEXT;     DECLARE db_cursor CURSOR FOR SELECT strTableName, isBatchDeleteApplicable FROM tblTenantDeleteTableNames;     DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;      OPEN db_cursor;     read_loop: LOOP  	    FETCH db_cursor INTO v_tableName, v_isBatchDelete;  	    call isTenantDeleteExecutionValid(@isValid);          IF done OR !@isValid THEN             LEAVE read_loop;         END IF;    		call delete_table_data(inputTenantId, v_tableName, v_isBatchDelete);      END LOOP;     CLOSE db_cursor; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_table_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`usrAdmin`@`%` PROCEDURE `delete_table_data`( IN inputTenantId bigint, IN inputTable varchar(500), IN isBatchDelete int )
proc_Exit: BEGIN  	DECLARE batch_size INT DEFAULT 1000;     DECLARE isDeletionPaused INT;     DECLARE selectCountQuery VARCHAR(1000);     DECLARE row_count INT DEFAULT 1;     DECLARE isPresent INT DEFAULT 0;      SELECT FIND_IN_SET(inputTable, 'tblActivityLog,tblApiConsumer,tblApiConsumerUsage,tblApiUsage,tblAsset,tblAssetActivityLog,tblAssetBusiness,tblAssetCategory,tblAssetCategoryBarcodeFormatType,tblAssetCategoryResolved,tblAssetClassification,tblAssetClassificationLog,tblAssetConsumingReference,tblAssetDepletionTracking,tblAssetEvent,tblAssetEventType,tblAssetEventTypeAsset,tblAssetOfflineTracker,tblAssetProperty,tblAssetPropertyDomainElement,tblAssetPropertyValue,tblAssetPurchaseTracking,tblAssetResolved,tblAssetSelection,tblAssetUser,tblAuditLog,tblAuditLogArchive,tblAuthorization,tblBillingTerm,tblBOMGroup,tblBOMGroupPart,tblBranding,tblBusiness,tblBusinessContact,tblBusinessGroup,tblBusinessRole,tblCalendarEvent,tblCategorySetting,tblCertification,tblChargeDepartment,tblClientSession,tblCounter,tblCreditCard,tblCrmMetrics,tblCustomField,tblCustomFieldValue,tblCustomQuery,tblCycleCount,tblDashboardPersona,tblDashboardWidgetPosition,tblDashboardWidgetPositionFilter,tblDashboardWidgetPositionParameter,tblDatabaseExport,tblDdColumn,tblDdCustomTableRow,tblDdTable,tblDistribution,tblDistributionPaymentMethod,tblDistributionPricingTier,tblDistributionRecurringType,tblDistributionUnitPricingRule,tblEmailAttachment,tblEmailMessage,tblEvent,tblFile,tblFileContents,tblFirewall,tblFirewallLog,tblFirewallRule,tblGHGCalcAsset,tblGroupPermissions,tblGuestActions,tblGuestMrFormField,tblIntegration,tblIntegrationAction,tblIntegrationActionLog,tblIntegrationConfigurableProperty,tblIntegrationParameter,tblInventoryTransaction,tblKpiResult,tblLastMeterReading,tblLineItem,tblLocalizationPermission,tblLogAlert,tblLogMonitoring,tblLogSavedSearch,tblLogSavedSearchUser,tblLogUser,tblLookupTableSync,tblMaintenanceType,tblMASourceCounter,tblMASourceListing,tblMASourceSeller,tblMASourceWarranty,tblMessage,tblMeterReading,tblMeterReadingUnit,tblMiscCost,tblMiscCostType,tblMove,tblMoveAsset,tblMoveBack,tblMoveBackAsset,tblMoveSiteManager,tblMoveStatus,tblOrder,tblOrderRefund,tblOrderSystemProperty,tblPartner,tblPartsSelection,tblPaymentProfile,tblPerRecordValue,tblPriority,tblProductTimeTracking,tblProject,tblProjectUser,tblPurchaseOrder,tblPurchaseOrderAdditionalCost,tblPurchaseOrderAdditionalCostType,tblPurchaseOrderLineItem,tblPurchaseOrderLineItemRfq,tblPurchaseOrderLog,tblPurchaseOrderStatus,tblPurchaseOrderStatusTransition,tblPurchaseOrderStatusTransitionPermission,tblPurchaseOrderUser,tblQuote,tblRCAAction,tblRCACause,tblRCAGrouping,tblRCAGroupingAction,tblRCAGroupingCause,tblRCAProblem,tblReasonToSetAssetOffline,tblReasonToSetAssetOnline,tblReceipt,tblReceiptLineItem,tblReceiptStatus,tblReceiptStatusTransition,tblReconciliationControl,tblRegionUser,tblRegionUserGroup,tblRemoteEntityIdMapping,tblReportPreset,tblReportPresetParameter,tblReportsToResolved,tblResource,tblRFQ,tblRFQAsset,tblRFQLineItem,tblRFQQueue,tblRFQStatus,tblRFQStatusTransition,tblRole,tblRolePermission,tblSalesAccountTracking,tblScheduledMaintenance,tblScheduledMaintenanceActivityLog,tblScheduledMaintenanceAsset,tblScheduledMaintenanceBusiness,tblScheduledMaintenanceNesting,tblScheduledMaintenancePart,tblScheduledMaintenanceUser,tblScheduledReport,tblScheduledReportUser,tblScheduledTask,tblScheduledTaskFile,tblScheduleTrigger,tblServerSetting,tblShippingType,tblSiteAvailability,tblSiteSetting,tblSiteStock,tblSiteUser,tblSiteUserGroup,tblSmtpProvider,tblStock,tblStockAdjustmentItem,tblStockCycleCount,tblStockHistory,tblStockPurchaseItem,tblStockTxType,tblSystemMessageUser,tblTask,tblTaskFile,tblTaskGroup,tblTaskGroupAssetCategory,tblTaskResultConfiguration,tblTaskResultValue,tblTemplate,tblTemplateCategory,tblTestingBlack,tblTestingRedC,tblTestingWhiteC,tblTestingYellow,tblTestTable,tblUicProfile,tblUsageLog,tblV5DataToV5EventsConversionStatus,tblV6ApiApplicationUserMapping,tblV6RolePermissionLookup,tblV6TenantUserInactivityTimeout,tblV6TenantUserMgmtMigration,tblV6UserDeletionTracking,tblWarranty,tblWorkflow,tblWorkflowActivity,tblWorkflowComment,tblWorkflowExecution,tblWorkOrder,tblWorkOrderAsset,tblWorkOrderBusiness,tblWorkOrderLog,tblWorkOrderPart,tblWorkOrderStatus,tblWorkOrderStatusTransition,tblWorkOrderTask,tblWorkOrderTaskAdditionalProperties,tblWorkOrderTaskFile,tblWorkOrderTaskUser,tblWorkOrderUser')         into @isPresent;      IF @isPresent != 0 THEN          SET @beforeState = 'Before';         SET @afterState = 'After';         SET SESSION foreign_key_checks=OFF;         SET SESSION innodb_lock_wait_timeout = 1073741824;         SET @tableName = inputTable;          call isTenantDeleteExecutionValid(@isValid);          IF @isValid THEN  	        SET @insert1 = concat('INSERT INTO tblTenantPurgeRecordCount(intTenantID, strTableName, strState,intRecords,dtmCreated) '); 	        SET @select1 = concat('SELECT "', inputTenantId, '","', inputTable,  '","' , @beforeState, '", COUNT(1), now()  FROM ', inputTable, ' WHERE intTenantID = ', inputTenantId); 	        SET @sql1 = concat(@insert1, @select1); 	        PREPARE beforeStmt FROM @sql1; 	        EXECUTE beforeStmt; 	        DEALLOCATE PREPARE beforeStmt;         END IF;          IF isBatchDelete THEN              WHILE (row_count > 0) DO                  call isTenantDeleteExecutionValid(@isValid);                  IF !@isValid THEN                     UPDATE tblTenantDeleteStatus set strComment = "Tenant Data Deletion Paused" where intTenantID = inputTenantId;                     LEAVE proc_Exit;                 ELSE                     SET @selectCountQuery = concat('SELECT count(1) INTO @row_count FROM ', inputTable , ' WHERE intTenantID =  ', inputTenantId);                     PREPARE stmt FROM @selectCountQuery;                     EXECUTE stmt;                     DEALLOCATE PREPARE stmt;                      SET row_count = @row_count;                     IF row_count > 0 THEN                         SET @deleteVar = concat(' DELETE FROM ', inputTable , ' WHERE intTenantID =  ', inputTenantId, ' LIMIT ' , batch_size);                         PREPARE deleteStmt FROM @deleteVar;                         EXECUTE deleteStmt;                         DEALLOCATE PREPARE deleteStmt;                         DO SLEEP(1);                     END IF;                 END IF;             END WHILE;          ELSE              call isTenantDeleteExecutionValid(@isValid);              IF !@isValid THEN                 UPDATE tblTenantDeleteStatus set strComment = "Tenant Data Deletion Paused" where intTenantID = inputTenantId;                 LEAVE proc_Exit;             ELSE                 SET @deleteVar = concat(' DELETE FROM ', inputTable , ' WHERE intTenantID =  ', inputTenantId);                 PREPARE deleteStmt FROM @deleteVar;                 EXECUTE deleteStmt;                 DEALLOCATE PREPARE deleteStmt;             END IF;          END IF;          call isTenantDeleteExecutionValid(@isValid);          IF @isValid THEN             SET @insert2 = concat('INSERT INTO tblTenantPurgeRecordCount(intTenantID, strTableName, strState,intRecords,dtmCreated) ');             SET @select2 = concat('SELECT "', inputTenantId, '","', inputTable,  '","' , @afterState, '", COUNT(1), now()  FROM ', inputTable, ' WHERE intTenantID = ', inputTenantId);             SET @sql2 = concat(@insert2, @select2);             PREPARE afterStmt FROM @sql2;             EXECUTE afterStmt;             DEALLOCATE PREPARE afterStmt;         END IF;      END IF; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `isTenantDeleteExecutionValid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`usrAdmin`@`%` PROCEDURE `isTenantDeleteExecutionValid`( OUT isValid INT)
BEGIN 	SELECT intIntValue INTO @isDeletePausedByUser FROM  tblBorgSetting where strName = 'Disable in-progress data deletion';  	SELECT (DAYOFWEEK(NOW()) BETWEEN 3 AND 7 AND HOUR(NOW()) >= 0 AND HOUR(NOW()) < 8)            OR DAYOFWEEK(NOW()) = 7 OR DAYOFWEEK(NOW()) = 1 OR (DAYOFWEEK(NOW()) = 2 AND HOUR(NOW()) < 8) into @isDeletionValidByTime;      SELECT @isDeletionValidByTime AND !@isDeletePausedByUser into isValid; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `optimize_tables_after_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`usrAdmin`@`%` PROCEDURE `optimize_tables_after_delete`(IN tableName varchar(500))
BEGIN  	if tableName = "ALL_TABLES" THEN  	    SET SESSION foreign_key_checks=OFF;  		OPTIMIZE TABLE  tblActivityLog ; 		OPTIMIZE TABLE  tblApiConsumer ; 		OPTIMIZE TABLE  tblApiConsumerUsage ; 		OPTIMIZE TABLE  tblApiUsage ; 		OPTIMIZE TABLE  tblAsset ; 		OPTIMIZE TABLE  tblAssetActivityLog ; 		OPTIMIZE TABLE  tblAssetBusiness ; 		OPTIMIZE TABLE  tblAssetCategory ; 		OPTIMIZE TABLE  tblAssetCategoryBarcodeFormatType ; 		OPTIMIZE TABLE  tblAssetCategoryResolved ; 		OPTIMIZE TABLE  tblAssetClassification ; 		OPTIMIZE TABLE  tblAssetClassificationLog ; 		OPTIMIZE TABLE  tblAssetConsumingReference ; 		OPTIMIZE TABLE  tblAssetDepletionTracking ; 		OPTIMIZE TABLE  tblAssetEvent ; 		OPTIMIZE TABLE  tblAssetEventType ; 		OPTIMIZE TABLE  tblAssetEventTypeAsset ; 		OPTIMIZE TABLE  tblAssetOfflineTracker ; 		OPTIMIZE TABLE  tblAssetProperty ; 		OPTIMIZE TABLE  tblAssetPropertyDomainElement ; 		OPTIMIZE TABLE  tblAssetPropertyValue ; 		OPTIMIZE TABLE  tblAssetPurchaseTracking ; 		OPTIMIZE TABLE  tblAssetResolved ; 		OPTIMIZE TABLE  tblAssetSelection ; 		OPTIMIZE TABLE  tblAssetUser ; 		OPTIMIZE TABLE  tblAuditLog ; 	    OPTIMIZE TABLE  tblAuditLogArchive ; 		OPTIMIZE TABLE  tblAuthorization ; 		OPTIMIZE TABLE  tblBillingTerm ; 		OPTIMIZE TABLE  tblBOMGroup ; 		OPTIMIZE TABLE  tblBOMGroupPart ; 		OPTIMIZE TABLE  tblBranding ; 		OPTIMIZE TABLE  tblBusiness ; 		OPTIMIZE TABLE  tblBusinessContact ; 		OPTIMIZE TABLE  tblBusinessGroup ; 		OPTIMIZE TABLE  tblBusinessRole ; 		OPTIMIZE TABLE  tblCalendarEvent ; 		OPTIMIZE TABLE  tblCategorySetting ; 		OPTIMIZE TABLE  tblCertification ; 		OPTIMIZE TABLE  tblChargeDepartment ; 		OPTIMIZE TABLE  tblClientSession ; 		OPTIMIZE TABLE  tblCounter ; 		OPTIMIZE TABLE  tblCreditCard ; 		OPTIMIZE TABLE  tblCrmMetrics ; 		OPTIMIZE TABLE  tblCustomField ; 		OPTIMIZE TABLE  tblCustomFieldValue ; 		OPTIMIZE TABLE  tblCustomQuery ; 		OPTIMIZE TABLE  tblCycleCount ; 		OPTIMIZE TABLE  tblDashboardPersona ; 		OPTIMIZE TABLE  tblDashboardWidgetPosition ; 		OPTIMIZE TABLE  tblDashboardWidgetPositionFilter ; 		OPTIMIZE TABLE  tblDashboardWidgetPositionParameter ; 		OPTIMIZE TABLE  tblDatabaseExport ; 		OPTIMIZE TABLE  tblDdColumn ; 		OPTIMIZE TABLE  tblDdCustomTableRow ; 		OPTIMIZE TABLE  tblDdTable ; 		OPTIMIZE TABLE  tblDistribution ; 		OPTIMIZE TABLE  tblDistributionPaymentMethod ; 		OPTIMIZE TABLE  tblDistributionPricingTier ; 		OPTIMIZE TABLE  tblDistributionRecurringType ; 		OPTIMIZE TABLE  tblDistributionUnitPricingRule ; 		OPTIMIZE TABLE  tblEmailAttachment ; 		OPTIMIZE TABLE  tblEmailMessage ; 		OPTIMIZE TABLE  tblEvent ; 		OPTIMIZE TABLE  tblFile ; 		OPTIMIZE TABLE  tblFileContents ; 		OPTIMIZE TABLE  tblFirewall ; 		OPTIMIZE TABLE  tblFirewallLog ; 		OPTIMIZE TABLE  tblFirewallRule ; 		OPTIMIZE TABLE  tblGHGCalcAsset ; 		OPTIMIZE TABLE  tblGroupPermissions ; 		OPTIMIZE TABLE  tblGuestActions ; 		OPTIMIZE TABLE  tblGuestMrFormField ; 		OPTIMIZE TABLE  tblIntegration ; 		OPTIMIZE TABLE  tblIntegrationAction ; 		OPTIMIZE TABLE  tblIntegrationActionLog ; 		OPTIMIZE TABLE  tblIntegrationConfigurableProperty ; 		OPTIMIZE TABLE  tblIntegrationParameter ; 		OPTIMIZE TABLE  tblInventoryTransaction ; 		OPTIMIZE TABLE  tblKpiResult ; 		OPTIMIZE TABLE  tblLastMeterReading ; 		OPTIMIZE TABLE  tblLineItem ; 		OPTIMIZE TABLE  tblLocalizationPermission ; 		OPTIMIZE TABLE  tblLogAlert ; 		OPTIMIZE TABLE  tblLogMonitoring ; 		OPTIMIZE TABLE  tblLogSavedSearch ; 		OPTIMIZE TABLE  tblLogSavedSearchUser ; 		OPTIMIZE TABLE  tblLogUser ; 		OPTIMIZE TABLE  tblLookupTableSync ; 		OPTIMIZE TABLE  tblMaintenanceType ; 		OPTIMIZE TABLE  tblMASourceCounter ; 		OPTIMIZE TABLE  tblMASourceListing ; 		OPTIMIZE TABLE  tblMASourceSeller ; 		OPTIMIZE TABLE  tblMASourceWarranty ; 		OPTIMIZE TABLE  tblMessage ; 		OPTIMIZE TABLE  tblMeterReading ; 		OPTIMIZE TABLE  tblMeterReadingUnit ; 		OPTIMIZE TABLE  tblMiscCost ; 		OPTIMIZE TABLE  tblMiscCostType ; 		OPTIMIZE TABLE  tblMove ; 		OPTIMIZE TABLE  tblMoveAsset ; 		OPTIMIZE TABLE  tblMoveBack ; 		OPTIMIZE TABLE  tblMoveBackAsset ; 		OPTIMIZE TABLE  tblMoveSiteManager ; 		OPTIMIZE TABLE  tblMoveStatus ; 		OPTIMIZE TABLE  tblOrder ; 		OPTIMIZE TABLE  tblOrderRefund ; 		OPTIMIZE TABLE  tblOrderSystemProperty ; 		OPTIMIZE TABLE  tblPartner ; 		OPTIMIZE TABLE  tblPartsSelection ; 		OPTIMIZE TABLE  tblPaymentProfile ; 		OPTIMIZE TABLE  tblPerRecordValue ; 		OPTIMIZE TABLE  tblPriority ; 		OPTIMIZE TABLE  tblProductTimeTracking ; 		OPTIMIZE TABLE  tblProject ; 		OPTIMIZE TABLE  tblProjectUser ; 		OPTIMIZE TABLE  tblPurchaseOrder ; 		OPTIMIZE TABLE  tblPurchaseOrderAdditionalCost ; 		OPTIMIZE TABLE  tblPurchaseOrderAdditionalCostType ; 		OPTIMIZE TABLE  tblPurchaseOrderLineItem ; 		OPTIMIZE TABLE  tblPurchaseOrderLineItemRfq ; 		OPTIMIZE TABLE  tblPurchaseOrderLog ; 		OPTIMIZE TABLE  tblPurchaseOrderStatus ; 		OPTIMIZE TABLE  tblPurchaseOrderStatusTransition ; 		OPTIMIZE TABLE  tblPurchaseOrderStatusTransitionPermission ; 		OPTIMIZE TABLE  tblPurchaseOrderUser ; 		OPTIMIZE TABLE  tblQuote ; 		OPTIMIZE TABLE  tblRCAAction ; 		OPTIMIZE TABLE  tblRCACause ; 		OPTIMIZE TABLE  tblRCAGrouping ; 		OPTIMIZE TABLE  tblRCAGroupingAction ; 		OPTIMIZE TABLE  tblRCAGroupingCause ; 		OPTIMIZE TABLE  tblRCAProblem ; 		OPTIMIZE TABLE  tblReasonToSetAssetOffline ; 		OPTIMIZE TABLE  tblReasonToSetAssetOnline ; 		OPTIMIZE TABLE  tblReceipt ; 		OPTIMIZE TABLE  tblReceiptLineItem ; 		OPTIMIZE TABLE  tblReceiptStatus ; 		OPTIMIZE TABLE  tblReceiptStatusTransition ; 		OPTIMIZE TABLE  tblReconciliationControl ; 		OPTIMIZE TABLE  tblRegionUser ; 		OPTIMIZE TABLE  tblRegionUserGroup ; 		OPTIMIZE TABLE  tblRemoteEntityIdMapping ; 		OPTIMIZE TABLE  tblReportPreset ; 		OPTIMIZE TABLE  tblReportPresetParameter ; 		OPTIMIZE TABLE  tblReportsToResolved ; 		OPTIMIZE TABLE  tblResource ; 		OPTIMIZE TABLE  tblRFQ ; 		OPTIMIZE TABLE  tblRFQAsset ; 		OPTIMIZE TABLE  tblRFQLineItem ; 		OPTIMIZE TABLE  tblRFQQueue ; 		OPTIMIZE TABLE  tblRFQStatus ; 		OPTIMIZE TABLE  tblRFQStatusTransition ; 		OPTIMIZE TABLE  tblRole ; 		OPTIMIZE TABLE  tblRolePermission ; 		OPTIMIZE TABLE  tblSalesAccountTracking ; 		OPTIMIZE TABLE  tblScheduledMaintenance ; 		OPTIMIZE TABLE  tblScheduledMaintenanceActivityLog ; 		OPTIMIZE TABLE  tblScheduledMaintenanceAsset ; 		OPTIMIZE TABLE  tblScheduledMaintenanceBusiness ; 		OPTIMIZE TABLE  tblScheduledMaintenanceNesting ; 		OPTIMIZE TABLE  tblScheduledMaintenancePart ; 		OPTIMIZE TABLE  tblScheduledMaintenanceUser ; 		OPTIMIZE TABLE  tblScheduledReport ; 		OPTIMIZE TABLE  tblScheduledReportUser ; 		OPTIMIZE TABLE  tblScheduledTask ; 		OPTIMIZE TABLE  tblScheduledTaskFile ; 		OPTIMIZE TABLE  tblScheduleTrigger ; 		OPTIMIZE TABLE  tblServerSetting ; 		OPTIMIZE TABLE  tblShippingType ; 		OPTIMIZE TABLE  tblSiteAvailability ; 		OPTIMIZE TABLE  tblSiteSetting ; 		OPTIMIZE TABLE  tblSiteStock ; 		OPTIMIZE TABLE  tblSiteUser ; 		OPTIMIZE TABLE  tblSiteUserGroup ; 		OPTIMIZE TABLE  tblSmtpProvider ; 		OPTIMIZE TABLE  tblStock ; 		OPTIMIZE TABLE  tblStockAdjustmentItem ; 		OPTIMIZE TABLE  tblStockCycleCount ; 		OPTIMIZE TABLE  tblStockHistory ; 		OPTIMIZE TABLE  tblStockPurchaseItem ; 		OPTIMIZE TABLE  tblStockTxType ; 		OPTIMIZE TABLE  tblSystemMessageUser ; 		OPTIMIZE TABLE  tblTask ; 		OPTIMIZE TABLE  tblTaskFile ; 		OPTIMIZE TABLE  tblTaskGroup ; 		OPTIMIZE TABLE  tblTaskGroupAssetCategory ; 		OPTIMIZE TABLE  tblTaskResultConfiguration ; 		OPTIMIZE TABLE  tblTaskResultValue ; 		OPTIMIZE TABLE  tblTemplate ; 		OPTIMIZE TABLE  tblTemplateCategory ; 		OPTIMIZE TABLE  tblTestingBlack ; 		OPTIMIZE TABLE  tblTestingRedC ; 		OPTIMIZE TABLE  tblTestingWhiteC ; 		OPTIMIZE TABLE  tblTestingYellow ; 		OPTIMIZE TABLE  tblTestTable ; 		OPTIMIZE TABLE  tblUicProfile ; 		OPTIMIZE TABLE  tblUsageLog ; 		OPTIMIZE TABLE  tblV5DataToV5EventsConversionStatus ; 		OPTIMIZE TABLE  tblV6ApiApplicationUserMapping ; 		OPTIMIZE TABLE  tblV6RolePermissionLookup ; 		OPTIMIZE TABLE  tblV6TenantUserInactivityTimeout ; 		OPTIMIZE TABLE  tblV6TenantUserMgmtMigration ; 		OPTIMIZE TABLE  tblV6UserDeletionTracking ; 		OPTIMIZE TABLE  tblWarranty ; 		OPTIMIZE TABLE  tblWorkflow ; 		OPTIMIZE TABLE  tblWorkflowActivity ; 		OPTIMIZE TABLE  tblWorkflowComment ; 		OPTIMIZE TABLE  tblWorkflowExecution ; 		OPTIMIZE TABLE  tblWorkOrder ; 		OPTIMIZE TABLE  tblWorkOrderAsset ; 		OPTIMIZE TABLE  tblWorkOrderBusiness ; 		OPTIMIZE TABLE  tblWorkOrderLog ; 		OPTIMIZE TABLE  tblWorkOrderPart ; 		OPTIMIZE TABLE  tblWorkOrderStatus ; 		OPTIMIZE TABLE  tblWorkOrderStatusTransition ; 		OPTIMIZE TABLE  tblWorkOrderTask ; 		OPTIMIZE TABLE  tblWorkOrderTaskAdditionalProperties ; 		OPTIMIZE TABLE  tblWorkOrderTaskFile ; 		OPTIMIZE TABLE  tblWorkOrderTaskUser ; 		OPTIMIZE TABLE  tblWorkOrderUser ;  	ELSE  		SET @table_list = CONCAT('''',REPLACE(REPLACE(tableName ,' ',''),',',QUOTE(',')),''''); 	    SET @table_stub = REPLACE(@table_list,',',''); 	    SET @array_count = LENGTH(@table_list) - LENGTH(@table_stub) + 1;  	    SET @x = 0; 	    WHILE @x < @array_count DO  	        SET @x = @x + 1; 	        SET @sql = CONCAT('SELECT ELT(',@x,',',@table_list,') INTO @tb'); 	        PREPARE s FROM @sql; 	    	EXECUTE s; 	    	DEALLOCATE PREPARE s;  	      	SELECT FIND_IN_SET(@tb, 'tblActivityLog,tblApiConsumer,tblApiConsumerUsage,tblApiUsage,tblAsset,tblAssetActivityLog,tblAssetBusiness,tblAssetCategory,tblAssetCategoryBarcodeFormatType,tblAssetCategoryResolved,tblAssetClassification,tblAssetClassificationLog,tblAssetConsumingReference,tblAssetDepletionTracking,tblAssetEvent,tblAssetEventType,tblAssetEventTypeAsset,tblAssetOfflineTracker,tblAssetProperty,tblAssetPropertyDomainElement,tblAssetPropertyValue,tblAssetPurchaseTracking,tblAssetResolved,tblAssetSelection,tblAssetUser,tblAuditLog,tblAuditLogArchive,tblAuthorization,tblBillingTerm,tblBOMGroup,tblBOMGroupPart,tblBranding,tblBusiness,tblBusinessContact,tblBusinessGroup,tblBusinessRole,tblCalendarEvent,tblCategorySetting,tblCertification,tblChargeDepartment,tblClientSession,tblCounter,tblCreditCard,tblCrmMetrics,tblCustomField,tblCustomFieldValue,tblCustomQuery,tblCycleCount,tblDashboardPersona,tblDashboardWidgetPosition,tblDashboardWidgetPositionFilter,tblDashboardWidgetPositionParameter,tblDatabaseExport,tblDdColumn,tblDdCustomTableRow,tblDdTable,tblDistribution,tblDistributionPaymentMethod,tblDistributionPricingTier,tblDistributionRecurringType,tblDistributionUnitPricingRule,tblEmailAttachment,tblEmailMessage,tblEvent,tblFile,tblFileContents,tblFirewall,tblFirewallLog,tblFirewallRule,tblGHGCalcAsset,tblGroupPermissions,tblGuestActions,tblGuestMrFormField,tblIntegration,tblIntegrationAction,tblIntegrationActionLog,tblIntegrationConfigurableProperty,tblIntegrationParameter,tblInventoryTransaction,tblKpiResult,tblLastMeterReading,tblLineItem,tblLocalizationPermission,tblLogAlert,tblLogMonitoring,tblLogSavedSearch,tblLogSavedSearchUser,tblLogUser,tblLookupTableSync,tblMaintenanceType,tblMASourceCounter,tblMASourceListing,tblMASourceSeller,tblMASourceWarranty,tblMessage,tblMeterReading,tblMeterReadingUnit,tblMiscCost,tblMiscCostType,tblMove,tblMoveAsset,tblMoveBack,tblMoveBackAsset,tblMoveSiteManager,tblMoveStatus,tblOrder,tblOrderRefund,tblOrderSystemProperty,tblPartner,tblPartsSelection,tblPaymentProfile,tblPerRecordValue,tblPriority,tblProductTimeTracking,tblProject,tblProjectUser,tblPurchaseOrder,tblPurchaseOrderAdditionalCost,tblPurchaseOrderAdditionalCostType,tblPurchaseOrderLineItem,tblPurchaseOrderLineItemRfq,tblPurchaseOrderLog,tblPurchaseOrderStatus,tblPurchaseOrderStatusTransition,tblPurchaseOrderStatusTransitionPermission,tblPurchaseOrderUser,tblQuote,tblRCAAction,tblRCACause,tblRCAGrouping,tblRCAGroupingAction,tblRCAGroupingCause,tblRCAProblem,tblReasonToSetAssetOffline,tblReasonToSetAssetOnline,tblReceipt,tblReceiptLineItem,tblReceiptStatus,tblReceiptStatusTransition,tblReconciliationControl,tblRegionUser,tblRegionUserGroup,tblRemoteEntityIdMapping,tblReportPreset,tblReportPresetParameter,tblReportsToResolved,tblResource,tblRFQ,tblRFQAsset,tblRFQLineItem,tblRFQQueue,tblRFQStatus,tblRFQStatusTransition,tblRole,tblRolePermission,tblSalesAccountTracking,tblScheduledMaintenance,tblScheduledMaintenanceActivityLog,tblScheduledMaintenanceAsset,tblScheduledMaintenanceBusiness,tblScheduledMaintenanceNesting,tblScheduledMaintenancePart,tblScheduledMaintenanceUser,tblScheduledReport,tblScheduledReportUser,tblScheduledTask,tblScheduledTaskFile,tblScheduleTrigger,tblServerSetting,tblShippingType,tblSiteAvailability,tblSiteSetting,tblSiteStock,tblSiteUser,tblSiteUserGroup,tblSmtpProvider,tblStock,tblStockAdjustmentItem,tblStockCycleCount,tblStockHistory,tblStockPurchaseItem,tblStockTxType,tblSystemMessageUser,tblTask,tblTaskFile,tblTaskGroup,tblTaskGroupAssetCategory,tblTaskResultConfiguration,tblTaskResultValue,tblTemplate,tblTemplateCategory,tblTestingBlack,tblTestingRedC,tblTestingWhiteC,tblTestingYellow,tblTestTable,tblUicProfile,tblUsageLog,tblV5DataToV5EventsConversionStatus,tblV6ApiApplicationUserMapping,tblV6RolePermissionLookup,tblV6TenantUserInactivityTimeout,tblV6TenantUserMgmtMigration,tblV6UserDeletionTracking,tblWarranty,tblWorkflow,tblWorkflowActivity,tblWorkflowComment,tblWorkflowExecution,tblWorkOrder,tblWorkOrderAsset,tblWorkOrderBusiness,tblWorkOrderLog,tblWorkOrderPart,tblWorkOrderStatus,tblWorkOrderStatusTransition,tblWorkOrderTask,tblWorkOrderTaskAdditionalProperties,tblWorkOrderTaskFile,tblWorkOrderTaskUser,tblWorkOrderUser') 	        	into @isPresent;  		    IF @isPresent != 0 THEN  				SET SESSION foreign_key_checks=OFF; 				SET @optimizeQuery = concat('Optimize table ', @tb); 			    PREPARE stmt FROM @optimizeQuery; 			    EXECUTE stmt; 			    DEALLOCATE PREPARE stmt;  			END IF; 	    END WHILE; 	END IF;  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50001 DROP VIEW IF EXISTS `vworkorder`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vworkorder` AS select `wo`.`id` AS `id`,`wo`.`intTenantID` AS `intTenantID`,`wo`.`bolLocked` AS `bolLocked`,`wo`.`bolRequiresSignature` AS `bolRequiresSignature`,`wo`.`datForDate` AS `datForDate`,`wo`.`dblAssetProductionTime` AS `dblAssetProductionTime`,`wo`.`dblSuggestedTime` AS `dblSuggestedTime`,`wo`.`dblTimeEstimatedHours` AS `dblTimeEstimatedHours`,`wo`.`dblTimeSpentHours` AS `dblTimeSpentHours`,`wo`.`dblTotalMaintHoursOffline` AS `dblTotalMaintHoursOffline`,`wo`.`dblTotalMaintHoursOnline` AS `dblTotalMaintHoursOnline`,`wo`.`dtmDateCompleted` AS `dtmDateCompleted`,`wo`.`dtmDateCreated` AS `dtmDateCreated`,`wo`.`dtmDateLastModified` AS `dtmDateLastModified`,`wo`.`dtmDateSigned` AS `dtmDateSigned`,`wo`.`dtmSuggestedCompletionDate` AS `dtmSuggestedCompletionDate`,`wo`.`dtmSuggestedStartDate` AS `dtmSuggestedStartDate`,`wo`.`intAccountID` AS `intAccountID`,`wo`.`intChargeDepartmentID` AS `intChargeDepartmentID`,`wo`.`intCompletedByUserID` AS `intCompletedByUserID`,`wo`.`intDWOENotificationsSent` AS `intDWOENotificationsSent`,`wo`.`intLastModifiedByUserID` AS `intLastModifiedByUserID`,`wo`.`intMaintenanceTypeID` AS `intMaintenanceTypeID`,`wo`.`intOriginWorkOrderTaskID` AS `intOriginWorkOrderTaskID`,`wo`.`intPriorityID` AS `intPriorityID`,`wo`.`intProjectID` AS `intProjectID`,`wo`.`intRCAActionID` AS `intRCAActionID`,`wo`.`intRCACauseID` AS `intRCACauseID`,`wo`.`intRCAProblemID` AS `intRCAProblemID`,`wo`.`intRequestedByUserID` AS `intRequestedByUserID`,`wo`.`intScheduledMaintenanceID` AS `intScheduledMaintenanceID`,`wo`.`intSignedByUserID` AS `intSignedByUserID`,`wo`.`intSiteID` AS `intSiteID`,`wo`.`intUpdated` AS `intUpdated`,`wo`.`intWorkOrderStatusGroup` AS `intWorkOrderStatusGroup`,`wo`.`intWorkOrderStatusID` AS `intWorkOrderStatusID`,`wo`.`strAdminNotes` AS `strAdminNotes`,`wo`.`strAssetIds` AS `strAssetIds`,`wo`.`strAssets` AS `strAssets`,`wo`.`strAssignedUserIds` AS `strAssignedUserIds`,`wo`.`strAssignedUsers` AS `strAssignedUsers`,`wo`.`strCode` AS `strCode`,`wo`.`strCompletedByUserIds` AS `strCompletedByUserIds`,`wo`.`strCompletedByUsers` AS `strCompletedByUsers`,`wo`.`strCompletionNotes` AS `strCompletionNotes`,`wo`.`strCustomerIds` AS `strCustomerIds`,`wo`.`strCustomers` AS `strCustomers`,`wo`.`strDescription` AS `strDescription`,`wo`.`strEmailUserGuest` AS `strEmailUserGuest`,`wo`.`strNameUserGuest` AS `strNameUserGuest`,`wo`.`strPhoneUserGuest` AS `strPhoneUserGuest`,`wo`.`strProblem` AS `strProblem`,`wo`.`strRootCause` AS `strRootCause`,`wo`.`strSolution` AS `strSolution`,`wo`.`strSysCustomColumnValues` AS `strSysCustomColumnValues`,`wo`.`strUuid` AS `strUuid`,`wo`.`strVendorIds` AS `strVendorIds`,`wo`.`strVendors` AS `strVendors`,`wos`.`intControlID` AS `intControlID`,`wos`.`intTenantID` AS `intTenantIDFromWorkOrderStatus` from (`tblworkorder` `wo` join `tblworkorderstatus` `wos`) where (`wo`.`intWorkOrderStatusID` = `wos`.`id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

