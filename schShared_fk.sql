ALTER TABLE `tblAccountLog` ADD CONSTRAINT `fkTblAccountLogToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAccountLogDiscount` ADD CONSTRAINT `fkTblAccountLogDiscountToTblAccountLogViaIntAccountLogID` FOREIGN KEY (`intAccountLogID`) REFERENCES `tblAccountLog` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAccountLogOrder` ADD CONSTRAINT `fkTblAccountLogOrderToTblAccountLogViaIntAccountLogID` FOREIGN KEY (`intAccountLogID`) REFERENCES `tblAccountLog` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAccountLogOrder` ADD CONSTRAINT `fkTblAccountLogOrderToTblOrderViaIntOrderID` FOREIGN KEY (`intOrderID`) REFERENCES `tblOrder` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAccountNotes` ADD CONSTRAINT `fkTblAccountNotesToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblActivityLog` ADD CONSTRAINT `fkTblActivityLogToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblActivityLog` ADD CONSTRAINT `fkTblActivityLogToTblIntegrationActionViaIntIntegrationActionID` FOREIGN KEY (`intIntegrationActionID`) REFERENCES `tblIntegrationAction` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblActivityLog` ADD CONSTRAINT `fkTblActivityLogToTblScheduledMaintenanceViaIntSchedu1232720111` FOREIGN KEY (`intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblActivityLog` ADD CONSTRAINT `fkTblActivityLogToTblUserViaIntUserID` FOREIGN KEY (`intTenantID`,`intUserID`) REFERENCES `tblUser` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblApiConsumer` ADD CONSTRAINT `fkTblApiConsumerToTblApiConsumerViaIntApiConsumerDistr939616916` FOREIGN KEY (`intApiConsumerDistributionParentID`) REFERENCES `tblApiConsumer` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblApiConsumerUsage` ADD CONSTRAINT `fkTblApiConsumerUsageToTblApiConsumerViaIntApiConsume1358243839` FOREIGN KEY (`intApiConsumerDistributionParentID`) REFERENCES `tblApiConsumer` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblApiConsumerUsage` ADD CONSTRAINT `fkTblApiConsumerUsageToTblApiConsumerViaIntApiConsumerID` FOREIGN KEY (`intApiConsumerID`) REFERENCES `tblApiConsumer` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblAsset` ADD CONSTRAINT `fkTblAssetToTblAccountViaIntAccountIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAccountID`) REFERENCES `tblAccount` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAsset` ADD CONSTRAINT `fkTblAssetToTblAssetCategoryViaIntCategoryIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intCategoryID`) REFERENCES `tblAssetCategory` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAsset` ADD CONSTRAINT `fkTblAssetToTblAssetCategoryViaIntSuperAssetCategoryID` FOREIGN KEY (`intSuperAssetCategoryID`) REFERENCES `tblAssetCategory` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAsset` ADD CONSTRAINT `fkTblAssetToTblAssetCategoryViaIntSuperCategoryID` FOREIGN KEY (`intSuperCategoryID`) REFERENCES `tblAssetCategory` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAsset` ADD CONSTRAINT `fkTblAssetToTblAssetViaIntAssetLocationIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetLocationID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAsset` ADD CONSTRAINT `fkTblAssetToTblAssetViaIntAssetParentIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetParentID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAsset` ADD CONSTRAINT `fkTblAssetToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intSiteID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAsset` ADD CONSTRAINT `fkTblAssetToTblChargeDepartmentViaIntChargeDepartment1215857167` FOREIGN KEY (`intTenantID`,`intChargeDepartmentID`) REFERENCES `tblChargeDepartment` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAsset` ADD CONSTRAINT `fkTblAssetToTblMeterReadingUnitViaIntLastMeterReadingUnitID` FOREIGN KEY (`intLastMeterReadingUnitID`) REFERENCES `tblMeterReadingUnit` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAsset` ADD CONSTRAINT `fkTblAssetToTblPurchaseOrderLineItemViaIntCreatedForPu518539163` FOREIGN KEY (`intCreatedForPurchaseOrderLineItemID`) REFERENCES `tblPurchaseOrderLineItem` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblAsset` ADD CONSTRAINT `fkTblAssetToTblReceiptLineItemViaIntCreatedFromReceipt145304412` FOREIGN KEY (`intCreatedFromReceiptLineItemID`) REFERENCES `tblReceiptLineItem` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblAssetActivityLog` ADD CONSTRAINT `fkTblAssetActivityLogToTblActivityLogViaIntActivityLogID` FOREIGN KEY (`intActivityLogID`) REFERENCES `tblActivityLog` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAssetActivityLog` ADD CONSTRAINT `fkTblAssetActivityLogToTblMoveAssetViaIntMoveAssetIDA1114051204` FOREIGN KEY (`intTenantID`,`intMoveAssetID`) REFERENCES `tblMoveAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetActivityLog` ADD CONSTRAINT `fkTblAssetActivityLogToTblMoveBackAssetViaIntMoveBack1654161444` FOREIGN KEY (`intTenantID`,`intMoveBackAssetID`) REFERENCES `tblMoveBackAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetActivityLog` ADD CONSTRAINT `fkTblAssetActivityLogToTblMoveBackViaIntMoveBackIDAndI730605486` FOREIGN KEY (`intTenantID`,`intMoveBackID`) REFERENCES `tblMoveBack` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetActivityLog` ADD CONSTRAINT `fkTblAssetActivityLogToTblMoveViaIntMoveIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intMoveID`) REFERENCES `tblMove` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetActivityLog` ADD CONSTRAINT `fkTblAssetActivityLogToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetBusiness` ADD CONSTRAINT `fkTblAssetBusinessToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAssetBusiness` ADD CONSTRAINT `fkTblAssetBusinessToTblBusinessGroupViaIntBusinessGro1690629891` FOREIGN KEY (`intTenantID`,`intBusinessGroupID`) REFERENCES `tblBusinessGroup` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetBusiness` ADD CONSTRAINT `fkTblAssetBusinessToTblBusinessViaIntBusinessIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intBusinessID`) REFERENCES `tblBusiness` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetCategory` ADD CONSTRAINT `fkTblAssetCategoryToTblAssetCategoryViaIntParentIDAndI815481187` FOREIGN KEY (`intTenantID`,`intParentID`) REFERENCES `tblAssetCategory` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetCategoryBarcodeFormatType` ADD CONSTRAINT `fkTblAssetCategoryBarcodeFormatTypeToTblAssetCategory1870575391` FOREIGN KEY (`intAssetCategoryID`) REFERENCES `tblAssetCategory` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetCategoryResolved` ADD CONSTRAINT `fkTblAssetCategoryResolvedToTblAssetCategoryViaIntChi1687121893` FOREIGN KEY (`intTenantID`,`intChildID`) REFERENCES `tblAssetCategory` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAssetCategoryResolved` ADD CONSTRAINT `fkTblAssetCategoryResolvedToTblAssetCategoryViaIntPar1912925573` FOREIGN KEY (`intTenantID`,`intParentID`) REFERENCES `tblAssetCategory` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAssetClassification` ADD CONSTRAINT `fkTblAssetClassificationToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAssetClassification` ADD CONSTRAINT `fkTblAssetClassificationToTblAssetViaIntSiteID` FOREIGN KEY (`intSiteID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAssetClassificationLog` ADD CONSTRAINT `fkTblAssetClassificationLogToTblAssetViaIntAssetIDAndI882329203` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAssetClassificationLog` ADD CONSTRAINT `fkTblAssetClassificationLogToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intSiteID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAssetConsumingReference` ADD CONSTRAINT `fkTblAssetConsumingReferenceToTblAssetViaIntAssetIDAn2031227025` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetConsumingReference` ADD CONSTRAINT `fkTblAssetConsumingReferenceToTblAssetViaIntConsumesA1292758054` FOREIGN KEY (`intTenantID`,`intConsumesAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetConsumingReference` ADD CONSTRAINT `fkTblAssetConsumingReferenceToTblBOMGroupPartViaIntBO2061768786` FOREIGN KEY (`intBOMPartControlID`) REFERENCES `tblBOMGroupPart` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetConsumingReference` ADD CONSTRAINT `fkTblAssetConsumingReferenceToTblBOMGroupViaIntBOMControlID` FOREIGN KEY (`intBOMControlID`) REFERENCES `tblBOMGroup` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetDepletionTracking` ADD CONSTRAINT `fkTblAssetDepletionTrackingToTblAssetPurchaseTrackingV698527743` FOREIGN KEY (`intAssetPurchaseTrackingID`) REFERENCES `tblAssetPurchaseTracking` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAssetDepletionTracking` ADD CONSTRAINT `fkTblAssetDepletionTrackingToTblWorkOrderPartViaIntWo1744765951` FOREIGN KEY (`intWorkOrderPartID`) REFERENCES `tblWorkOrderPart` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAssetEvent` ADD CONSTRAINT `fkTblAssetEventToTblAssetEventTypeViaIntAssetEventTyp1939736897` FOREIGN KEY (`intTenantID`,`intAssetEventTypeID`) REFERENCES `tblAssetEventType` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetEvent` ADD CONSTRAINT `fkTblAssetEventToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAssetEvent` ADD CONSTRAINT `fkTblAssetEventToTblUserViaIntSubmittedByUserID` FOREIGN KEY (`intSubmittedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetEvent` ADD CONSTRAINT `fkTblAssetEventToTblWorkOrderViaIntWorkOrderIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intWorkOrderID`) REFERENCES `tblWorkOrder` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAssetEventTypeAsset` ADD CONSTRAINT `fkTblAssetEventTypeAssetToTblAssetEventTypeViaIntAsse1340966513` FOREIGN KEY (`intTenantID`,`intAssetEventTypeID`) REFERENCES `tblAssetEventType` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetEventTypeAsset` ADD CONSTRAINT `fkTblAssetEventTypeAssetToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetOfflineTracker` ADD CONSTRAINT `fkTblAssetOfflineTrackerToTblAssetEventTypeViaIntAsse1328600581` FOREIGN KEY (`intAssetEventTypeID`) REFERENCES `tblAssetEventType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetOfflineTracker` ADD CONSTRAINT `fkTblAssetOfflineTrackerToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAssetOfflineTracker` ADD CONSTRAINT `fkTblAssetOfflineTrackerToTblAssetViaIntAssetIsLocate1063347007` FOREIGN KEY (`intAssetIsLocatedAtAsssetID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblAssetOfflineTracker` ADD CONSTRAINT `fkTblAssetOfflineTrackerToTblAssetViaIntAssetIsPartOfAssetID` FOREIGN KEY (`intAssetIsPartOfAssetID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblAssetOfflineTracker` ADD CONSTRAINT `fkTblAssetOfflineTrackerToTblAssetViaIntSendToFacilityID` FOREIGN KEY (`intSendToFacilityID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblAssetOfflineTracker` ADD CONSTRAINT `fkTblAssetOfflineTrackerToTblAssetViaIntSwapWithAssetID` FOREIGN KEY (`intSwapWithAssetID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblAssetOfflineTracker` ADD CONSTRAINT `fkTblAssetOfflineTrackerToTblReasonToSetAssetOfflineV1944624567` FOREIGN KEY (`intTenantID`,`intReasonOfflineID`) REFERENCES `tblReasonToSetAssetOffline` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetOfflineTracker` ADD CONSTRAINT `fkTblAssetOfflineTrackerToTblReasonToSetAssetOnlineVia478542041` FOREIGN KEY (`intTenantID`,`intReasonOnlineID`) REFERENCES `tblReasonToSetAssetOnline` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetOfflineTracker` ADD CONSTRAINT `fkTblAssetOfflineTrackerToTblUserViaIntSetOfflineByUserID` FOREIGN KEY (`intSetOfflineByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblAssetOfflineTracker` ADD CONSTRAINT `fkTblAssetOfflineTrackerToTblUserViaIntSetOnlineByUserID` FOREIGN KEY (`intSetOnlineByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblAssetOfflineTracker` ADD CONSTRAINT `fkTblAssetOfflineTrackerToTblUserViaIntStatusChangedByUserID` FOREIGN KEY (`intStatusChangedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblAssetOfflineTracker` ADD CONSTRAINT `fkTblAssetOfflineTrackerToTblWorkOrderViaIntWorkOrderID` FOREIGN KEY (`intWorkOrderID`) REFERENCES `tblWorkOrder` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblAssetProperty` ADD CONSTRAINT `fkTblAssetPropertyToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetProperty` ADD CONSTRAINT `fkTblAssetPropertyToTblMeterReadingUnitViaIntMeterRea2078634338` FOREIGN KEY (`intTenantID`,`intMeterReadingUnitID`) REFERENCES `tblMeterReadingUnit` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetPropertyDomainElement` ADD CONSTRAINT `fkTblAssetPropertyDomainElementToTblAssetPropertyViaIn510438062` FOREIGN KEY (`intTenantID`,`intAssetPropertyID`) REFERENCES `tblAssetProperty` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAssetPropertyValue` ADD CONSTRAINT `fkTblAssetPropertyValueToTblAssetEventTypeViaIntAssetE434192927` FOREIGN KEY (`intTenantID`,`intAssetEventTypeId`) REFERENCES `tblAssetEventType` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetPropertyValue` ADD CONSTRAINT `fkTblAssetPropertyValueToTblAssetPropertyDomainElement549001757` FOREIGN KEY (`intTenantID`,`intAssetPropertyDomainElementID`) REFERENCES `tblAssetPropertyDomainElement` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetPropertyValue` ADD CONSTRAINT `fkTblAssetPropertyValueToTblAssetPropertyViaIntAssetPr923834485` FOREIGN KEY (`intTenantID`,`intAssetPropertyID`) REFERENCES `tblAssetProperty` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetPropertyValue` ADD CONSTRAINT `fkTblAssetPropertyValueToTblAssetViaIntSensorOrDeviceID` FOREIGN KEY (`intSensorOrDeviceID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetPropertyValue` ADD CONSTRAINT `fkTblAssetPropertyValueToTblUserViaIntCreatedByApiUserID` FOREIGN KEY (`intCreatedByApiUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetPropertyValue` ADD CONSTRAINT `fkTblAssetPropertyValueToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetPurchaseTracking` ADD CONSTRAINT `fkTblAssetPurchaseTrackingToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAssetPurchaseTracking` ADD CONSTRAINT `fkTblAssetPurchaseTrackingToTblBusinessViaIntBusinessID` FOREIGN KEY (`intBusinessID`) REFERENCES `tblBusiness` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetResolved` ADD CONSTRAINT `fkTblAssetResolvedToTblAssetViaIntAncestorIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAncestorID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAssetResolved` ADD CONSTRAINT `fkTblAssetResolvedToTblAssetViaIntDescendantIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intDescendantID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAssetSelection` ADD CONSTRAINT `fkTblAssetSelectionToTblAssetViaIntAssetIdAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetId`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAssetUser` ADD CONSTRAINT `fkTblAssetUserToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAssetUser` ADD CONSTRAINT `fkTblAssetUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAuditLog` ADD CONSTRAINT `fkTblAuditLogToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAuthorization` ADD CONSTRAINT `fkTblAuthorizationToTblApiConsumerViaIntApiConsumerID` FOREIGN KEY (`intApiConsumerID`) REFERENCES `tblApiConsumer` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAuthorization` ADD CONSTRAINT `fkTblAuthorizationToTblUserViaIntUserId` FOREIGN KEY (`intUserId`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblBOMGroup` ADD CONSTRAINT `fkTblBOMGroupToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblBOMGroup` ADD CONSTRAINT `fkTblBOMGroupToTblUserViaIntLastUpdatedByUserID` FOREIGN KEY (`intLastUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblBOMGroupPart` ADD CONSTRAINT `fkTblBOMGroupPartToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblBOMGroupPart` ADD CONSTRAINT `fkTblBOMGroupPartToTblBOMGroupViaIntBOMGroupID` FOREIGN KEY (`intBOMGroupID`) REFERENCES `tblBOMGroup` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblBranding` ADD CONSTRAINT `fkTblBrandingToTblFileContentsViaIntFileContentsID` FOREIGN KEY (`intFileContentsID`) REFERENCES `tblFileContents` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblBusiness` ADD CONSTRAINT `fkTblBusinessToTblMASourceSellerViaIntMASourceSellerID` FOREIGN KEY (`intMASourceSellerID`) REFERENCES `tblMASourceSeller` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblBusiness` ADD CONSTRAINT `fkTblBusinessToTblTemplateViaIntRFQTemplateID` FOREIGN KEY (`intRFQTemplateID`) REFERENCES `tblTemplate` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblBusinessContact` ADD CONSTRAINT `fkTblBusinessContactToTblBusinessViaIntBusinessID` FOREIGN KEY (`intBusinessID`) REFERENCES `tblBusiness` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblBusinessContact` ADD CONSTRAINT `fkTblBusinessContactToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblBusinessRole` ADD CONSTRAINT `fkTblBusinessRoleToTblBusinessGroupViaIntBusinessGroupID` FOREIGN KEY (`intBusinessGroupID`) REFERENCES `tblBusinessGroup` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblBusinessRole` ADD CONSTRAINT `fkTblBusinessRoleToTblBusinessViaIntBusinessID` FOREIGN KEY (`intBusinessID`) REFERENCES `tblBusiness` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblCalendarEvent` ADD CONSTRAINT `fkTblCalendarEventToTblScheduledMaintenanceViaIntSche1489515749` FOREIGN KEY (`intTenantID`,`intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblCalendarEvent` ADD CONSTRAINT `fkTblCalendarEventToTblScheduleTriggerViaIntScheduleTriggerID` FOREIGN KEY (`intScheduleTriggerID`) REFERENCES `tblScheduleTrigger` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblCategorySetting` ADD CONSTRAINT `fkTblCategorySettingToTblAssetCategoryViaIntCategoryID` FOREIGN KEY (`intCategoryID`) REFERENCES `tblAssetCategory` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblChargeDepartment` ADD CONSTRAINT `fkTblChargeDepartmentToTblAssetViaIntFacilityIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intFacilityID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblCreditCard` ADD CONSTRAINT `fkTblCreditCardToTblPaymentProfileViaIntPaymentProfileID` FOREIGN KEY (`intPaymentProfileID`) REFERENCES `tblPaymentProfile` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblCustomField` ADD CONSTRAINT `fkTblCustomFieldToTblAssetCategoryViaIntAssetCategoryID` FOREIGN KEY (`intAssetCategoryID`) REFERENCES `tblAssetCategory` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblCustomFieldValue` ADD CONSTRAINT `fkTblCustomFieldValueToTblCustomFieldViaIntCustomFieldID` FOREIGN KEY (`intCustomFieldID`) REFERENCES `tblCustomField` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblCustomQuery` ADD CONSTRAINT `fkTblCustomQueryToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblCycleCount` ADD CONSTRAINT `fkTblCycleCountToTblAssetViaIntFacilityID` FOREIGN KEY (`intFacilityID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblCycleCount` ADD CONSTRAINT `fkTblCycleCountToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intSiteID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblCycleCount` ADD CONSTRAINT `fkTblCycleCountToTblUserViaIntCompletedBy` FOREIGN KEY (`intCompletedBy`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblCycleCount` ADD CONSTRAINT `fkTblCycleCountToTblUserViaIntCreatedBy` FOREIGN KEY (`intCreatedBy`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblDashboardWidgetPositionFilter` ADD CONSTRAINT `fkTblDashboardWidgetPositionFilterToTblDashboardWidge1913181316` FOREIGN KEY (`intTenantID`,`intWidgetPositionID`) REFERENCES `tblDashboardWidgetPosition` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblDashboardWidgetPositionParameter` ADD CONSTRAINT `fkTblDashboardWidgetPositionParameterToTblDashboardWid730743525` FOREIGN KEY (`intTenantID`,`intWidgetPositionID`) REFERENCES `tblDashboardWidgetPosition` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblDatabaseExport` ADD CONSTRAINT `fkTblDatabaseExportToTblFileContentsViaIntFileContentsID` FOREIGN KEY (`intFileContentsID`) REFERENCES `tblFileContents` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblDatabaseExport` ADD CONSTRAINT `fkTblDatabaseExportToTblUserViaIntGeneratedByUserID` FOREIGN KEY (`intGeneratedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblDistributionPaymentMethod` ADD CONSTRAINT `fkTblDistributionPaymentMethodToTblDistributionViaIntD588153981` FOREIGN KEY (`intDistributionID`) REFERENCES `tblDistribution` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblDistributionPricingTier` ADD CONSTRAINT `fkTblDistributionPricingTierToTblDistributionViaIntDi1412099044` FOREIGN KEY (`intDistributionID`) REFERENCES `tblDistribution` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblDistributionRecurringType` ADD CONSTRAINT `fkTblDistributionRecurringTypeToTblDistributionViaIntD702617933` FOREIGN KEY (`intDistributionID`) REFERENCES `tblDistribution` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblDistributionUnitPricingRule` ADD CONSTRAINT `fkTblDistributionUnitPricingRuleToTblDistributionPric1148256324` FOREIGN KEY (`intDistributionPricingTierID`) REFERENCES `tblDistributionPricingTier` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblEmailAttachment` ADD CONSTRAINT `fkTblEmailAttachmentToTblEmailMessageViaIntEmailMessageID` FOREIGN KEY (`intEmailMessageID`) REFERENCES `tblEmailMessage` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblEmailMessage` ADD CONSTRAINT `fkTblEmailMessageToTblBusinessViaIntSenderBusinessID` FOREIGN KEY (`intSenderBusinessID`) REFERENCES `tblBusiness` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblEvent` ADD CONSTRAINT `fkTblEventToTblAssetViaIntSiteID` FOREIGN KEY (`intSiteID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblEvent` ADD CONSTRAINT `fkTblEventToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFile` ADD CONSTRAINT `fkTblFileToTblAssetCategoryViaIntAssetCategoryID` FOREIGN KEY (`intAssetCategoryID`) REFERENCES `tblAssetCategory` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblFile` ADD CONSTRAINT `fkTblFileToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblFile` ADD CONSTRAINT `fkTblFileToTblBusinessViaIntBusinessID` FOREIGN KEY (`intBusinessID`) REFERENCES `tblBusiness` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblFile` ADD CONSTRAINT `fkTblFileToTblFileContentsViaIntFileContentsIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intFileContentsID`) REFERENCES `tblFileContents` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblFile` ADD CONSTRAINT `fkTblFileToTblFileContentsViaIntThumbnailID` FOREIGN KEY (`intThumbnailID`) REFERENCES `tblFileContents` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblFile` ADD CONSTRAINT `fkTblFileToTblMASourceListingViaIntMASourceListingID` FOREIGN KEY (`intMASourceListingID`) REFERENCES `tblMASourceListing` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblFile` ADD CONSTRAINT `fkTblFileToTblProductTimeTrackingViaIntProductTimeTrackingID` FOREIGN KEY (`intProductTimeTrackingID`) REFERENCES `tblProductTimeTracking` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblFile` ADD CONSTRAINT `fkTblFileToTblProjectViaIntProjectID` FOREIGN KEY (`intProjectID`) REFERENCES `tblProject` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblFile` ADD CONSTRAINT `fkTblFileToTblPurchaseOrderViaIntPurchaseOrderID` FOREIGN KEY (`intPurchaseOrderID`) REFERENCES `tblPurchaseOrder` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblFile` ADD CONSTRAINT `fkTblFileToTblRFQViaIntRfqID` FOREIGN KEY (`intRfqID`) REFERENCES `tblRFQ` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblFile` ADD CONSTRAINT `fkTblFileToTblScheduledMaintenanceViaIntScheduledMaintenanceID` FOREIGN KEY (`intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblFile` ADD CONSTRAINT `fkTblFileToTblTaskGroupViaIntTaskGroupID` FOREIGN KEY (`intTaskGroupID`) REFERENCES `tblTaskGroup` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblFile` ADD CONSTRAINT `fkTblFileToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblFile` ADD CONSTRAINT `fkTblFileToTblWorkOrderViaIntWorkOrderIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intWorkOrderID`) REFERENCES `tblWorkOrder` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblFirewall` ADD CONSTRAINT `fkTblFirewallToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFirewallLog` ADD CONSTRAINT `fkTblFirewallLogToTblAssetViaIntSiteID` FOREIGN KEY (`intSiteID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFirewallLog` ADD CONSTRAINT `fkTblFirewallLogToTblFirewallRuleViaIntFirewallRuleID` FOREIGN KEY (`intFirewallRuleID`) REFERENCES `tblFirewallRule` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFirewallLog` ADD CONSTRAINT `fkTblFirewallLogToTblFirewallViaIntFirewallID` FOREIGN KEY (`intFirewallID`) REFERENCES `tblFirewall` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFirewallLog` ADD CONSTRAINT `fkTblFirewallLogToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFirewallRule` ADD CONSTRAINT `fkTblFirewallRuleToTblAssetViaIntSiteID` FOREIGN KEY (`intSiteID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFirewallRule` ADD CONSTRAINT `fkTblFirewallRuleToTblFirewallViaIntFirewallID` FOREIGN KEY (`intFirewallID`) REFERENCES `tblFirewall` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFirewallRule` ADD CONSTRAINT `fkTblFirewallRuleToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblGHGCalcAsset` ADD CONSTRAINT `fkTblGHGCalcAssetToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblGroupPermissions` ADD CONSTRAINT `fkTblGroupPermissionsToTblUserViaIntGroupID` FOREIGN KEY (`intGroupID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblGuestActions` ADD CONSTRAINT `fkTblGuestActionsToTblWorkOrderViaIntCreatedWorkOrderID` FOREIGN KEY (`intCreatedWorkOrderID`) REFERENCES `tblWorkOrder` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblGuestMrFormField` ADD CONSTRAINT `fkTblGuestMrFormFieldToTblSystemSettingViaIntSystemSettingID` FOREIGN KEY (`intSystemSettingID`) REFERENCES `tblSystemSetting` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblIntegration` ADD CONSTRAINT `fkTblIntegrationToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblIntegration` ADD CONSTRAINT `fkTblIntegrationToTblUserViaIntUpdatedByUserID` FOREIGN KEY (`intUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblIntegrationAction` ADD CONSTRAINT `fkTblIntegrationActionToTblIntegrationViaIntIntegrationID` FOREIGN KEY (`intIntegrationID`) REFERENCES `tblIntegration` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblIntegrationActionLog` ADD CONSTRAINT `fkTblIntegrationActionLogToTblActivityLogViaIntActivityLogID` FOREIGN KEY (`intActivityLogID`) REFERENCES `tblActivityLog` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblIntegrationActionLog` ADD CONSTRAINT `fkTblIntegrationActionLogToTblActivityLogViaIntParentA336262432` FOREIGN KEY (`intParentActivityLogID`) REFERENCES `tblActivityLog` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblIntegrationConfigurableProperty` ADD CONSTRAINT `fkTblIntegrationConfigurablePropertyToTblIntegrationV2128527156` FOREIGN KEY (`intIntegrationID`) REFERENCES `tblIntegration` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblIntegrationParameter` ADD CONSTRAINT `fkTblIntegrationParameterToTblIntegrationViaIntIntegrationID` FOREIGN KEY (`intIntegrationID`) REFERENCES `tblIntegration` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblKpiResult` ADD CONSTRAINT `fkTblKpiResultToTblDashboardWidgetPositionViaIntWidget210242764` FOREIGN KEY (`intTenantID`,`intWidgetPositionID`) REFERENCES `tblDashboardWidgetPosition` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblLastMeterReading` ADD CONSTRAINT `fkTblLastMeterReadingToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblLastMeterReading` ADD CONSTRAINT `fkTblLastMeterReadingToTblMeterReadingUnitViaIntMeter1710873131` FOREIGN KEY (`intTenantID`,`intMeterReadingUnitsID`) REFERENCES `tblMeterReadingUnit` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLastMeterReading` ADD CONSTRAINT `fkTblLastMeterReadingToTblMeterReadingViaIntMeterReadi171873776` FOREIGN KEY (`intTenantID`,`intMeterReadingID`) REFERENCES `tblMeterReading` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLineItem` ADD CONSTRAINT `fkTblLineItemToTblLineItemViaIntLineItemParentID` FOREIGN KEY (`intLineItemParentID`) REFERENCES `tblLineItem` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblLineItem` ADD CONSTRAINT `fkTblLineItemToTblOrderViaIntOrderID` FOREIGN KEY (`intOrderID`) REFERENCES `tblOrder` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblLineItem` ADD CONSTRAINT `fkTblLineItemToTblQuoteViaIntQuoteID` FOREIGN KEY (`intQuoteID`) REFERENCES `tblQuote` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblLineItem` ADD CONSTRAINT `fkTblLineItemToTblSubscriptionPlanViaIntSubscriptionPlanID` FOREIGN KEY (`intSubscriptionPlanID`) REFERENCES `tblSubscriptionPlan` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblLineItem` ADD CONSTRAINT `fkTblLineItemToTblUserViaIntUpdatedByUserID` FOREIGN KEY (`intUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLocalizationPermission` ADD CONSTRAINT `fkTblLocalizationPermissionToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblLogAlert` ADD CONSTRAINT `fkTblLogAlertToTblLogMonitoringViaIntLogMonitoringID` FOREIGN KEY (`intLogMonitoringID`) REFERENCES `tblLogMonitoring` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblLogAlert` ADD CONSTRAINT `fkTblLogAlertToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblLogMonitoring` ADD CONSTRAINT `fkTblLogMonitoringToTblLogSavedSearchViaIntSavedSearchID` FOREIGN KEY (`intSavedSearchID`) REFERENCES `tblLogSavedSearch` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblLogSavedSearch` ADD CONSTRAINT `fkTblLogSavedSearchToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblLogSavedSearchUser` ADD CONSTRAINT `fkTblLogSavedSearchUserToTblLogSavedSearchViaIntLogSa1013978150` FOREIGN KEY (`intLogSavedSearchID`) REFERENCES `tblLogSavedSearch` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblLogSavedSearchUser` ADD CONSTRAINT `fkTblLogSavedSearchUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblLookupTableSync` ADD CONSTRAINT `fkTblLookupTableSyncToTblApiConsumerViaIntApiConsumerID` FOREIGN KEY (`intApiConsumerID`) REFERENCES `tblApiConsumer` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblMASourceCounter` ADD CONSTRAINT `fkTblMASourceCounterToTblMASourceListingViaIntMASourceListingID` FOREIGN KEY (`intMASourceListingID`) REFERENCES `tblMASourceListing` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblMASourceListing` ADD CONSTRAINT `fkTblMASourceListingToTblAssetViaIntAssetId` FOREIGN KEY (`intAssetId`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblMASourceListing` ADD CONSTRAINT `fkTblMASourceListingToTblAssetViaIntShipFromID` FOREIGN KEY (`intShipFromID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblMASourceListing` ADD CONSTRAINT `fkTblMASourceListingToTblFileViaIntDefaultImageID` FOREIGN KEY (`intDefaultImageID`) REFERENCES `tblFile` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblMASourceListing` ADD CONSTRAINT `fkTblMASourceListingToTblMASourceSellerViaIntMASourceSellerID` FOREIGN KEY (`intMASourceSellerID`) REFERENCES `tblMASourceSeller` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMASourceListing` ADD CONSTRAINT `fkTblMASourceListingToTblUserViaIntContactID` FOREIGN KEY (`intContactID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblMASourceListing` ADD CONSTRAINT `fkTblMASourceListingToTblUserViaIntPostedByID` FOREIGN KEY (`intPostedByID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblMASourceWarranty` ADD CONSTRAINT `fkTblMASourceWarrantyToTblMASourceListingViaIntMASourc617103367` FOREIGN KEY (`intMASourceListingID`) REFERENCES `tblMASourceListing` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblMessage` ADD CONSTRAINT `fkTblMessageToTblUserViaIntRecipientID` FOREIGN KEY (`intRecipientID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMessage` ADD CONSTRAINT `fkTblMessageToTblUserViaIntSenderID` FOREIGN KEY (`intSenderID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMeterReading` ADD CONSTRAINT `fkTblMeterReadingToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblMeterReading` ADD CONSTRAINT `fkTblMeterReadingToTblMeterReadingUnitViaIntMeterRead1489363467` FOREIGN KEY (`intTenantID`,`intMeterReadingUnitsID`) REFERENCES `tblMeterReadingUnit` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMeterReading` ADD CONSTRAINT `fkTblMeterReadingToTblUserViaIntSubmittedByUserID` FOREIGN KEY (`intSubmittedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMeterReading` ADD CONSTRAINT `fkTblMeterReadingToTblWorkOrderViaIntWorkOrderID` FOREIGN KEY (`intWorkOrderID`) REFERENCES `tblWorkOrder` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblMiscCost` ADD CONSTRAINT `fkTblMiscCostToTblMiscCostTypeViaIntMiscCostTypeID` FOREIGN KEY (`intMiscCostTypeID`) REFERENCES `tblMiscCostType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMiscCost` ADD CONSTRAINT `fkTblMiscCostToTblWorkOrderViaIntWorkOrderID` FOREIGN KEY (`intWorkOrderID`) REFERENCES `tblWorkOrder` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblMove` ADD CONSTRAINT `fkTblMoveToTblAssetViaIntAssetDestinationIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetDestinationID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblMove` ADD CONSTRAINT `fkTblMoveToTblAssetViaIntFromSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intFromSiteID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMove` ADD CONSTRAINT `fkTblMoveToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intSiteID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMove` ADD CONSTRAINT `fkTblMoveToTblBusinessViaIntBusinessDestinationIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intBusinessDestinationID`) REFERENCES `tblBusiness` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblMove` ADD CONSTRAINT `fkTblMoveToTblMoveStatusViaIntMoveStatusIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intMoveStatusID`) REFERENCES `tblMoveStatus` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMove` ADD CONSTRAINT `fkTblMoveToTblProjectViaIntProjectDestinationIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intProjectDestinationID`) REFERENCES `tblProject` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblMove` ADD CONSTRAINT `fkTblMoveToTblUserViaIntConfirmedByID` FOREIGN KEY (`intConfirmedByID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblMove` ADD CONSTRAINT `fkTblMoveToTblUserViaIntMovedByID` FOREIGN KEY (`intMovedByID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblMove` ADD CONSTRAINT `fkTblMoveToTblUserViaIntRejectedByID` FOREIGN KEY (`intRejectedByID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblMove` ADD CONSTRAINT `fkTblMoveToTblUserViaIntRequestedByID` FOREIGN KEY (`intRequestedByID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblMove` ADD CONSTRAINT `fkTblMoveToTblUserViaIntUserDestinationID` FOREIGN KEY (`intUserDestinationID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblMove` ADD CONSTRAINT `fkTblMoveToTblWorkOrderViaIntWorkOrderDestinationIDAn1961401266` FOREIGN KEY (`intTenantID`,`intWorkOrderDestinationID`) REFERENCES `tblWorkOrder` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblMoveAsset` ADD CONSTRAINT `fkTblMoveAssetToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblMoveAsset` ADD CONSTRAINT `fkTblMoveAssetToTblAssetViaIntMovedFromIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intMovedFromID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblMoveAsset` ADD CONSTRAINT `fkTblMoveAssetToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intSiteID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblMoveAsset` ADD CONSTRAINT `fkTblMoveAssetToTblMoveViaIntMoveIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intMoveID`) REFERENCES `tblMove` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblMoveAsset` ADD CONSTRAINT `fkTblMoveAssetToTblReasonToSetAssetOfflineViaIntReason357256957` FOREIGN KEY (`intTenantID`,`intReasonOfflineID`) REFERENCES `tblReasonToSetAssetOffline` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMoveAsset` ADD CONSTRAINT `fkTblMoveAssetToTblReasonToSetAssetOnlineViaIntReasonO239358445` FOREIGN KEY (`intTenantID`,`intReasonOnlineID`) REFERENCES `tblReasonToSetAssetOnline` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMoveBack` ADD CONSTRAINT `fkTblMoveBackToTblAssetViaIntFromSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intFromSiteID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblMoveBack` ADD CONSTRAINT `fkTblMoveBackToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intSiteID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblMoveBack` ADD CONSTRAINT `fkTblMoveBackToTblMoveStatusViaIntMoveStatusIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intMoveStatusID`) REFERENCES `tblMoveStatus` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMoveBack` ADD CONSTRAINT `fkTblMoveBackToTblUserViaIntConfirmedByID` FOREIGN KEY (`intConfirmedByID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblMoveBack` ADD CONSTRAINT `fkTblMoveBackToTblUserViaIntMovedBackByUserID` FOREIGN KEY (`intMovedBackByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblMoveBack` ADD CONSTRAINT `fkTblMoveBackToTblUserViaIntRejectedByID` FOREIGN KEY (`intRejectedByID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblMoveBack` ADD CONSTRAINT `fkTblMoveBackToTblUserViaIntRequestedByID` FOREIGN KEY (`intRequestedByID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblMoveBackAsset` ADD CONSTRAINT `fkTblMoveBackAssetToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblMoveBackAsset` ADD CONSTRAINT `fkTblMoveBackAssetToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intSiteID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblMoveBackAsset` ADD CONSTRAINT `fkTblMoveBackAssetToTblMoveAssetViaIntOriginalMoveAss1788617866` FOREIGN KEY (`intTenantID`,`intOriginalMoveAssetID`) REFERENCES `tblMoveAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblMoveBackAsset` ADD CONSTRAINT `fkTblMoveBackAssetToTblMoveBackViaIntMoveBackIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intMoveBackID`) REFERENCES `tblMoveBack` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblMoveBackAsset` ADD CONSTRAINT `fkTblMoveBackAssetToTblReasonToSetAssetOfflineViaIntRe118386812` FOREIGN KEY (`intTenantID`,`intReasonOfflineID`) REFERENCES `tblReasonToSetAssetOffline` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMoveBackAsset` ADD CONSTRAINT `fkTblMoveBackAssetToTblReasonToSetAssetOnlineViaIntRea440465356` FOREIGN KEY (`intTenantID`,`intReasonOnlineID`) REFERENCES `tblReasonToSetAssetOnline` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMoveSiteManager` ADD CONSTRAINT `fkTblMoveSiteManagerToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intSiteID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblMoveSiteManager` ADD CONSTRAINT `fkTblMoveSiteManagerToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblOrder` ADD CONSTRAINT `fkTblOrderToTblPaymentProfileViaIntPaymentProfileID` FOREIGN KEY (`intPaymentProfileID`) REFERENCES `tblPaymentProfile` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblOrder` ADD CONSTRAINT `fkTblOrderToTblQuoteViaIntQuoteID` FOREIGN KEY (`intQuoteID`) REFERENCES `tblQuote` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblOrder` ADD CONSTRAINT `fkTblOrderToTblSubscriptionPlanViaIntSubscriptionPlanID` FOREIGN KEY (`intSubscriptionPlanID`) REFERENCES `tblSubscriptionPlan` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblOrderRefund` ADD CONSTRAINT `fkTblOrderRefundToTblOrderViaIntOrderID` FOREIGN KEY (`intOrderID`) REFERENCES `tblOrder` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblOrderRefund` ADD CONSTRAINT `fkTblOrderRefundToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblOrderSystemProperty` ADD CONSTRAINT `fkTblOrderSystemPropertyToTblOrderViaIntOrderID` FOREIGN KEY (`intOrderID`) REFERENCES `tblOrder` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblPartner` ADD CONSTRAINT `fkTblPartnerToTblFileContentsViaIntFileContentsID` FOREIGN KEY (`intFileContentsID`) REFERENCES `tblFileContents` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblPartner` ADD CONSTRAINT `fkTblPartnerToTblFileContentsViaIntFileLoginScreenBra1125302094` FOREIGN KEY (`intFileLoginScreenBrandContentsID`) REFERENCES `tblFileContents` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblPartner` ADD CONSTRAINT `fkTblPartnerToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPartsSelection` ADD CONSTRAINT `fkTblPartsSelectionToTblAssetViaIntPartIdAndIntTenantID` FOREIGN KEY (`intTenantID`,`intPartId`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblPaymentProfile` ADD CONSTRAINT `fkTblPaymentProfileToTblAccountAddressViaIntAccountAddressID` FOREIGN KEY (`intAccountAddressID`) REFERENCES `tblAccountAddress` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPaymentProfile` ADD CONSTRAINT `fkTblPaymentProfileToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblProductTimeTracking` ADD CONSTRAINT `fkTblProductTimeTrackingToTblLineItemViaIntOrderLineItemID` FOREIGN KEY (`intOrderLineItemID`) REFERENCES `tblLineItem` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblProductTimeTracking` ADD CONSTRAINT `fkTblProductTimeTrackingToTblUserViaIntTrainerUserID` FOREIGN KEY (`intTrainerUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblProject` ADD CONSTRAINT `fkTblProjectToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intSiteID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblProject` ADD CONSTRAINT `fkTblProjectToTblProjectViaIntParentProjectID` FOREIGN KEY (`intParentProjectID`) REFERENCES `tblProject` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblProjectUser` ADD CONSTRAINT `fkTblProjectUserToTblProjectViaIntProjectID` FOREIGN KEY (`intProjectID`) REFERENCES `tblProject` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblProjectUser` ADD CONSTRAINT `fkTblProjectUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblPurchaseOrder` ADD CONSTRAINT `fkTblPurchaseOrderToTblAccountViaIntAccountID` FOREIGN KEY (`intAccountID`) REFERENCES `tblAccount` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrder` ADD CONSTRAINT `fkTblPurchaseOrderToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrder` ADD CONSTRAINT `fkTblPurchaseOrderToTblAssetViaIntBillToID` FOREIGN KEY (`intBillToID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrder` ADD CONSTRAINT `fkTblPurchaseOrderToTblAssetViaIntLocationID` FOREIGN KEY (`intLocationID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrder` ADD CONSTRAINT `fkTblPurchaseOrderToTblAssetViaIntShipToID` FOREIGN KEY (`intShipToID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrder` ADD CONSTRAINT `fkTblPurchaseOrderToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intSiteID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrder` ADD CONSTRAINT `fkTblPurchaseOrderToTblBillingTermViaIntBillingTermIDA190938202` FOREIGN KEY (`intTenantID`,`intBillingTermID`) REFERENCES `tblBillingTerm` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrder` ADD CONSTRAINT `fkTblPurchaseOrderToTblBusinessViaIntSupplierIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intSupplierID`) REFERENCES `tblBusiness` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrder` ADD CONSTRAINT `fkTblPurchaseOrderToTblBusinessViaIntVendorID` FOREIGN KEY (`intVendorID`) REFERENCES `tblBusiness` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrder` ADD CONSTRAINT `fkTblPurchaseOrderToTblChargeDepartmentViaIntChargeDe1001662196` FOREIGN KEY (`intTenantID`,`intChargeDepartmentID`) REFERENCES `tblChargeDepartment` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrder` ADD CONSTRAINT `fkTblPurchaseOrderToTblPurchaseOrderStatusViaIntPurch1298462554` FOREIGN KEY (`intTenantID`,`intPurchaseOrderStatusID`) REFERENCES `tblPurchaseOrderStatus` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrder` ADD CONSTRAINT `fkTblPurchaseOrderToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrder` ADD CONSTRAINT `fkTblPurchaseOrderToTblUserViaIntLastUpdatedUserID` FOREIGN KEY (`intLastUpdatedUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrder` ADD CONSTRAINT `fkTblPurchaseOrderToTblWorkOrderViaIntWorkOrderID` FOREIGN KEY (`intWorkOrderID`) REFERENCES `tblWorkOrder` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderAdditionalCost` ADD CONSTRAINT `fkTblPurchaseOrderAdditionalCostToTblBusinessViaIntBusinessID` FOREIGN KEY (`intBusinessID`) REFERENCES `tblBusiness` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderAdditionalCost` ADD CONSTRAINT `fkTblPurchaseOrderAdditionalCostToTblPurchaseOrderAddi831037589` FOREIGN KEY (`intPurchaseOrderAdditionalCostTypeID`) REFERENCES `tblPurchaseOrderAdditionalCostType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderAdditionalCost` ADD CONSTRAINT `fkTblPurchaseOrderAdditionalCostToTblPurchaseOrderViaI241590741` FOREIGN KEY (`intPurchaseOrderID`) REFERENCES `tblPurchaseOrder` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderAdditionalCost` ADD CONSTRAINT `fkTblPurchaseOrderAdditionalCostToTblShippingTypeViaI1719464281` FOREIGN KEY (`intShippingTypeID`) REFERENCES `tblShippingType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderLineItem` ADD CONSTRAINT `fkTblPurchaseOrderLineItemToTblAccountViaIntAccountIDA792255745` FOREIGN KEY (`intTenantID`,`intAccountID`) REFERENCES `tblAccount` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderLineItem` ADD CONSTRAINT `fkTblPurchaseOrderLineItemToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblPurchaseOrderLineItem` ADD CONSTRAINT `fkTblPurchaseOrderLineItemToTblAssetViaIntShipToLocat1860331469` FOREIGN KEY (`intTenantID`,`intShipToLocationID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblPurchaseOrderLineItem` ADD CONSTRAINT `fkTblPurchaseOrderLineItemToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intSiteID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderLineItem` ADD CONSTRAINT `fkTblPurchaseOrderLineItemToTblAssetViaIntSourceAssetI466988292` FOREIGN KEY (`intTenantID`,`intSourceAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblPurchaseOrderLineItem` ADD CONSTRAINT `fkTblPurchaseOrderLineItemToTblBusinessViaIntSupplier1580630541` FOREIGN KEY (`intTenantID`,`intSupplierID`) REFERENCES `tblBusiness` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderLineItem` ADD CONSTRAINT `fkTblPurchaseOrderLineItemToTblChargeDepartmentViaInt1427593549` FOREIGN KEY (`intTenantID`,`intChargeDepartmentID`) REFERENCES `tblChargeDepartment` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderLineItem` ADD CONSTRAINT `fkTblPurchaseOrderLineItemToTblPurchaseOrderLineItemV1229238728` FOREIGN KEY (`intParentPurchaseOrderLineItemID`) REFERENCES `tblPurchaseOrderLineItem` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderLineItem` ADD CONSTRAINT `fkTblPurchaseOrderLineItemToTblPurchaseOrderViaIntPur2133802367` FOREIGN KEY (`intTenantID`,`intPurchaseOrderID`) REFERENCES `tblPurchaseOrder` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderLineItem` ADD CONSTRAINT `fkTblPurchaseOrderLineItemToTblStockHistoryViaIntStockHistoryID` FOREIGN KEY (`intStockHistoryID`) REFERENCES `tblStockHistory` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderLineItem` ADD CONSTRAINT `fkTblPurchaseOrderLineItemToTblStockViaIntStockIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intStockID`) REFERENCES `tblStock` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblPurchaseOrderLineItem` ADD CONSTRAINT `fkTblPurchaseOrderLineItemToTblUserViaIntRequestedByUserID` FOREIGN KEY (`intRequestedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderLineItem` ADD CONSTRAINT `fkTblPurchaseOrderLineItemToTblWorkOrderViaIntSourceWo825060644` FOREIGN KEY (`intTenantID`,`intSourceWorkOrderID`) REFERENCES `tblWorkOrder` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblPurchaseOrderLineItemRfq` ADD CONSTRAINT `fkTblPurchaseOrderLineItemRfqToTblPurchaseOrderLineIt1572214171` FOREIGN KEY (`intPurchaseOrderLineItemID`) REFERENCES `tblPurchaseOrderLineItem` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblPurchaseOrderLineItemRfq` ADD CONSTRAINT `fkTblPurchaseOrderLineItemRfqToTblRFQViaIntRFQID` FOREIGN KEY (`intRFQID`) REFERENCES `tblRFQ` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblPurchaseOrderLog` ADD CONSTRAINT `fkTblPurchaseOrderLogToTblPurchaseOrderStatusViaIntFromStatusId` FOREIGN KEY (`intFromStatusId`) REFERENCES `tblPurchaseOrderStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderLog` ADD CONSTRAINT `fkTblPurchaseOrderLogToTblPurchaseOrderStatusViaIntToStatusId` FOREIGN KEY (`intToStatusId`) REFERENCES `tblPurchaseOrderStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderLog` ADD CONSTRAINT `fkTblPurchaseOrderLogToTblPurchaseOrderViaIntPurchaseOrderID` FOREIGN KEY (`intPurchaseOrderID`) REFERENCES `tblPurchaseOrder` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderLog` ADD CONSTRAINT `fkTblPurchaseOrderLogToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderStatusTransition` ADD CONSTRAINT `fkTblPurchaseOrderStatusTransitionToTblPurchaseOrderS1222334400` FOREIGN KEY (`intToStatusID`) REFERENCES `tblPurchaseOrderStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderStatusTransition` ADD CONSTRAINT `fkTblPurchaseOrderStatusTransitionToTblPurchaseOrderS1405731857` FOREIGN KEY (`intFromStatusID`) REFERENCES `tblPurchaseOrderStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderStatusTransitionPermission` ADD CONSTRAINT `fkTblPurchaseOrderStatusTransitionPermissionToTblPurcha97817389` FOREIGN KEY (`intPurchaseOrderStatusTransitionId`) REFERENCES `tblPurchaseOrderStatusTransition` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderUser` ADD CONSTRAINT `fkTblPurchaseOrderUserToTblPurchaseOrderViaIntPurchaseOrderID` FOREIGN KEY (`intPurchaseOrderID`) REFERENCES `tblPurchaseOrder` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblPurchaseOrderUser` ADD CONSTRAINT `fkTblPurchaseOrderUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblQuote` ADD CONSTRAINT `fkTblQuoteToTblUserViaIntAcceptedByUserID` FOREIGN KEY (`intAcceptedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblQuote` ADD CONSTRAINT `fkTblQuoteToTblUserViaIntPreparedByUserID` FOREIGN KEY (`intPreparedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRCAGrouping` ADD CONSTRAINT `fkTblRCAGroupingToTblAssetCategoryViaIntAssetCategory2144176608` FOREIGN KEY (`intTenantID`,`intAssetCategoryID`) REFERENCES `tblAssetCategory` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRCAGrouping` ADD CONSTRAINT `fkTblRCAGroupingToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRCAGrouping` ADD CONSTRAINT `fkTblRCAGroupingToTblRCAProblemViaIntRCAProblemID` FOREIGN KEY (`intRCAProblemID`) REFERENCES `tblRCAProblem` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRCAGroupingAction` ADD CONSTRAINT `fkTblRCAGroupingActionToTblRCAActionViaIntRCAActionID` FOREIGN KEY (`intRCAActionID`) REFERENCES `tblRCAAction` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRCAGroupingAction` ADD CONSTRAINT `fkTblRCAGroupingActionToTblRCAGroupingViaIntRCAGroupingID` FOREIGN KEY (`intRCAGroupingID`) REFERENCES `tblRCAGrouping` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblRCAGroupingCause` ADD CONSTRAINT `fkTblRCAGroupingCauseToTblRCACauseViaIntRCACauseID` FOREIGN KEY (`intRCACauseID`) REFERENCES `tblRCACause` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRCAGroupingCause` ADD CONSTRAINT `fkTblRCAGroupingCauseToTblRCAGroupingViaIntRCAGroupingID` FOREIGN KEY (`intRCAGroupingID`) REFERENCES `tblRCAGrouping` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblReceipt` ADD CONSTRAINT `fkTblReceiptToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intSiteID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReceipt` ADD CONSTRAINT `fkTblReceiptToTblBusinessViaIntSupplierIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intSupplierID`) REFERENCES `tblBusiness` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReceipt` ADD CONSTRAINT `fkTblReceiptToTblPurchaseOrderViaIntPurchaseOrderIDAn1869914267` FOREIGN KEY (`intTenantID`,`intPurchaseOrderID`) REFERENCES `tblPurchaseOrder` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReceipt` ADD CONSTRAINT `fkTblReceiptToTblReceiptStatusViaIntReceiptStatusIDAnd705949051` FOREIGN KEY (`intTenantID`,`intReceiptStatusID`) REFERENCES `tblReceiptStatus` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReceipt` ADD CONSTRAINT `fkTblReceiptToTblUserViaIntReceivedByUserID` FOREIGN KEY (`intReceivedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReceiptLineItem` ADD CONSTRAINT `fkTblReceiptLineItemToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReceiptLineItem` ADD CONSTRAINT `fkTblReceiptLineItemToTblAssetViaIntReceiveToFacility1859181723` FOREIGN KEY (`intTenantID`,`intReceiveToFacilityID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReceiptLineItem` ADD CONSTRAINT `fkTblReceiptLineItemToTblPurchaseOrderLineItemViaIntP1716053076` FOREIGN KEY (`intTenantID`,`intPurchaseOrderLineItemID`) REFERENCES `tblPurchaseOrderLineItem` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReceiptLineItem` ADD CONSTRAINT `fkTblReceiptLineItemToTblReceiptLineItemViaIntParentRe726223574` FOREIGN KEY (`intTenantID`,`intParentReceiptLineItemID`) REFERENCES `tblReceiptLineItem` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReceiptLineItem` ADD CONSTRAINT `fkTblReceiptLineItemToTblReceiptViaIntReceiptIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intReceiptID`) REFERENCES `tblReceipt` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReceiptLineItem` ADD CONSTRAINT `fkTblReceiptLineItemToTblStockViaIntReceiveToStockIDAn593840726` FOREIGN KEY (`intTenantID`,`intReceiveToStockID`) REFERENCES `tblStock` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReceiptLineItem` ADD CONSTRAINT `fkTblReceiptLineItemToTblStockViaIntStockIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intStockID`) REFERENCES `tblStock` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblReceiptStatusTransition` ADD CONSTRAINT `fkTblReceiptStatusTransitionToTblReceiptStatusViaIntF1439095419` FOREIGN KEY (`intFromStatusID`) REFERENCES `tblReceiptStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReceiptStatusTransition` ADD CONSTRAINT `fkTblReceiptStatusTransitionToTblReceiptStatusViaIntToStatusID` FOREIGN KEY (`intToStatusID`) REFERENCES `tblReceiptStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReconciliationControl` ADD CONSTRAINT `fkTblReconciliationControlToTblIntegrationViaIntIntegrationID` FOREIGN KEY (`intIntegrationID`) REFERENCES `tblIntegration` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblRegionUser` ADD CONSTRAINT `fkTblRegionUserToTblAssetViaIntRegionIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intRegionID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblRegionUser` ADD CONSTRAINT `fkTblRegionUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblRegionUserGroup` ADD CONSTRAINT `fkTblRegionUserGroupToTblRegionUserViaIntRegionUserIDA805625715` FOREIGN KEY (`intTenantID`,`intRegionUserID`) REFERENCES `tblRegionUser` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblRegionUserGroup` ADD CONSTRAINT `fkTblRegionUserGroupToTblUserViaIntGroupID` FOREIGN KEY (`intGroupID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblRememberMeCookie` ADD CONSTRAINT `fkTblRememberMeCookieToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblReportPresetParameter` ADD CONSTRAINT `fkTblReportPresetParameterToTblReportPresetViaIntReportPresetID` FOREIGN KEY (`intReportPresetID`) REFERENCES `tblReportPreset` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblReportsToResolved` ADD CONSTRAINT `fkTblReportsToResolvedToTblUserViaIntChildID` FOREIGN KEY (`intChildID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblReportsToResolved` ADD CONSTRAINT `fkTblReportsToResolvedToTblUserViaIntParentID` FOREIGN KEY (`intParentID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblResetPassword` ADD CONSTRAINT `fkTblResetPasswordToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblRFQ` ADD CONSTRAINT `fkTblRFQToTblAssetViaIntBillToID` FOREIGN KEY (`intBillToID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRFQ` ADD CONSTRAINT `fkTblRFQToTblAssetViaIntShipToID` FOREIGN KEY (`intShipToID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRFQ` ADD CONSTRAINT `fkTblRFQToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intSiteID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRFQ` ADD CONSTRAINT `fkTblRFQToTblBusinessViaIntBusinessID` FOREIGN KEY (`intBusinessID`) REFERENCES `tblBusiness` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRFQ` ADD CONSTRAINT `fkTblRFQToTblBusinessViaIntSupplierID` FOREIGN KEY (`intSupplierID`) REFERENCES `tblBusiness` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRFQ` ADD CONSTRAINT `fkTblRFQToTblRFQStatusViaIntRFQStatusID` FOREIGN KEY (`intRFQStatusID`) REFERENCES `tblRFQStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRFQ` ADD CONSTRAINT `fkTblRFQToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRFQAsset` ADD CONSTRAINT `fkTblRFQAssetToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblRFQAsset` ADD CONSTRAINT `fkTblRFQAssetToTblRFQViaIntRFQID` FOREIGN KEY (`intRFQID`) REFERENCES `tblRFQ` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRFQLineItem` ADD CONSTRAINT `fkTblRFQLineItemToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblRFQLineItem` ADD CONSTRAINT `fkTblRFQLineItemToTblPurchaseOrderLineItemViaIntPurch1199844306` FOREIGN KEY (`intPurchaseOrderLineItemID`) REFERENCES `tblPurchaseOrderLineItem` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRFQLineItem` ADD CONSTRAINT `fkTblRFQLineItemToTblRFQLineItemViaIntParentRFQLineItemID` FOREIGN KEY (`intParentRFQLineItemID`) REFERENCES `tblRFQLineItem` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRFQLineItem` ADD CONSTRAINT `fkTblRFQLineItemToTblRFQViaIntRFQID` FOREIGN KEY (`intRFQID`) REFERENCES `tblRFQ` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblRFQQueue` ADD CONSTRAINT `fkTblRFQQueueToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblRFQStatusTransition` ADD CONSTRAINT `fkTblRFQStatusTransitionToTblRFQStatusViaIntFromStatusID` FOREIGN KEY (`intFromStatusID`) REFERENCES `tblRFQStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRFQStatusTransition` ADD CONSTRAINT `fkTblRFQStatusTransitionToTblRFQStatusViaIntToStatusID` FOREIGN KEY (`intToStatusID`) REFERENCES `tblRFQStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRolePermission` ADD CONSTRAINT `fkTblRolePermissionToTblRoleViaIntRoleID` FOREIGN KEY (`intRoleID`) REFERENCES `tblRole` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSalesAccountTracking` ADD CONSTRAINT `fkTblSalesAccountTrackingToTblSalesAccountTrackingVia1405709447` FOREIGN KEY (`intPredecessorID`) REFERENCES `tblSalesAccountTracking` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSalesAccountTracking` ADD CONSTRAINT `fkTblSalesAccountTrackingToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenance` ADD CONSTRAINT `fkTblScheduledMaintenanceToTblAccountViaIntAccountID` FOREIGN KEY (`intAccountID`) REFERENCES `tblAccount` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenance` ADD CONSTRAINT `fkTblScheduledMaintenanceToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intSiteID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenance` ADD CONSTRAINT `fkTblScheduledMaintenanceToTblChargeDepartmentViaIntC1436194572` FOREIGN KEY (`intChargeDepartmentID`) REFERENCES `tblChargeDepartment` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenance` ADD CONSTRAINT `fkTblScheduledMaintenanceToTblMaintenanceTypeViaIntMai181494491` FOREIGN KEY (`intTenantID`,`intMaintenanceTypeID`) REFERENCES `tblMaintenanceType` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenance` ADD CONSTRAINT `fkTblScheduledMaintenanceToTblPriorityViaIntPriorityI1275650139` FOREIGN KEY (`intTenantID`,`intPriorityID`) REFERENCES `tblPriority` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenance` ADD CONSTRAINT `fkTblScheduledMaintenanceToTblProjectViaIntProjectIDA2115077211` FOREIGN KEY (`intTenantID`,`intProjectID`) REFERENCES `tblProject` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenance` ADD CONSTRAINT `fkTblScheduledMaintenanceToTblUserViaIntRequestorUserID` FOREIGN KEY (`intRequestorUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenance` ADD CONSTRAINT `fkTblScheduledMaintenanceToTblWorkOrderStatusViaIntSta685709471` FOREIGN KEY (`intTenantID`,`intStartAsWorkOrderStatusID`) REFERENCES `tblWorkOrderStatus` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenanceActivityLog` ADD CONSTRAINT `fkTblScheduledMaintenanceActivityLogToTblActivityLogVi387516583` FOREIGN KEY (`intActivityLogID`) REFERENCES `tblActivityLog` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblScheduledMaintenanceActivityLog` ADD CONSTRAINT `fkTblScheduledMaintenanceActivityLogToTblAssetEventVi1488379715` FOREIGN KEY (`intAssetEventID`) REFERENCES `tblAssetEvent` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenanceActivityLog` ADD CONSTRAINT `fkTblScheduledMaintenanceActivityLogToTblMeterReading1382911279` FOREIGN KEY (`intMeterReadingID`) REFERENCES `tblMeterReading` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenanceActivityLog` ADD CONSTRAINT `fkTblScheduledMaintenanceActivityLogToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenanceActivityLog` ADD CONSTRAINT `fkTblScheduledMaintenanceActivityLogToTblWorkOrderVia1813118809` FOREIGN KEY (`intWorkOrderID`) REFERENCES `tblWorkOrder` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenanceAsset` ADD CONSTRAINT `fkTblScheduledMaintenanceAssetToTblAssetViaIntAssetID1280349577` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenanceAsset` ADD CONSTRAINT `fkTblScheduledMaintenanceAssetToTblScheduledMaintenanc293404617` FOREIGN KEY (`intTenantID`,`intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblScheduledMaintenanceBusiness` ADD CONSTRAINT `fkTblScheduledMaintenanceBusinessToTblAssetBusinessVia662717954` FOREIGN KEY (`intAssetBusinessID`) REFERENCES `tblAssetBusiness` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblScheduledMaintenanceBusiness` ADD CONSTRAINT `fkTblScheduledMaintenanceBusinessToTblAssetViaIntAsse1735728485` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblScheduledMaintenanceBusiness` ADD CONSTRAINT `fkTblScheduledMaintenanceBusinessToTblBusinessGroupVi1245669179` FOREIGN KEY (`intTenantID`,`intBusinessGroupID`) REFERENCES `tblBusinessGroup` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenanceBusiness` ADD CONSTRAINT `fkTblScheduledMaintenanceBusinessToTblBusinessViaIntBu975362557` FOREIGN KEY (`intTenantID`,`intBusinessID`) REFERENCES `tblBusiness` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblScheduledMaintenanceBusiness` ADD CONSTRAINT `fkTblScheduledMaintenanceBusinessToTblScheduledMainten366387657` FOREIGN KEY (`intTenantID`,`intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblScheduledMaintenanceNesting` ADD CONSTRAINT `fkTblScheduledMaintenanceNestingToTblScheduledMainten1167800448` FOREIGN KEY (`intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblScheduledMaintenanceNesting` ADD CONSTRAINT `fkTblScheduledMaintenanceNestingToTblScheduledMaintena844858350` FOREIGN KEY (`intParentId`) REFERENCES `tblScheduledMaintenanceNesting` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenancePart` ADD CONSTRAINT `fkTblScheduledMaintenancePartToTblAssetViaIntAssetIDAn196016840` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblScheduledMaintenancePart` ADD CONSTRAINT `fkTblScheduledMaintenancePartToTblAssetViaIntPartIDAn1501216245` FOREIGN KEY (`intTenantID`,`intPartID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblScheduledMaintenancePart` ADD CONSTRAINT `fkTblScheduledMaintenancePartToTblScheduledMaintenance240390858` FOREIGN KEY (`intTenantID`,`intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblScheduledMaintenancePart` ADD CONSTRAINT `fkTblScheduledMaintenancePartToTblStockViaIntStockIDAn468551432` FOREIGN KEY (`intTenantID`,`intStockID`) REFERENCES `tblStock` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblScheduledMaintenanceUser` ADD CONSTRAINT `fkTblScheduledMaintenanceUserToTblScheduledMaintenance414386594` FOREIGN KEY (`intTenantID`,`intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblScheduledMaintenanceUser` ADD CONSTRAINT `fkTblScheduledMaintenanceUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledReport` ADD CONSTRAINT `fkTblScheduledReportToTblReportPresetViaIntReportPresetID` FOREIGN KEY (`intReportPresetID`) REFERENCES `tblReportPreset` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblScheduledReport` ADD CONSTRAINT `fkTblScheduledReportToTblUserViaIntCreatorID` FOREIGN KEY (`intCreatorID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblScheduledReportUser` ADD CONSTRAINT `fkTblScheduledReportUserToTblScheduledReportViaIntSche380863882` FOREIGN KEY (`intScheduledReportID`) REFERENCES `tblScheduledReport` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblScheduledReportUser` ADD CONSTRAINT `fkTblScheduledReportUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledTask` ADD CONSTRAINT `fkTblScheduledTaskToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblScheduledTask` ADD CONSTRAINT `fkTblScheduledTaskToTblMeterReadingUnitViaIntMeterRea2123827089` FOREIGN KEY (`intTenantID`,`intMeterReadingUnitID`) REFERENCES `tblMeterReadingUnit` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledTask` ADD CONSTRAINT `fkTblScheduledTaskToTblScheduledMaintenanceNestingVia1548474820` FOREIGN KEY (`intScheduledMaintenanceNestingID`) REFERENCES `tblScheduledMaintenanceNesting` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledTask` ADD CONSTRAINT `fkTblScheduledTaskToTblScheduledMaintenanceViaIntSche1314218161` FOREIGN KEY (`intTenantID`,`intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblScheduledTask` ADD CONSTRAINT `fkTblScheduledTaskToTblScheduledTaskViaIntParentSched1434415465` FOREIGN KEY (`intTenantID`,`intParentScheduledTaskID`) REFERENCES `tblScheduledTask` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblScheduledTask` ADD CONSTRAINT `fkTblScheduledTaskToTblTaskGroupAssetCategoryViaIntTas177913541` FOREIGN KEY (`intTaskGroupAssetCategoryControlID`) REFERENCES `tblTaskGroupAssetCategory` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledTask` ADD CONSTRAINT `fkTblScheduledTaskToTblTaskGroupViaIntTaskGroupControlID` FOREIGN KEY (`intTaskGroupControlID`) REFERENCES `tblTaskGroup` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledTask` ADD CONSTRAINT `fkTblScheduledTaskToTblTaskViaIntTaskControlID` FOREIGN KEY (`intTaskControlID`) REFERENCES `tblTask` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblScheduledTask` ADD CONSTRAINT `fkTblScheduledTaskToTblUserViaIntAssignedToUserID` FOREIGN KEY (`intAssignedToUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledTaskFile` ADD CONSTRAINT `fkTblScheduledTaskFileToTblFileViaIntFileIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intFileID`) REFERENCES `tblFile` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledTaskFile` ADD CONSTRAINT `fkTblScheduledTaskFileToTblScheduledTaskViaIntSchedule960741179` FOREIGN KEY (`intTenantID`,`intScheduledTaskID`) REFERENCES `tblScheduledTask` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblScheduleTrigger` ADD CONSTRAINT `fkTblScheduleTriggerToTblAssetEventTypeViaIntAssetEventTypeID` FOREIGN KEY (`intAssetEventTypeID`) REFERENCES `tblAssetEventType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduleTrigger` ADD CONSTRAINT `fkTblScheduleTriggerToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblScheduleTrigger` ADD CONSTRAINT `fkTblScheduleTriggerToTblMeterReadingUnitViaIntRMeter2093417039` FOREIGN KEY (`intRMeterReadingUnitID`) REFERENCES `tblMeterReadingUnit` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduleTrigger` ADD CONSTRAINT `fkTblScheduleTriggerToTblMeterReadingUnitViaIntROMete1589245054` FOREIGN KEY (`intROMeterReadingUnitID`) REFERENCES `tblMeterReadingUnit` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduleTrigger` ADD CONSTRAINT `fkTblScheduleTriggerToTblScheduledMaintenanceViaIntSch771186307` FOREIGN KEY (`intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblSiteAvailability` ADD CONSTRAINT `fkTblSiteAvailabilityToTblAssetViaIntAllowedSiteID` FOREIGN KEY (`intAllowedSiteID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblSiteAvailability` ADD CONSTRAINT `fkTblSiteAvailabilityToTblAssetViaIntOriginSiteID` FOREIGN KEY (`intOriginSiteID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblSiteSetting` ADD CONSTRAINT `fkTblSiteSettingToTblAssetViaIntSiteID` FOREIGN KEY (`intSiteID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblSiteStock` ADD CONSTRAINT `fkTblSiteStockToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblSiteStock` ADD CONSTRAINT `fkTblSiteStockToTblAssetViaIntFacilityIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intFacilityID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblSiteUser` ADD CONSTRAINT `fkTblSiteUserToTblAssetViaIntSiteIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intSiteID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblSiteUser` ADD CONSTRAINT `fkTblSiteUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblSiteUserGroup` ADD CONSTRAINT `fkTblSiteUserGroupToTblSiteUserViaIntSiteUserIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intSiteUserID`) REFERENCES `tblSiteUser` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblSiteUserGroup` ADD CONSTRAINT `fkTblSiteUserGroupToTblUserViaIntGroupID` FOREIGN KEY (`intGroupID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblStock` ADD CONSTRAINT `fkTblStockToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblStock` ADD CONSTRAINT `fkTblStockToTblAssetViaIntFacilityIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intFacilityID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblStockAdjustmentItem` ADD CONSTRAINT `fkTblStockAdjustmentItemToTblStockViaIntStockID` FOREIGN KEY (`intStockID`) REFERENCES `tblStock` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblStockAdjustmentItem` ADD CONSTRAINT `fkTblStockAdjustmentItemToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblStockCycleCount` ADD CONSTRAINT `fkTblStockCycleCountToTblCycleCountViaIntCycleCountIDA797288248` FOREIGN KEY (`intTenantID`,`intCycleCountID`) REFERENCES `tblCycleCount` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblStockCycleCount` ADD CONSTRAINT `fkTblStockCycleCountToTblStockViaIntStockIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intStockID`) REFERENCES `tblStock` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblStockCycleCount` ADD CONSTRAINT `fkTblStockCycleCountToTblUserViaIntCountedBy` FOREIGN KEY (`intCountedBy`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblStockHistory` ADD CONSTRAINT `fkTblStockHistoryToTblStockViaIntStockID` FOREIGN KEY (`intStockID`) REFERENCES `tblStock` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblStockHistory` ADD CONSTRAINT `fkTblStockHistoryToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblStockPurchaseItem` ADD CONSTRAINT `fkTblStockPurchaseItemToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblStockPurchaseItem` ADD CONSTRAINT `fkTblStockPurchaseItemToTblBusinessViaIntBusinessID` FOREIGN KEY (`intBusinessID`) REFERENCES `tblBusiness` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblStockPurchaseItem` ADD CONSTRAINT `fkTblStockPurchaseItemToTblStockViaIntStockID` FOREIGN KEY (`intStockID`) REFERENCES `tblStock` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblStockPurchaseItem` ADD CONSTRAINT `fkTblStockPurchaseItemToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSubscriptionPlan` ADD CONSTRAINT `fkTblSubscriptionPlanToTblQuoteViaIntQuoteID` FOREIGN KEY (`intQuoteID`) REFERENCES `tblQuote` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSubscriptionPlan` ADD CONSTRAINT `fkTblSubscriptionPlanToTblSubscriptionPlanViaIntReplac185297517` FOREIGN KEY (`intReplacedBySubscriptionPlanID`) REFERENCES `tblSubscriptionPlan` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSubscriptionPlan` ADD CONSTRAINT `fkTblSubscriptionPlanToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSystemMessageUser` ADD CONSTRAINT `fkTblSystemMessageUserToTblMessageViaIntMessageID` FOREIGN KEY (`intMessageID`) REFERENCES `tblMessage` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblSystemMessageUser` ADD CONSTRAINT `fkTblSystemMessageUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblSystemSetting` ADD CONSTRAINT `fkTblSystemSettingToTblWorkOrderStatusViaIntDefaultWo1393144001` FOREIGN KEY (`intDefaultWorkRequestStatusID`) REFERENCES `tblWorkOrderStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSystemSetting` ADD CONSTRAINT `fkTblSystemSettingToTblWorkOrderStatusViaIntDefaultWork81959358` FOREIGN KEY (`intDefaultWorkOrderStatusID`) REFERENCES `tblWorkOrderStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTask` ADD CONSTRAINT `fkTblTaskToTblMeterReadingUnitViaIntMeterReadingUnitID` FOREIGN KEY (`intMeterReadingUnitID`) REFERENCES `tblMeterReadingUnit` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTask` ADD CONSTRAINT `fkTblTaskToTblTaskGroupViaIntTaskGroupID` FOREIGN KEY (`intTaskGroupID`) REFERENCES `tblTaskGroup` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTaskFile` ADD CONSTRAINT `fkTblTaskFileToTblFileViaIntFileIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intFileID`) REFERENCES `tblFile` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTaskFile` ADD CONSTRAINT `fkTblTaskFileToTblTaskViaIntTaskID` FOREIGN KEY (`intTaskID`) REFERENCES `tblTask` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblTaskGroup` ADD CONSTRAINT `fkTblTaskGroupToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTaskGroup` ADD CONSTRAINT `fkTblTaskGroupToTblUserViaIntLastUpdatedByUserID` FOREIGN KEY (`intLastUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTaskGroupAssetCategory` ADD CONSTRAINT `fkTblTaskGroupAssetCategoryToTblAssetCategoryViaIntAss845664912` FOREIGN KEY (`intAssetCategoryID`) REFERENCES `tblAssetCategory` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblTaskGroupAssetCategory` ADD CONSTRAINT `fkTblTaskGroupAssetCategoryToTblTaskGroupViaIntTaskGroupID` FOREIGN KEY (`intTaskGroupID`) REFERENCES `tblTaskGroup` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblTaskResultConfiguration` ADD CONSTRAINT `fkTblTaskResultConfigurationToTblTaskResultValueViaIn1584196194` FOREIGN KEY (`intTaskResultValueID`) REFERENCES `tblTaskResultValue` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblTaskResultValue` ADD CONSTRAINT `fkTblTaskResultValueToTblScheduledTaskViaIntScheduledTaskID` FOREIGN KEY (`intScheduledTaskID`) REFERENCES `tblScheduledTask` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblTaskResultValue` ADD CONSTRAINT `fkTblTaskResultValueToTblTaskViaIntTaskID` FOREIGN KEY (`intTaskID`) REFERENCES `tblTask` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblTaskResultValue` ADD CONSTRAINT `fkTblTaskResultValueToTblWorkOrderTaskViaIntWorkOrder1013594236` FOREIGN KEY (`intTenantID`,`intWorkOrderTaskID`) REFERENCES `tblWorkOrderTask` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblTemplate` ADD CONSTRAINT `fkTblTemplateToTblTemplateCategoryViaIntTemplateCategoryID` FOREIGN KEY (`intTemplateCategoryID`) REFERENCES `tblTemplateCategory` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantDistributionCampaign` ADD CONSTRAINT `fkTblTenantDistributionCampaignToTblDistributionViaIn1248073008` FOREIGN KEY (`intDistributionID`) REFERENCES `tblDistribution` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblTenantFeature` ADD CONSTRAINT `fkTblTenantFeatureToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantFeature` ADD CONSTRAINT `fkTblTenantFeatureToTblUserViaIntUpdatedByUserID` FOREIGN KEY (`intUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantLineItem` ADD CONSTRAINT `fkTblTenantLineItemToTblOrderViaIntReferenceOrderID` FOREIGN KEY (`intReferenceOrderID`) REFERENCES `tblOrder` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblTenantLineItem` ADD CONSTRAINT `fkTblTenantLineItemToTblTenantOrderViaIntTenantOrderID` FOREIGN KEY (`intTenantOrderID`) REFERENCES `tblTenantOrder` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblTenantLineItem` ADD CONSTRAINT `fkTblTenantLineItemToTblUserViaIntUpdatedByUserID` FOREIGN KEY (`intUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantOrder` ADD CONSTRAINT `fkTblTenantOrderToTblPaymentProfileViaIntPaymentProfileID` FOREIGN KEY (`intPaymentProfileID`) REFERENCES `tblPaymentProfile` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantTransaction` ADD CONSTRAINT `fkTblTenantTransactionToTblPaymentProfileViaIntPaymentProfileID` FOREIGN KEY (`intPaymentProfileID`) REFERENCES `tblPaymentProfile` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantTransaction` ADD CONSTRAINT `fkTblTenantTransactionToTblTenantOrderViaIntTenantOrderID` FOREIGN KEY (`intTenantOrderID`) REFERENCES `tblTenantOrder` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantTransaction` ADD CONSTRAINT `fkTblTenantTransactionToTblUserViaIntPaidByUserID` FOREIGN KEY (`intPaidByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingBlack` ADD CONSTRAINT `fkTblTestingBlackToTblTestingBlackViaIntBlackCascadeID` FOREIGN KEY (`intBlackCascadeID`) REFERENCES `tblTestingBlack` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingBlack` ADD CONSTRAINT `fkTblTestingBlackToTblTestingBlackViaIntBlackRestrictID` FOREIGN KEY (`intBlackRestrictID`) REFERENCES `tblTestingBlack` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingBlack` ADD CONSTRAINT `fkTblTestingBlackToTblTestingBlackViaIntBlackSetNullID` FOREIGN KEY (`intBlackSetNullID`) REFERENCES `tblTestingBlack` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingBlack` ADD CONSTRAINT `fkTblTestingBlackToTblTestingWhiteCViaIntWhiteCascadeID` FOREIGN KEY (`intWhiteCascadeID`) REFERENCES `tblTestingWhiteC` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingRedC` ADD CONSTRAINT `fkTblTestingRedCToTblTestingBlackViaIntBlackCascadeID` FOREIGN KEY (`intBlackCascadeID`) REFERENCES `tblTestingBlack` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingRedC` ADD CONSTRAINT `fkTblTestingRedCToTblTestingBlackViaIntBlackRestrictID` FOREIGN KEY (`intBlackRestrictID`) REFERENCES `tblTestingBlack` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingRedC` ADD CONSTRAINT `fkTblTestingRedCToTblTestingBlackViaIntBlackSetNullID` FOREIGN KEY (`intBlackSetNullID`) REFERENCES `tblTestingBlack` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingRedC` ADD CONSTRAINT `fkTblTestingRedCToTblTestingWhiteCViaIntWhiteCCascadeID` FOREIGN KEY (`intWhiteCCascadeID`) REFERENCES `tblTestingWhiteC` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingRedC` ADD CONSTRAINT `fkTblTestingRedCToTblTestingWhiteCViaIntWhiteCRestrictID` FOREIGN KEY (`intWhiteCRestrictID`) REFERENCES `tblTestingWhiteC` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingRedC` ADD CONSTRAINT `fkTblTestingRedCToTblTestingWhiteCViaIntWhiteCSetNullID` FOREIGN KEY (`intWhiteCSetNullID`) REFERENCES `tblTestingWhiteC` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingWhiteC` ADD CONSTRAINT `fkTblTestingWhiteCToTblTestingBlackViaIntBlackCascadeID` FOREIGN KEY (`intBlackCascadeID`) REFERENCES `tblTestingBlack` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingYellow` ADD CONSTRAINT `fkTblTestingYellowToTblTestingBlackViaIntBlackCascadeID` FOREIGN KEY (`intBlackCascadeID`) REFERENCES `tblTestingBlack` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingYellow` ADD CONSTRAINT `fkTblTestingYellowToTblTestingBlackViaIntBlackRestrictID` FOREIGN KEY (`intBlackRestrictID`) REFERENCES `tblTestingBlack` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingYellow` ADD CONSTRAINT `fkTblTestingYellowToTblTestingBlackViaIntBlackSetNullID` FOREIGN KEY (`intBlackSetNullID`) REFERENCES `tblTestingBlack` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingYellow` ADD CONSTRAINT `fkTblTestingYellowToTblTestingWhiteCViaIntWhiteCCascadeID` FOREIGN KEY (`intWhiteCCascadeID`) REFERENCES `tblTestingWhiteC` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingYellow` ADD CONSTRAINT `fkTblTestingYellowToTblTestingWhiteCViaIntWhiteCRestrictID` FOREIGN KEY (`intWhiteCRestrictID`) REFERENCES `tblTestingWhiteC` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingYellow` ADD CONSTRAINT `fkTblTestingYellowToTblTestingWhiteCViaIntWhiteCSetNullID` FOREIGN KEY (`intWhiteCSetNullID`) REFERENCES `tblTestingWhiteC` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestTable` ADD CONSTRAINT `fkTblTestTableToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblUicProfile` ADD CONSTRAINT `fkTblUicProfileToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUser` ADD CONSTRAINT `fkTblUserToTblSSOImplementationViaIntSSOImplementationID` FOREIGN KEY (`intSSOImplementationID`) REFERENCES `tblSSOImplementation` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserAnalyticsPermission` ADD CONSTRAINT `fkTblUserAnalyticsPermissionToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblUserApiConsumerPermission` ADD CONSTRAINT `fkTblUserApiConsumerPermissionToTblApiConsumerViaIntA1679822146` FOREIGN KEY (`intApiConsumerID`) REFERENCES `tblApiConsumer` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblUserApiConsumerPermission` ADD CONSTRAINT `fkTblUserApiConsumerPermissionToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblUserCertification` ADD CONSTRAINT `fkTblUserCertificationToTblCertificationViaIntCertificationID` FOREIGN KEY (`intCertificationID`) REFERENCES `tblCertification` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserCertification` ADD CONSTRAINT `fkTblUserCertificationToTblFileContentsViaIntFileContentsID` FOREIGN KEY (`intFileContentsID`) REFERENCES `tblFileContents` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserCertification` ADD CONSTRAINT `fkTblUserCertificationToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblUserClockInOut` ADD CONSTRAINT `fkTblUserClockInOutToTblAssetViaIntFacilityID` FOREIGN KEY (`intFacilityID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblUserClockInOut` ADD CONSTRAINT `fkTblUserClockInOutToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblUserEpicFeatureNotice` ADD CONSTRAINT `fkTblUserEpicFeatureNoticeToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserGroupDashboardPersona` ADD CONSTRAINT `fkTblUserGroupDashboardPersonaToTblUserViaIntUserGroupID` FOREIGN KEY (`intUserGroupID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblUserMASourceStart` ADD CONSTRAINT `fkTblUserMASourceStartToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserMilestone` ADD CONSTRAINT `fkTblUserMilestoneToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblUserPermission` ADD CONSTRAINT `fkTblUserPermissionToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserPurchaseOrderStatusTransitionPermission` ADD CONSTRAINT `fkTblUserPurchaseOrderStatusTransitionPermissionToTbl1230136470` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserPurchaseOrderStatusTransitionPermission` ADD CONSTRAINT `fkTblUserPurchaseOrderStatusTransitionPermissionToTblP105693494` FOREIGN KEY (`intPermissionID`) REFERENCES `tblPurchaseOrderStatusTransitionPermission` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserReportsToUser` ADD CONSTRAINT `fkTblUserReportsToUserToTblUserViaIntReportsToID` FOREIGN KEY (`intReportsToID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserReportsToUser` ADD CONSTRAINT `fkTblUserReportsToUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserRole` ADD CONSTRAINT `fkTblUserRoleToTblRoleViaIntRoleIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intRoleID`) REFERENCES `tblRole` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserRole` ADD CONSTRAINT `fkTblUserRoleToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserSetting` ADD CONSTRAINT `fkTblUserSettingToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblUserSystemProperty` ADD CONSTRAINT `fkTblUserSystemPropertyToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblUserSystemPropertyLog` ADD CONSTRAINT `fkTblUserSystemPropertyLogToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblV6ApiApplicationUserMapping` ADD CONSTRAINT `fkTblV6ApiApplicationUserMappingToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblV6UserDeletionTracking` ADD CONSTRAINT `fkTblV6UserDeletionTrackingToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWarranty` ADD CONSTRAINT `fkTblWarrantyToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWarranty` ADD CONSTRAINT `fkTblWarrantyToTblBusinessViaIntProvider` FOREIGN KEY (`intProvider`) REFERENCES `tblBusiness` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblWarranty` ADD CONSTRAINT `fkTblWarrantyToTblMeterReadingUnitViaIntMeterReadingUnitsID` FOREIGN KEY (`intMeterReadingUnitsID`) REFERENCES `tblMeterReadingUnit` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkflow` ADD CONSTRAINT `fkTblWorkflowToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkflowActivity` ADD CONSTRAINT `fkTblWorkflowActivityToTblIntegrationActionViaIntInte1606361302` FOREIGN KEY (`intIntegrationActionID`) REFERENCES `tblIntegrationAction` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkflowActivity` ADD CONSTRAINT `fkTblWorkflowActivityToTblIntegrationViaIntIntegrationID` FOREIGN KEY (`intIntegrationID`) REFERENCES `tblIntegration` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkflowActivity` ADD CONSTRAINT `fkTblWorkflowActivityToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkflowActivity` ADD CONSTRAINT `fkTblWorkflowActivityToTblWorkflowActivityViaIntParentWo5804382` FOREIGN KEY (`intParentWorkflowActivityID`) REFERENCES `tblWorkflowActivity` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkflowActivity` ADD CONSTRAINT `fkTblWorkflowActivityToTblWorkflowViaIntParentWorkflowID` FOREIGN KEY (`intParentWorkflowID`) REFERENCES `tblWorkflow` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkflowComment` ADD CONSTRAINT `fkTblWorkflowCommentToTblPurchaseOrderLogViaIntPkPoLogId` FOREIGN KEY (`intPkPoLogId`) REFERENCES `tblPurchaseOrderLog` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkflowComment` ADD CONSTRAINT `fkTblWorkflowCommentToTblPurchaseOrderViaIntPkPurchaseOrderId` FOREIGN KEY (`intPkPurchaseOrderId`) REFERENCES `tblPurchaseOrder` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkflowComment` ADD CONSTRAINT `fkTblWorkflowCommentToTblUserViaIntCommentedByUser` FOREIGN KEY (`intCommentedByUser`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkflowExecution` ADD CONSTRAINT `fkTblWorkflowExecutionToTblWorkflowViaIntWorkflowID` FOREIGN KEY (`intWorkflowID`) REFERENCES `tblWorkflow` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrder` ADD CONSTRAINT `fkTblWorkOrderToTblAccountViaIntAccountID` FOREIGN KEY (`intAccountID`) REFERENCES `tblAccount` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrder` ADD CONSTRAINT `fkTblWorkOrderToTblAssetViaIntSiteID` FOREIGN KEY (`intSiteID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrder` ADD CONSTRAINT `fkTblWorkOrderToTblChargeDepartmentViaIntChargeDepartmentID` FOREIGN KEY (`intChargeDepartmentID`) REFERENCES `tblChargeDepartment` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrder` ADD CONSTRAINT `fkTblWorkOrderToTblMaintenanceTypeViaIntMaintenanceTyp828088054` FOREIGN KEY (`intTenantID`,`intMaintenanceTypeID`) REFERENCES `tblMaintenanceType` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrder` ADD CONSTRAINT `fkTblWorkOrderToTblPriorityViaIntPriorityIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intPriorityID`) REFERENCES `tblPriority` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrder` ADD CONSTRAINT `fkTblWorkOrderToTblProjectViaIntProjectID` FOREIGN KEY (`intProjectID`) REFERENCES `tblProject` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrder` ADD CONSTRAINT `fkTblWorkOrderToTblRCAActionViaIntRCAActionID` FOREIGN KEY (`intRCAActionID`) REFERENCES `tblRCAAction` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrder` ADD CONSTRAINT `fkTblWorkOrderToTblRCACauseViaIntRCACauseID` FOREIGN KEY (`intRCACauseID`) REFERENCES `tblRCACause` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrder` ADD CONSTRAINT `fkTblWorkOrderToTblRCAProblemViaIntRCAProblemID` FOREIGN KEY (`intRCAProblemID`) REFERENCES `tblRCAProblem` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrder` ADD CONSTRAINT `fkTblWorkOrderToTblScheduledMaintenanceViaIntSchedule1469603623` FOREIGN KEY (`intScheduledMaintenanceID`) REFERENCES `tblScheduledMaintenance` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWorkOrder` ADD CONSTRAINT `fkTblWorkOrderToTblUserViaIntCompletedByUserID` FOREIGN KEY (`intCompletedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrder` ADD CONSTRAINT `fkTblWorkOrderToTblUserViaIntLastModifiedByUserID` FOREIGN KEY (`intLastModifiedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrder` ADD CONSTRAINT `fkTblWorkOrderToTblUserViaIntRequestedByUserID` FOREIGN KEY (`intRequestedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrder` ADD CONSTRAINT `fkTblWorkOrderToTblUserViaIntSignedByUserID` FOREIGN KEY (`intSignedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblWorkOrder` ADD CONSTRAINT `fkTblWorkOrderToTblWorkOrderStatusViaIntWorkOrderStat1525344310` FOREIGN KEY (`intTenantID`,`intWorkOrderStatusID`) REFERENCES `tblWorkOrderStatus` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrder` ADD CONSTRAINT `fkTblWorkOrderToTblWorkOrderTaskViaIntOriginWorkOrderT751519152` FOREIGN KEY (`intTenantID`,`intOriginWorkOrderTaskID`) REFERENCES `tblWorkOrderTask` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderAsset` ADD CONSTRAINT `fkTblWorkOrderAssetToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderAsset` ADD CONSTRAINT `fkTblWorkOrderAssetToTblWorkOrderViaIntWorkOrderIDAnd2120539310` FOREIGN KEY (`intTenantID`,`intWorkOrderID`) REFERENCES `tblWorkOrder` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWorkOrderBusiness` ADD CONSTRAINT `fkTblWorkOrderBusinessToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWorkOrderBusiness` ADD CONSTRAINT `fkTblWorkOrderBusinessToTblBusinessGroupViaIntBusines1791499734` FOREIGN KEY (`intTenantID`,`intBusinessGroupID`) REFERENCES `tblBusinessGroup` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderBusiness` ADD CONSTRAINT `fkTblWorkOrderBusinessToTblBusinessViaIntBusinessIDAnd866584152` FOREIGN KEY (`intTenantID`,`intBusinessID`) REFERENCES `tblBusiness` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWorkOrderBusiness` ADD CONSTRAINT `fkTblWorkOrderBusinessToTblWorkOrderViaIntWorkOrderIDA680860950` FOREIGN KEY (`intTenantID`,`intWorkOrderID`) REFERENCES `tblWorkOrder` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWorkOrderLog` ADD CONSTRAINT `fkTblWorkOrderLogToTblAssetViaIntAssetID` FOREIGN KEY (`intAssetID`) REFERENCES `tblAsset` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderLog` ADD CONSTRAINT `fkTblWorkOrderLogToTblMaintenanceTypeViaIntMaintenanceTypeID` FOREIGN KEY (`intMaintenanceTypeID`) REFERENCES `tblMaintenanceType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderLog` ADD CONSTRAINT `fkTblWorkOrderLogToTblStockViaIntStockID` FOREIGN KEY (`intStockID`) REFERENCES `tblStock` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWorkOrderLog` ADD CONSTRAINT `fkTblWorkOrderLogToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderLog` ADD CONSTRAINT `fkTblWorkOrderLogToTblWorkOrderViaIntWorkOrderID` FOREIGN KEY (`intWorkOrderID`) REFERENCES `tblWorkOrder` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWorkOrderPart` ADD CONSTRAINT `fkTblWorkOrderPartToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWorkOrderPart` ADD CONSTRAINT `fkTblWorkOrderPartToTblAssetViaIntPartIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intPartID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWorkOrderPart` ADD CONSTRAINT `fkTblWorkOrderPartToTblStockViaIntStockIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intStockID`) REFERENCES `tblStock` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWorkOrderPart` ADD CONSTRAINT `fkTblWorkOrderPartToTblWorkOrderViaIntWorkOrderIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intWorkOrderID`) REFERENCES `tblWorkOrder` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWorkOrderStatusTransition` ADD CONSTRAINT `fkTblWorkOrderStatusTransitionToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderStatusTransition` ADD CONSTRAINT `fkTblWorkOrderStatusTransitionToTblWorkOrderStatusVia1218096616` FOREIGN KEY (`intFromWorkOrderStatusID`) REFERENCES `tblWorkOrderStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderStatusTransition` ADD CONSTRAINT `fkTblWorkOrderStatusTransitionToTblWorkOrderStatusVia1530727113` FOREIGN KEY (`intToWorkOrderStatusID`) REFERENCES `tblWorkOrderStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderStatusTransition` ADD CONSTRAINT `fkTblWorkOrderStatusTransitionToTblWorkOrderViaIntWorkOrderID` FOREIGN KEY (`intWorkOrderID`) REFERENCES `tblWorkOrder` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWorkOrderTask` ADD CONSTRAINT `fkTblWorkOrderTaskToTblAssetViaIntAssetIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intAssetID`) REFERENCES `tblAsset` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWorkOrderTask` ADD CONSTRAINT `fkTblWorkOrderTaskToTblMeterReadingUnitViaIntMeterRea1040397185` FOREIGN KEY (`intTenantID`,`intMeterReadingUnitID`) REFERENCES `tblMeterReadingUnit` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderTask` ADD CONSTRAINT `fkTblWorkOrderTaskToTblTaskGroupViaIntTaskGroupControlID` FOREIGN KEY (`intTaskGroupControlID`) REFERENCES `tblTaskGroup` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblWorkOrderTask` ADD CONSTRAINT `fkTblWorkOrderTaskToTblTaskResultValueViaIntTaskResultValueID` FOREIGN KEY (`intTaskResultValueID`) REFERENCES `tblTaskResultValue` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblWorkOrderTask` ADD CONSTRAINT `fkTblWorkOrderTaskToTblWorkOrderTaskViaIntParentWorkOr530918535` FOREIGN KEY (`intTenantID`,`intParentWorkOrderTaskID`) REFERENCES `tblWorkOrderTask` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWorkOrderTask` ADD CONSTRAINT `fkTblWorkOrderTaskToTblWorkOrderViaIntWorkOrderIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intWorkOrderID`) REFERENCES `tblWorkOrder` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWorkOrderTaskAdditionalProperties` ADD CONSTRAINT `fkTblWorkOrderTaskAdditionalPropertiesToTblWorkOrderTa906842214` FOREIGN KEY (`intWorkOrderTaskID`) REFERENCES `tblWorkOrderTask` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWorkOrderTaskFile` ADD CONSTRAINT `fkTblWorkOrderTaskFileToTblFileViaIntFileIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intFileID`) REFERENCES `tblFile` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderTaskFile` ADD CONSTRAINT `fkTblWorkOrderTaskFileToTblWorkOrderTaskViaIntWorkOrd1293168971` FOREIGN KEY (`intTenantID`,`intWorkOrderTaskID`) REFERENCES `tblWorkOrderTask` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWorkOrderTaskUser` ADD CONSTRAINT `fkTblWorkOrderTaskUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWorkOrderTaskUser` ADD CONSTRAINT `fkTblWorkOrderTaskUserToTblWorkOrderTaskViaIntWorkOrderTaskID` FOREIGN KEY (`intWorkOrderTaskID`) REFERENCES `tblWorkOrderTask` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWorkOrderUser` ADD CONSTRAINT `fkTblWorkOrderUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderUser` ADD CONSTRAINT `fkTblWorkOrderUserToTblWorkOrderViaIntWorkOrderIDAndIntTenantID` FOREIGN KEY (`intTenantID`,`intWorkOrderID`) REFERENCES `tblWorkOrder` (`intTenantID`,`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

