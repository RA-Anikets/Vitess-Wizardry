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
  KEY `xTblReasonToSetAssetOfflineIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `xTblReasonToSetAssetOnlineIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblReceiptToTblBusinessViaIntSupplierIDAndIntTenantID` (`intTenantID`,`intSupplierID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblReceiptLineItemToTblStockViaIntStockIDAndIntTenantID` (`intTenantID`,`intStockID`)
  
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
  KEY `xTblReceiptStatusIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblReceiptStatusTransitionToTblReceiptStatusViaIntToStatusID` (`intToStatusID`)
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
  KEY `fkTblReconciliationControlToTblIntegrationViaIntIntegrationID` (`intIntegrationID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblRegionUserToTblUserViaIntUserID` (`intUserID`)
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
  KEY `fkTblRegionUserGroupToTblUserViaIntGroupID` (`intGroupID`)
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
  KEY `fkTblRememberMeCookieToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblRemoteEntityIdMappingToTblTenantViaIntTenantID` (`intTenantID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblReportHistoryToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblReportPreset`;
CREATE TABLE `tblReportPreset` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intReportTemplateID` bigint NOT NULL,
  `strDescription` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL,
  `strName` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblReportPresetIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblReportPresetToTblReportTemplateViaIntReportTemplateID` (`intReportTemplateID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblReportPresetParameterToTblReportPresetViaIntReportPresetID` (`intReportPresetID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblReportsToResolved`;
CREATE TABLE `tblReportsToResolved` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intChildID` bigint DEFAULT NULL,
  `intParentID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblReportsToResolvedIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblReportsToResolvedToTblUserViaIntParentID` (`intParentID`),
  KEY `fkTblReportsToResolvedToTblUserViaIntChildID` (`intChildID`)
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
  KEY `fkTblReportTemplateToTblReportTypeViaIntReportTypeID` (`intReportTypeID`)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblResetPasswordToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblResourceToTblResourceViaIntParentResourceID` (`intParentResourceID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblResourceConsumer`;
CREATE TABLE `tblResourceConsumer` (

  `id` bigint NOT NULL,
  `intResourceConsumerTypeID` bigint NOT NULL,
  `intResourceID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblResourceConsumerIntResourceIDIntResourceConsumerTypeID` (`intResourceID`,`intResourceConsumerTypeID`),
  KEY `fkTblResourceConsumerToTblResourceConsumerTypeViaIntR1899153794` (`intResourceConsumerTypeID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblRFQToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblRFQAssetToTblAssetViaIntAssetID` (`intAssetID`)
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
  KEY `fkTblRFQLineItemToTblRFQViaIntRFQID` (`intRFQID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRFQQueue`;
CREATE TABLE `tblRFQQueue` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateAdded` datetime DEFAULT NULL,
  `intAssetID` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRFQQueueIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblRFQQueueToTblAssetViaIntAssetID` (`intAssetID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  UNIQUE KEY `xuTblRFQStatusIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblRFQStatusTransitionToTblRFQStatusViaIntToStatusID` (`intToStatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRole`;
CREATE TABLE `tblRole` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `strRoleSysCode` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  `strUuid` varchar(36) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRoleIntTenantIDId` (`intTenantID`,`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblRolePermission`;
CREATE TABLE `tblRolePermission` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intPermissionID` bigint DEFAULT NULL,
  `intRoleID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblRolePermissionIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblRolePermissionToTblPermissionViaIntPermissionID` (`intPermissionID`),
  KEY `fkTblRolePermissionToTblRoleViaIntRoleID` (`intRoleID`)
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
  KEY `fkTblSalesAccountTrackingToTblUserViaIntUserID` (`intUserID`)
  
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
  KEY `fkTblScheduledMaintenanceToTblUserViaIntRequestorUserID` (`intRequestorUserID`)
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
  KEY `fkTblScheduledMaintenanceActivityLogToTblUserViaIntUserID` (`intUserID`)
  
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
  KEY `fkTblScheduledMaintenanceAssetToTblAssetViaIntAssetID1280349577` (`intTenantID`,`intAssetID`)
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
  KEY `fkTblScheduledMaintenanceBusinessToTblBusinessViaIntBu975362557` (`intTenantID`,`intBusinessID`)
  
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
  KEY `fkTblScheduledMaintenanceNestingToTblScheduledMainten1167800448` (`intScheduledMaintenanceID`)
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
  KEY `fkTblScheduledMaintenancePartToTblScheduledMaintenance240390858` (`intTenantID`,`intScheduledMaintenanceID`)
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
  KEY `fkTblScheduledMaintenanceUserToTblUserViaIntUserID` (`intUserID`)
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
  KEY `fkTblScheduledReportToTblReportPresetViaIntReportPresetID` (`intReportPresetID`)
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
  KEY `fkTblScheduledReportUserToTblScheduledReportViaIntSche380863882` (`intScheduledReportID`)
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
  KEY `fkTblScheduledTaskToTblMeterReadingUnitViaIntMeterRea2123827089` (`intTenantID`,`intMeterReadingUnitID`)
  
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
  KEY `fkTblScheduledTaskFileToTblFileViaIntFileIDAndIntTenantID` (`intTenantID`,`intFileID`)
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
  KEY `fkTblScheduleTriggerToTblAssetEventTypeViaIntAssetEventTypeID` (`intAssetEventTypeID`)
  
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
  UNIQUE KEY `xuTblServerSettingIntTenantIDIntSysCode` (`intTenantID`,`intSysCode`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblShippingType`;
CREATE TABLE `tblShippingType` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblShippingTypeIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblShippingTypeIntTenantIDStrName` (`intTenantID`,`strName`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblSiteAvailabilityToTblAssetViaIntAllowedSiteID` (`intAllowedSiteID`)
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
  KEY `fkTblSiteSettingToTblAssetViaIntSiteID` (`intSiteID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblSiteStockToTblAssetViaIntAssetIDAndIntTenantID` (`intTenantID`,`intAssetID`)
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
  KEY `fkTblSiteUserToTblUserViaIntUserID` (`intUserID`)
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
  KEY `fkTblSiteUserGroupToTblUserViaIntGroupID` (`intGroupID`)
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
  KEY `fkTblSmtpEventToTblSmtpProviderViaIntSmtpProviderID` (`intSmtpProviderID`)
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
  UNIQUE KEY `xuTblSmtpProviderIntTenantIDStrName` (`intTenantID`,`strName`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblSSOImplementationToTblSSOProviderViaIntProviderID` (`intProviderID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblStockToTblAssetViaIntFacilityIDAndIntTenantID` (`intTenantID`,`intFacilityID`)
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
  KEY `fkTblStockAdjustmentItemToTblUserViaIntUserID` (`intUserID`)
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
  KEY `fkTblStockCycleCountToTblStockViaIntStockIDAndIntTenantID` (`intTenantID`,`intStockID`)
  
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
  KEY `fkTblStockHistoryToTblStockViaIntStockID` (`intStockID`)
  
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
  KEY `fkTblStockPurchaseItemToTblUserViaIntUserID` (`intUserID`)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblStockTxType`;
CREATE TABLE `tblStockTxType` (

  `id` bigint NOT NULL,
  `intTenantID` bigint DEFAULT NULL,
  `strName` varchar(96) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblStockTxTypeIntTenantIDStrName` (`intTenantID`,`strName`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblSubscriptionPlanToTblUserViaIntCreatedByUserID` (`intCreatedByUserID`)
  
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
  KEY `fkTblSystemMessageUserToTblMessageViaIntMessageID` (`intMessageID`)
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
  KEY `fkTblSystemSettingToTblWorkOrderStatusViaIntDefaultWork81959358` (`intDefaultWorkOrderStatusID`)
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
  KEY `fkTblTaskToTblMeterReadingUnitViaIntMeterReadingUnitID` (`intMeterReadingUnitID`)
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
  KEY `fkTblTaskFileToTblFileViaIntFileIDAndIntTenantID` (`intTenantID`,`intFileID`)
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
  KEY `fkTblTaskGroupToTblUserViaIntLastUpdatedByUserID` (`intLastUpdatedByUserID`)
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
  KEY `fkTblTaskGroupAssetCategoryToTblTaskGroupViaIntTaskGroupID` (`intTaskGroupID`)
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
  KEY `fkTblTaskResultConfigurationToTblTaskResultValueViaIn1584196194` (`intTaskResultValueID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblTaskResultValueToTblScheduledTaskViaIntScheduled1615152717` (`intScheduledTaskID`,`intTenantID`)
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
  KEY `fkTblTemplateToTblTemplateCategoryViaIntTemplateCategoryID` (`intTemplateCategoryID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTemplateCategory`;
CREATE TABLE `tblTemplateCategory` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `strName` varchar(128) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTemplateCategoryIntTenantIDId` (`intTenantID`,`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblTenantToTblUserViaIntAcceptedEulaUserID` (`intAcceptedEulaUserID`)
  
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
  KEY `fkTblTenantAutomationToTblFeatureViaIntFeatureID` (`intFeatureID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTenantDashboard`;
CREATE TABLE `tblTenantDashboard` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intDashboardID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblTenantDashboardIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblTenantDashboardToTblDashboardViaIntDashboardID` (`intDashboardID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblTenantDeleteStatusToTblTenantViaIntTenantID` (`intTenantID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblTenantDeleteTableNames`;
CREATE TABLE `tblTenantDeleteTableNames` (

  `id` bigint NOT NULL AUTO_INCREMENT,
  `strTableName` varchar(500) DEFAULT NULL,
  `isBatchDeleteApplicable` int DEFAULT '0',
  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblTenantDistributionCampaignToTblDistributionViaIn1248073008` (`intDistributionID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblTenantFeatureToTblFeatureValuePeriodTypeViaIntFea757598728` (`intFeatureValuePeriodTypeID`)
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
  KEY `fkTblTenantLineItemToTblUserViaIntUpdatedByUserID` (`intUpdatedByUserID`)
  
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
  KEY `fkTblTenantNotificationPricingTierToTblPricingTierVia1197790813` (`intPricingTierID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblTenantOrderToTblPaymentProfileViaIntPaymentProfileID` (`intPaymentProfileID`)
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

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblTenantRelationshipToTblTenantRelationshipTypeViaI502057060` (`intTenantRelationshipTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblTenantReportToTblReportTemplateViaIntReportTemplateID` (`intReportTemplateID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  UNIQUE KEY `xuTblTenantSystemPropertyIntTenantIDIntSystemIDStrPropertyName` (`intTenantID`,`intSystemID`,`strPropertyName`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `xTblTenantSystemPropertyLogIntTenantIDIntSystemIDStrP1866839388` (`intTenantID`,`intSystemID`,`strPropertyName`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblTenantTransactionToTblPaymentProfileViaIntPaymentProfileID` (`intPaymentProfileID`)
  
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
  KEY `fkTblTenantWidgetToTblDashboardWidgetViaIntWidgetID` (`intWidgetID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblTestingBlackToTblTestingWhiteCViaIntWhiteCascadeID` (`intWhiteCascadeID`)
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
  KEY `fkTblTestingRedCToTblTestingWhiteCViaIntWhiteCCascadeID` (`intWhiteCCascadeID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblTestingWhiteCToTblTestingBlackViaIntBlackCascadeID` (`intBlackCascadeID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblTestingYellowToTblTestingWhiteCViaIntWhiteCSetNullID` (`intWhiteCSetNullID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblTestTableToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblTheThrowableReportedToTblTheThrowableViaIntTheThrowableID` (`intTheThrowableID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUicProfile`;
CREATE TABLE `tblUicProfile` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intUserID` bigint DEFAULT NULL,
  `strUics` longtext COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUicProfileIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblUicProfileToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblUsageLogToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

