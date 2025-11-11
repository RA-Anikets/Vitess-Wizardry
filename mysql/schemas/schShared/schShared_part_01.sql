DROP TABLE IF EXISTS `JGROUPSPING`;
CREATE TABLE `JGROUPSPING` (

  `own_addr` varchar(200) NOT NULL,
  `cluster_name` varchar(200) NOT NULL,
  `ping_data` varbinary(5000) DEFAULT NULL,
  PRIMARY KEY (`own_addr`,`cluster_name`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (

  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
CREATE TABLE `QRTZ_CALENDARS` (

  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (

  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `QRTZ_LOCKS`;
CREATE TABLE `QRTZ_LOCKS` (

  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (

  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (

  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint NOT NULL,
  `CHECKIN_INTERVAL` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (

  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint NOT NULL,
  `REPEAT_INTERVAL` bigint NOT NULL,
  `TIMES_TRIGGERED` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `xTblAccountIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`)
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
  KEY `fkTblAccountAddressToTblAccountAddressTypeViaIntAccoun758240575` (`intAccountAddressTypeID`)
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
  KEY `fkTblAccountLogToTblRecurringTypeViaIntRecurringTypeId` (`intRecurringTypeId`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblAccountLogDiscountToTblPromotionalOfferViaIntPro1160027146` (`intPromotionAppliedID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblAccountLogOrderToTblOrderViaIntOrderID` (`intOrderID`)
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
  KEY `fkTblAccountNotesToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`)
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
  KEY `fkTblActivityLogToTblIntegrationActionViaIntIntegrationActionID` (`intIntegrationActionID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblApiConsumerToTblApiConsumerTypeViaIntApiConsumerTypeID` (`intApiConsumerTypeID`)
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
  KEY `fkTblApiConsumerUsageToTblApiConsumerViaIntApiConsumerID` (`intApiConsumerID`)
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
  UNIQUE KEY `xuTblApiUsageIntTenantIDIntDayIntMonthIntYearIntApiID1286679239` (`intTenantID`,`intDay`,`intMonth`,`intYear`,`intApiID`,`intAuthorizationTypeID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblAssetToTblCountryViaIntCountryID` (`intCountryID`)  
  
  
  
  
  
  
  
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
  KEY `fkTblAssetActivityLogToTblMoveBackViaIntMoveBackIDAndI730605486` (`intTenantID`,`intMoveBackID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblAssetBusinessToTblBusinessViaIntBusinessIDAndIntTenantID` (`intTenantID`,`intBusinessID`)  
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
  KEY `fkTblAssetCategoryToTblAssetCategoryViaIntParentIDAndI815481187` (`intTenantID`,`intParentID`)
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
  KEY `fkTblAssetCategoryBarcodeFormatTypeToTblAssetCategory1870575391` (`intAssetCategoryID`)
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
  KEY `fkTblAssetCategoryResolvedToTblAssetCategoryViaIntChi1687121893` (`intTenantID`,`intChildID`)
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
  KEY `fkTblAssetClassificationToTblAssetViaIntAssetID` (`intAssetID`)
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
  KEY `fkTblAssetClassificationLogToTblAssetViaIntSiteIDAndIntTenantID` (`intTenantID`,`intSiteID`)
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
  KEY `fkTblAssetConsumingReferenceToTblAssetViaIntConsumesA1292758054` (`intTenantID`,`intConsumesAssetID`)  
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
  KEY `fkTblAssetDepletionTrackingToTblWorkOrderPartViaIntWo1744765951` (`intWorkOrderPartID`)
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
  KEY `fkTblAssetEventToTblWorkOrderViaIntWorkOrderIDAndIntTenantID` (`intTenantID`,`intWorkOrderID`)  
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
  UNIQUE KEY `xuTblAssetEventTypeStrUuid` (`strUuid`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetEventTypeAsset`;
CREATE TABLE `tblAssetEventTypeAsset` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intAssetEventTypeID` bigint NOT NULL,
  `intAssetID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetEventTypeAssetIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblAssetEventTypeAssetToTblAssetEventTypeViaIntAsse1340966513` (`intTenantID`,`intAssetEventTypeID`),
  KEY `fkTblAssetEventTypeAssetToTblAssetViaIntAssetIDAndIntTenantID` (`intTenantID`,`intAssetID`)
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
  KEY `fkTblAssetOfflineTrackerToTblWorkOrderViaIntWorkOrderID` (`intWorkOrderID`)  
  
  
  
  
  
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
  KEY `fkTblAssetPropertyToTblMeterReadingUnitViaIntMeterRea2078634338` (`intTenantID`,`intMeterReadingUnitID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblAssetPropertyDomainElementToTblAssetPropertyViaIn510438062` (`intTenantID`,`intAssetPropertyID`)
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
  KEY `fkTblAssetPropertyValueToTblUserViaIntCreatedByApiUserID` (`intCreatedByApiUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblAssetPurchaseTrackingToTblBusinessViaIntBusinessID` (`intBusinessID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetResolved`;
CREATE TABLE `tblAssetResolved` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intAncestorID` bigint DEFAULT NULL,
  `intDescendantID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetResolvedIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblAssetResolvedToTblAssetViaIntDescendantIDAndIntTenantID` (`intTenantID`,`intDescendantID`),
  KEY `fkTblAssetResolvedToTblAssetViaIntAncestorIDAndIntTenantID` (`intTenantID`,`intAncestorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblAssetSelection`;
CREATE TABLE `tblAssetSelection` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateCreated` datetime NOT NULL,
  `intAssetId` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblAssetSelectionIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblAssetSelectionToTblAssetViaIntAssetIdAndIntTenantID` (`intTenantID`,`intAssetId`)
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
  KEY `fkTblAssetUserToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblAuditLogToTblUserViaIntUserID` (`intUserID`)
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
  UNIQUE KEY `xuTblAuditLogArchiveIntTenantIDId` (`intTenantID`,`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblAuthorizationToTblTenantViaIntTenantID` (`intTenantID`)
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
  KEY `fkTblBillingTaxesToTblCountryViaIntCountryID` (`intCountryID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblBillingTerm`;
CREATE TABLE `tblBillingTerm` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intUpdated` bigint NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblBillingTermIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblBillingTermIntTenantIDStrName` (`intTenantID`,`strName`),
  KEY `xTblBillingTermIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblBOMGroupToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`)
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
  KEY `fkTblBOMGroupPartToTblAssetViaIntAssetID` (`intAssetID`)
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
  KEY `fkTblBrandingToTblFileContentsViaIntFileContentsID` (`intFileContentsID`)
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
  KEY `fkTblBusinessToTblTemplateViaIntRFQTemplateID` (`intRFQTemplateID`)  
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
  KEY `fkTblBusinessContactToTblUserViaIntUserID` (`intUserID`)
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
  UNIQUE KEY `xuTblBusinessGroupIntTenantIDId` (`intTenantID`,`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblBusinessRoleToTblBusinessGroupViaIntBusinessGroupID` (`intBusinessGroupID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblBusinessTypeDefToTblBusinessTypeDefViaIntDefaultParentID` (`intDefaultParentID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblCalendarEventToTblScheduleTriggerViaIntScheduleTriggerID` (`intScheduleTriggerID`)
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
  KEY `fkTblCategorySettingToTblAssetCategoryViaIntCategoryID` (`intCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblCertification`;
CREATE TABLE `tblCertification` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblCertificationIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblCertificationIntTenantIDStrName` (`intTenantID`,`strName`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblChargeDepartmentToTblAssetViaIntFacilityIDAndIntTenantID` (`intTenantID`,`intFacilityID`)
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
  KEY `fkTblClientSessionToTblUserViaIntUserID` (`intUserID`)
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
  UNIQUE KEY `xuTblCounterIntTenantIDId` (`intTenantID`,`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblCreditCardToTblPaymentProfileViaIntPaymentProfileID` (`intPaymentProfileID`)
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
  KEY `fkTblCrmMetricsToTblTenantViaIntTenantID` (`intTenantID`)
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
  KEY `fkTblCrmMetricsTypeToTblCrmMetricsTypeFormatViaIntCrm1049697325` (`intCrmMetricsTypeFormatID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblCrmMetricsUserToTblUserViaIntUserID` (`intUserID`)
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
  KEY `fkTblCustomFieldToTblAssetCategoryViaIntAssetCategoryID` (`intAssetCategoryID`)
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
  KEY `xTblCustomFieldValueIntCustomFieldIDIntBaseTableIDIntTenantID` (`intCustomFieldID`,`intBaseTableID`,`intTenantID`)
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
  KEY `fkTblCustomQueryToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`)
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
  KEY `fkTblCycleCountToTblUserViaIntCreatedBy` (`intCreatedBy`)  
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
  KEY `fkTblDashboardToTblTenantViaIntOwnerTenantID` (`intOwnerTenantID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblDashboardDashboardPersona`;
CREATE TABLE `tblDashboardDashboardPersona` (

  `id` bigint NOT NULL,
  `intDashboardID` bigint NOT NULL,
  `intDashboardPersonaID` bigint NOT NULL,
  `intOwnerTenantID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblDashboardDashboardPersonaIntOwnerTenantIDIntDashb428518830` (`intOwnerTenantID`,`intDashboardID`,`intDashboardPersonaID`),
  KEY `fkTblDashboardDashboardPersonaToTblDashboardViaIntDashboardID` (`intDashboardID`),
  KEY `fkTblDashboardDashboardPersonaToTblDashboardPersonaVia328257604` (`intDashboardPersonaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblDashboardFeatureNoticeToTblTenantViaIntOwnerTenantID` (`intOwnerTenantID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblDashboardPersona`;
CREATE TABLE `tblDashboardPersona` (

  `id` bigint NOT NULL,
  `intTenantID` bigint DEFAULT NULL,
  `intSharedDashboardID` bigint DEFAULT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblDashboardPersonaToTblDashboardViaIntSharedDashboardID` (`intSharedDashboardID`),
  KEY `fkTblDashboardPersonaToTblTenantViaIntTenantID` (`intTenantID`)
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
  KEY `fkTblDashboardWidgetToTblDashboardWidgetCategoryViaInt694956624` (`intWidgetCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblDashboardWidgetDashboardPersonaToTblDashboardWid1798115596` (`intWidgetID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblDashboardWidgetParameterToTblTenantViaIntOwnerTenantID` (`intOwnerTenantID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblDashboardWidgetPositionToTblDashboardWidgetViaIntWidgetID` (`intWidgetID`)
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
  KEY `fkTblDashboardWidgetPositionFilterToTblDashboardWidge1437204759` (`intSubQueryID`)
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
  KEY `fkTblDashboardWidgetPositionParameterToTblDashboardWi1451014240` (`intDashboardWidgetParameterID`)
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
  KEY `fkTblDashboardWidgetQueryToTblTenantViaIntOwnerTenantID` (`intOwnerTenantID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblDatabaseExportToTblApplicationViaIntApplicationID` (`intApplicationID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblDdColumnToTblDdColumnTypeViaIntDdColumnTypeID` (`intDdColumnTypeID`)  
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblDdCustomTableRowToTblDdTableViaIntDdTableID` (`intDdTableID`)
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
  KEY `fkTblDdTableToTblTenantViaIntTenantID` (`intTenantID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblDistributionToTblDistributionBillingPlanViaIntDis844418560` (`intDistributionBillingPlanID`)
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
  KEY `fkTblDistributionPaymentMethodToTblPaymentMethodViaIn1784404493` (`intPaymentMethodID`)
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
  KEY `fkTblDistributionPricingTierToTblPricingTierViaIntPricingTierID` (`intPricingTierID`)
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
  KEY `fkTblDistributionRecurringTypeToTblRecurringTypeViaInt313665341` (`intRecurringTypeID`)
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
  KEY `fkTblDistributionUnitPricingRuleToTblDistributionPric1148256324` (`intDistributionPricingTierID`)
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
  KEY `fkTblEmailAddressToTblEmailAddressStatusViaIntLastEmai898905720` (`intLastEmailAddressStatusID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblEmailAddressSmtpEvent`;
CREATE TABLE `tblEmailAddressSmtpEvent` (

  `id` bigint NOT NULL,
  `intEmailAddressID` bigint NOT NULL,
  `intEmailAddressStatusID` bigint DEFAULT NULL,
  `intSmtpEventID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblEmailAddressSmtpEventIntEmailAddressIDIntSmtpEventID` (`intEmailAddressID`,`intSmtpEventID`),
  KEY `fkTblEmailAddressSmtpEventToTblEmailAddressStatusViaI1603196096` (`intEmailAddressStatusID`),
  KEY `fkTblEmailAddressSmtpEventToTblSmtpEventViaIntSmtpEventID` (`intSmtpEventID`)
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
  KEY `fkTblEmailAttachmentToTblEmailMessageViaIntEmailMessageID` (`intEmailMessageID`)
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
  KEY `fkTblEmailMessageToTblBusinessViaIntSenderBusinessID` (`intSenderBusinessID`)
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
  KEY `fkTblEpicFeatureNoticeToTblTenantViaIntOwnerTenantID` (`intOwnerTenantID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblEpicFeatureNoticePricingTier`;
CREATE TABLE `tblEpicFeatureNoticePricingTier` (

  `id` bigint NOT NULL,
  `intEpicFeatureNoticeID` bigint NOT NULL,
  `intPricingTierID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblEpicFeatureNoticePricingTierToTblEpicFeatureNoti1581744475` (`intEpicFeatureNoticeID`),
  KEY `fkTblEpicFeatureNoticePricingTierToTblPricingTierViaIn844431749` (`intPricingTierID`)
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
  KEY `fkTblEventToTblAssetViaIntSiteID` (`intSiteID`)
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
  KEY `fkTblFeatureToTblProductViaIntProductID` (`intProductID`)
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
  KEY `fkTblFeatureNoticeFilterToTblTenantTypeViaIntTenantTypeID` (`intTenantTypeID`)  
  
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
  KEY `fkTblFeaturePropertyToTblUserViaIntUpdatedByUserID` (`intUpdatedByUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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

