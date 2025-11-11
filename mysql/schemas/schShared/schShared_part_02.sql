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
  KEY `fkTblFileToTblScheduledMaintenanceViaIntScheduledMaintenanceID` (`intScheduledMaintenanceID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  UNIQUE KEY `xuTblFileContentsIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblFirewallToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblFirewallLogToTblApplicationViaIntApplicationID` (`intApplicationID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblFirewallRuleToTblApplicationViaIntApplicationID` (`intApplicationID`)
  
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
  KEY `fkTblGHGCalcAssetToTblGHGCalcFuelViaIntFuelID` (`intFuelID`)
  
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
  KEY `fkTblGHGCalcCarbonMarketToTblGHGCalcResourceViaIntResourceID` (`intResourceID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblGHGCalcFuelToTblGHGCalcResourceViaIntResourceID` (`intResourceID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblGHGCalcGWPToTblGHGCalcResourceViaIntResourceID` (`intResourceID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblGHGCalcLocationToTblGHGCalcResourceViaIntResourceID` (`intResourceID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblGHGCalcVehicleToTblGHGCalcVehicleViaIntParentVehicleID` (`intParentVehicleID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblGroupPermissions`;
CREATE TABLE `tblGroupPermissions` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intGroupID` bigint NOT NULL,
  `strPermissions` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblGroupPermissionsIntGroupIDIntTenantID` (`intGroupID`,`intTenantID`),
  UNIQUE KEY `xuTblGroupPermissionsIntTenantIDId` (`intTenantID`,`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblGuestActionsToTblClientSessionViaIntClientSessionID` (`intClientSessionID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblGuestMrFormFieldToTblDdColumnViaIntDdColumnID` (`intDdColumnID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblIdGen`;
CREATE TABLE `tblIdGen` (

  `tableName` varchar(64) NOT NULL,
  `nextValue` bigint NOT NULL,
  PRIMARY KEY (`tableName`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblIntegrationToTblIntegrationSystemViaIntIntegrationSystemID` (`intIntegrationSystemID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblIntegrationActionToTblIntegrationViaIntIntegrationID` (`intIntegrationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblIntegrationActionAdvancedEndpoint`;
CREATE TABLE `tblIntegrationActionAdvancedEndpoint` (

  `id` bigint NOT NULL,
  `intIntegrationSystemID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblIntegrationActionAdvancedEndpointToTblIntegration998018549` (`intIntegrationSystemID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblIntegrationActionLogToTblActivityLogViaIntActivityLogID` (`intActivityLogID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblIntegrationConfigurablePropertyToTblIntegrationV2128527156` (`intIntegrationID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblIntegrationParameterToTblIntegrationParameterTyp1436430319` (`intIntegrationParameterTypeID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblIntegrationTemplateToTblIntegrationSystemViaIntIn994776264` (`intIntegrationSystemID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  UNIQUE KEY `xuTblInventoryTransactionIntTenantIDId` (`intTenantID`,`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblKpiResultToTblDashboardWidgetPositionViaIntWidget210242764` (`intTenantID`,`intWidgetPositionID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblLastMeterReadingToTblMeterReadingUnitViaIntMeter1710873131` (`intTenantID`,`intMeterReadingUnitsID`)
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
  KEY `fkTblLineItemToTblLineItemViaIntLineItemParentID` (`intLineItemParentID`)
  
  
  
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
  KEY `fkTblLocalizationToTblLocalizationViaIntParentLocalizationID` (`intParentLocalizationID`)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblLocalizationArchiveToTblLanguageViaIntLanguageID` (`intLanguageID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblLocalizationPermission`;
CREATE TABLE `tblLocalizationPermission` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intLocalizationID` bigint DEFAULT NULL,
  `intUserID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblLocalizationPermissionIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblLocalizationPermissionToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblLocalizationPermissionToTblLocalizationViaIntLoca946020240` (`intLocalizationID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblLogAlertToTblLogMonitoringViaIntLogMonitoringID` (`intLogMonitoringID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblLogMonitoringToTblLogSavedSearchViaIntSavedSearchID` (`intSavedSearchID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblLogSavedSearchToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblLogSavedSearchUserToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  UNIQUE KEY `xuTblLogUserStrUuid` (`strUuid`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblLookupTableSync`;
CREATE TABLE `tblLookupTableSync` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmLastUpdated` datetime NOT NULL,
  `intApiConsumerID` bigint NOT NULL,
  `intLookupRevision` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xTblLookupTableSyncIntTenantID` (`intTenantID`),
  KEY `fkTblLookupTableSyncToTblApiConsumerViaIntApiConsumerID` (`intApiConsumerID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `xTblMaintenanceTypeIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblMASourceCounterToTblMASourceListingViaIntMASourceListingID` (`intMASourceListingID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblMASourceListingToTblUserViaIntPostedByID` (`intPostedByID`)
  
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
  KEY `xTblMASourceSellerStrSellerName` (`strSellerName`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblMASourceWarrantyToTblMASourceListingViaIntMASourc617103367` (`intMASourceListingID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblMessageToTblUserViaIntSenderID` (`intSenderID`)
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
  KEY `fkTblMeterReadingToTblUserViaIntSubmittedByUserID` (`intSubmittedByUserID`)
  
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
  KEY `xTblMeterReadingUnitIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblMiscCostToTblWorkOrderViaIntWorkOrderID` (`intWorkOrderID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMiscCostType`;
CREATE TABLE `tblMiscCostType` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intUpdated` bigint NOT NULL,
  `strName` varchar(32) COLLATE utf8mb3_bin NOT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblMiscCostTypeIntTenantIDId` (`intTenantID`,`id`),
  KEY `xTblMiscCostTypeIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblMoveToTblUserViaIntRejectedByID` (`intRejectedByID`)
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
  KEY `fkTblMoveAssetToTblReasonToSetAssetOfflineViaIntReason357256957` (`intTenantID`,`intReasonOfflineID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblMoveBackToTblUserViaIntRequestedByID` (`intRequestedByID`)
  
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
  KEY `fkTblMoveBackAssetToTblMoveBackViaIntMoveBackIDAndIntTenantID` (`intTenantID`,`intMoveBackID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblMoveSiteManager`;
CREATE TABLE `tblMoveSiteManager` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSiteID` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblMoveSiteManagerIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblMoveSiteManagerIntTenantIDIntSiteIDIntUserID` (`intTenantID`,`intSiteID`,`intUserID`),
  KEY `fkTblMoveSiteManagerToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  UNIQUE KEY `xuTblMoveStatusIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  UNIQUE KEY `xuTblNetworkSettingsIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblOrderToTblQuoteViaIntQuoteID` (`intQuoteID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblOrderRefundToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblOrderSystemPropertyToTblOrderViaIntOrderID` (`intOrderID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblPartnerToTblAffiliateProgramViaIntAffiliateProgramID` (`intAffiliateProgramID`)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPartsSelection`;
CREATE TABLE `tblPartsSelection` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateCreated` datetime NOT NULL,
  `intPartId` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPartsSelectionIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblPartsSelectionToTblAssetViaIntPartIdAndIntTenantID` (`intTenantID`,`intPartId`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPassword`;
CREATE TABLE `tblPassword` (

  `id` bigint NOT NULL,
  `intPasswordStorageVersionID` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  `strData` varchar(200) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPasswordIntUserID` (`intUserID`),
  KEY `fkTblPasswordToTblPasswordStorageVersionViaIntPasswordS37970469` (`intPasswordStorageVersionID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblPaymentProfileToTblAccountAddressViaIntAccountAddressID` (`intAccountAddressID`)
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
  KEY `fkTblPermissionToTblApplicationViaIntApplicationID` (`intApplicationID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `xTblPerRecordValueIntTableResourceIDIntRecordIDStrName` (`intTableResourceID`,`intRecordID`,`strName`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPlanFeature`;
CREATE TABLE `tblPlanFeature` (

  `id` bigint NOT NULL,
  `intPlanFeatureCategoryID` bigint NOT NULL,
  `intShowOrder` bigint NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblPlanFeatureToTblPlanFeatureCategoryViaIntPlanFeat864232777` (`intPlanFeatureCategoryID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblPlanFeatureProductTierToTblProductTierViaIntProductTierID` (`intProductTierID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblPricingTierToTblUserViaIntLastUpdatedByUserID` (`intLastUpdatedByUserID`)
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
  KEY `fkTblPricingTierFeatureToTblFeatureValueTypeViaIntOve1238213322` (`intOverageUnitCostThresholdTypeID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `xTblPriorityIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblProductToTblProductViaIntProductParentID` (`intProductParentID`)
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
  KEY `fkTblProductDiscountControlToTblUserViaIntLastUpdatedByUserID` (`intLastUpdatedByUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblProductOfferingFeatureToTblProductOfferingViaIntP764916061` (`intProductOfferingID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblProductTimeTrackingToTblUserViaIntTrainerUserID` (`intTrainerUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblProjectToTblProjectViaIntParentProjectID` (`intParentProjectID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblProjectUserToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblPromotionalOfferToTblUserViaIntLastUpdatedByUserID` (`intLastUpdatedByUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblPromotionalOfferDetailToTblPromotionalOfferViaIn1725564611` (`intPromotionalOfferID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPromotionalOfferPricingTier`;
CREATE TABLE `tblPromotionalOfferPricingTier` (

  `id` bigint NOT NULL,
  `intPricingTierID` bigint DEFAULT NULL,
  `intPromotionalOfferID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblPromotionalOfferPricingTierToTblPricingTierViaIn1370877860` (`intPricingTierID`),
  KEY `fkTblPromotionalOfferPricingTierToTblPromotionalOffer1651163174` (`intPromotionalOfferID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblPurchaseOrderToTblBillingTermViaIntBillingTermIDA190938202` (`intTenantID`,`intBillingTermID`)  
  
  
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
  KEY `fkTblPurchaseOrderAdditionalCostToTblBusinessViaIntBusinessID` (`intBusinessID`)
  
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
  UNIQUE KEY `xuTblPurchaseOrderAdditionalCostTypeIntTenantIDStrName` (`intTenantID`,`strName`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblPurchaseOrderLineItemToTblAssetViaIntSourceAssetI466988292` (`intTenantID`,`intSourceAssetID`)
  
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
  KEY `fkTblPurchaseOrderLineItemRfqToTblPurchaseOrderLineIt1572214171` (`intPurchaseOrderLineItemID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblPurchaseOrderLogToTblPurchaseOrderStatusViaIntFromStatusId` (`intFromStatusId`)
  
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
  UNIQUE KEY `xuTblPurchaseOrderStatusIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblPurchaseOrderStatusTransitionToTblPurchaseOrderS1405731857` (`intFromStatusID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblPurchaseOrderStatusTransitionPermission`;
CREATE TABLE `tblPurchaseOrderStatusTransitionPermission` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intPurchaseOrderStatusTransitionId` bigint NOT NULL,
  `strName` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblPurchaseOrderStatusTransitionPermissionIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblPurchaseOrderStatusTransitionPermissionIntPurchas813070461` (`intPurchaseOrderStatusTransitionId`,`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblPurchaseOrderUserToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblQuoteToTblQuoteStatusViaIntAccountQuoteStatusID` (`intAccountQuoteStatusID`)
  
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
  KEY `xTblRCAActionIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `xTblRCACauseIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblRCAGroupingToTblAssetCategoryViaIntAssetCategory2144176608` (`intTenantID`,`intAssetCategoryID`)
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
  KEY `fkTblRCAGroupingActionToTblRCAGroupingViaIntRCAGroupingID` (`intRCAGroupingID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblRCAGroupingCauseToTblRCAGroupingViaIntRCAGroupingID` (`intRCAGroupingID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `xTblRCAProblemIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

