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
  KEY `fkTblUserToTblCountryViaIntCountryID` (`intCountryID`)
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
  UNIQUE KEY `xuTblUserAnalyticsPermissionIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblUserApiConsumerPermissionToTblApiConsumerViaIntA1679822146` (`intApiConsumerID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblUserCertificationToTblFileContentsViaIntFileContentsID` (`intFileContentsID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblUserClockInOutToTblAssetViaIntFacilityID` (`intFacilityID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblUserEpicFeatureNoticeToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblUserGroupDashboardPersonaToTblDashboardPersonaVia532792540` (`intDashboardPersonaID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  UNIQUE KEY `xuTblUserMASourceStartIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblUserMilestoneToTblMilestoneViaIntMilestoneID` (`intMilestoneID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUserPermission`;
CREATE TABLE `tblUserPermission` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intPermissionID` bigint DEFAULT NULL,
  `intUserID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUserPermissionIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblUserPermissionToTblUserViaIntUserID` (`intUserID`),
  KEY `fkTblUserPermissionToTblPermissionViaIntPermissionID` (`intPermissionID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblUserPurchaseOrderStatusTransitionPermission`;
CREATE TABLE `tblUserPurchaseOrderStatusTransitionPermission` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intPermissionID` bigint NOT NULL,
  `intUserID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblUserPurchaseOrderStatusTransitionPermissionIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblUserPurchaseOrderStatusTransitionPermissionToTblP105693494` (`intPermissionID`),
  KEY `fkTblUserPurchaseOrderStatusTransitionPermissionToTbl1230136470` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblUserReportsToUserToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblUserRoleToTblRoleViaIntRoleIDAndIntTenantID` (`intTenantID`,`intRoleID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblUserSettingToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblUserSystemPropertyToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblUserSystemPropertyLogToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblV6ApiApplicationUserMappingToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblV6RolePermissionLookup`;
CREATE TABLE `tblV6RolePermissionLookup` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intRoleID` bigint DEFAULT NULL,
  `strPermission` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  `strRoleUuid` varchar(36) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblV6RolePermissionLookupIntTenantIDId` (`intTenantID`,`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblV6TenantUserInactivityTimeout`;
CREATE TABLE `tblV6TenantUserInactivityTimeout` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `intSessionTimeoutSeconds` bigint NOT NULL,
  `intUpdated` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblV6TenantUserInactivityTimeoutIntTenantIDId` (`intTenantID`,`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblV6TenantUserMgmtMigration`;
CREATE TABLE `tblV6TenantUserMgmtMigration` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDateTriggered` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkTblV6TenantUserMgmtMigrationToTblTenantViaIntTenantID` (`intTenantID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblV6UserDeletionTracking`;
CREATE TABLE `tblV6UserDeletionTracking` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `dtmDeletionDate` datetime DEFAULT NULL,
  `intUserID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblV6UserDeletionTrackingIntTenantIDId` (`intTenantID`,`id`),
  KEY `fkTblV6UserDeletionTrackingToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblWarrantyToTblWarrantyUsageTermTypeViaIntWarrantyU212019224` (`intWarrantyUsageTermTypeID`)
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
  KEY `xTblWorkIntClientSessionIDIntClientRequestID` (`intClientSessionID`,`intClientRequestID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblWorkflowToTblWorkflowTriggerTypeViaIntWorkflowTr1445185211` (`intWorkflowTriggerTypeID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblWorkflowActivityToTblWorkflowActivityTypeViaIntWo128754936` (`intWorkflowActivityTypeID`)
  
  
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkflowActivityType`;
CREATE TABLE `tblWorkflowActivityType` (

  `id` bigint NOT NULL,
  `intWorkflowActivityTypeGroupID` bigint NOT NULL,
  `strDescription` longtext COLLATE utf8mb3_bin,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkflowActivityTypeStrName` (`strName`),
  KEY `fkTblWorkflowActivityTypeToTblWorkflowActivityTypeGrou224890084` (`intWorkflowActivityTypeGroupID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblWorkflowCommentToTblUserViaIntCommentedByUser` (`intCommentedByUser`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblWorkflowExecutionToTblWorkflowViaIntWorkflowID` (`intWorkflowID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkflowTriggerType`;
CREATE TABLE `tblWorkflowTriggerType` (

  `id` bigint NOT NULL,
  `intWorkflowTriggerTypeGroupID` bigint NOT NULL,
  `strName` varchar(256) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkflowTriggerTypeStrName` (`strName`),
  KEY `fkTblWorkflowTriggerTypeToTblWorkflowTriggerTypeGroupV956444445` (`intWorkflowTriggerTypeGroupID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblWorkOrderToTblUserViaIntLastModifiedByUserID` (`intLastModifiedByUserID`)
  
  
  
  
  
  
  
  
  
  
  
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
  KEY `xTblWorkOrderAssetIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblWorkOrderBusinessToTblBusinessViaIntBusinessIDAnd866584152` (`intTenantID`,`intBusinessID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblWorkOrderLogToTblLogCostTypeViaIntCostTypeID` (`intCostTypeID`)
  
  
  
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
  KEY `fkTblWorkOrderPartToTblAssetViaIntPartIDAndIntTenantID` (`intTenantID`,`intPartID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `xTblWorkOrderStatusIntTenantIDIntUpdated` (`intTenantID`,`intUpdated`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblWorkOrderStatusTransitionToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblWorkOrderTaskToTblWorkOrderTaskViaIntParentWorkOr530918535` (`intTenantID`,`intParentWorkOrderTaskID`)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `tblWorkOrderTaskAdditionalProperties`;
CREATE TABLE `tblWorkOrderTaskAdditionalProperties` (

  `id` bigint NOT NULL,
  `intTenantID` bigint NOT NULL,
  `bolIsCompletable` tinyint NOT NULL,
  `intWorkOrderTaskID` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuTblWorkOrderTaskAdditionalPropertiesIntTenantIDId` (`intTenantID`,`id`),
  UNIQUE KEY `xuTblWorkOrderTaskAdditionalPropertiesIntWorkOrderTas1480622187` (`intWorkOrderTaskID`,`intTenantID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblWorkOrderTaskFileToTblWorkOrderTaskViaIntWorkOrd1293168971` (`intTenantID`,`intWorkOrderTaskID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblWorkOrderTaskUserToTblUserViaIntUserID` (`intUserID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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
  KEY `fkTblWorkOrderUserToTblWorkOrderViaIntWorkOrderIDAndIntTenantID` (`intTenantID`,`intWorkOrderID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

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

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC;

