ALTER TABLE `tblAccount` ADD CONSTRAINT `fkTblAccountToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAccountAddress` ADD CONSTRAINT `fkTblAccountAddressToTblAccountAddressTypeViaIntAccoun758240575` FOREIGN KEY (`intAccountAddressTypeID`) REFERENCES `tblAccountAddressType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAccountAddress` ADD CONSTRAINT `fkTblAccountAddressToTblCountryViaIntCountryID` FOREIGN KEY (`intCountryID`) REFERENCES `tblCountry` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAccountAddress` ADD CONSTRAINT `fkTblAccountAddressToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAccountLog` ADD CONSTRAINT `fkTblAccountLogToTblAccountLogStatusViaIntAccountLogStatusID` FOREIGN KEY (`intAccountLogStatusID`) REFERENCES `tblAccountLogStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAccountLog` ADD CONSTRAINT `fkTblAccountLogToTblAccountLogTypeViaIntAccountLogTypeID` FOREIGN KEY (`intAccountLogTypeID`) REFERENCES `tblAccountLogType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAccountLog` ADD CONSTRAINT `fkTblAccountLogToTblClientSessionViaIntClientSessionID` FOREIGN KEY (`intClientSessionID`) REFERENCES `tblClientSession` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAccountLog` ADD CONSTRAINT `fkTblAccountLogToTblProductTierViaIntProductTierId` FOREIGN KEY (`intProductTierId`) REFERENCES `tblProductTier` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAccountLog` ADD CONSTRAINT `fkTblAccountLogToTblRecurringTypeViaIntRecurringTypeId` FOREIGN KEY (`intRecurringTypeId`) REFERENCES `tblRecurringType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAccountLog` ADD CONSTRAINT `fkTblAccountLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAccountLogDiscount` ADD CONSTRAINT `fkTblAccountLogDiscountToTblProductViaIntProductAppliedID` FOREIGN KEY (`intProductAppliedID`) REFERENCES `tblProduct` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAccountLogDiscount` ADD CONSTRAINT `fkTblAccountLogDiscountToTblPromotionalOfferViaIntPro1160027146` FOREIGN KEY (`intPromotionAppliedID`) REFERENCES `tblPromotionalOffer` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAccountLogDiscount` ADD CONSTRAINT `fkTblAccountLogDiscountToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAccountLogOrder` ADD CONSTRAINT `fkTblAccountLogOrderToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAccountNotes` ADD CONSTRAINT `fkTblAccountNotesToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblActivityLog` ADD CONSTRAINT `fkTblActivityLogToTblActivityLogStatusViaIntActivityLogStatusID` FOREIGN KEY (`intActivityLogStatusID`) REFERENCES `tblActivityLogStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblActivityLog` ADD CONSTRAINT `fkTblActivityLogToTblActivityLogTypeViaIntActivityLogTypeID` FOREIGN KEY (`intActivityLogTypeID`) REFERENCES `tblActivityLogType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblActivityLog` ADD CONSTRAINT `fkTblActivityLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblApiConsumer` ADD CONSTRAINT `fkTblApiConsumerToTblApiConsumerTypeViaIntApiConsumerTypeID` FOREIGN KEY (`intApiConsumerTypeID`) REFERENCES `tblApiConsumerType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblApiConsumer` ADD CONSTRAINT `fkTblApiConsumerToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblApiConsumerUsage` ADD CONSTRAINT `fkTblApiConsumerUsageToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblApiUsage` ADD CONSTRAINT `fkTblApiUsageToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAsset` ADD CONSTRAINT `fkTblAssetToTblAssetStatusViaIntAssetStatusID` FOREIGN KEY (`intAssetStatusID`) REFERENCES `tblAssetStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAsset` ADD CONSTRAINT `fkTblAssetToTblCountryViaIntCountryID` FOREIGN KEY (`intCountryID`) REFERENCES `tblCountry` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAsset` ADD CONSTRAINT `fkTblAssetToTblCurrencyViaIntLastPriceCurrencyID` FOREIGN KEY (`intLastPriceCurrencyID`) REFERENCES `tblCurrency` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAsset` ADD CONSTRAINT `fkTblAssetToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetActivityLog` ADD CONSTRAINT `fkTblAssetActivityLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetBusiness` ADD CONSTRAINT `fkTblAssetBusinessToTblBusinessRoleTypeViaIntBusinessRoleTypeID` FOREIGN KEY (`intBusinessRoleTypeID`) REFERENCES `tblBusinessRoleType` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblAssetBusiness` ADD CONSTRAINT `fkTblAssetBusinessToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetCategory` ADD CONSTRAINT `fkTblAssetCategoryToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetCategoryBarcodeFormatType` ADD CONSTRAINT `fkTblAssetCategoryBarcodeFormatTypeToTblBarcodeFormat1615070719` FOREIGN KEY (`intBarcodeFormatTypeID`) REFERENCES `tblBarcodeFormatType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetCategoryBarcodeFormatType` ADD CONSTRAINT `fkTblAssetCategoryBarcodeFormatTypeToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetCategoryResolved` ADD CONSTRAINT `fkTblAssetCategoryResolvedToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetClassification` ADD CONSTRAINT `fkTblAssetClassificationToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetClassificationLog` ADD CONSTRAINT `fkTblAssetClassificationLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetConsumingReference` ADD CONSTRAINT `fkTblAssetConsumingReferenceToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetDepletionTracking` ADD CONSTRAINT `fkTblAssetDepletionTrackingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetEvent` ADD CONSTRAINT `fkTblAssetEventToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetEventType` ADD CONSTRAINT `fkTblAssetEventTypeToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetEventTypeAsset` ADD CONSTRAINT `fkTblAssetEventTypeAssetToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetOfflineTracker` ADD CONSTRAINT `fkTblAssetOfflineTrackerToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetProperty` ADD CONSTRAINT `fkTblAssetPropertyToTblAssetPropertyTypeViaIntAssetPr1673953103` FOREIGN KEY (`intAssetPropertyTypeID`) REFERENCES `tblAssetPropertyType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetProperty` ADD CONSTRAINT `fkTblAssetPropertyToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetPropertyDomainElement` ADD CONSTRAINT `fkTblAssetPropertyDomainElementToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetPropertyValue` ADD CONSTRAINT `fkTblAssetPropertyValueToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetPurchaseTracking` ADD CONSTRAINT `fkTblAssetPurchaseTrackingToTblCurrencyViaIntPurchaseCurrencyID` FOREIGN KEY (`intPurchaseCurrencyID`) REFERENCES `tblCurrency` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetPurchaseTracking` ADD CONSTRAINT `fkTblAssetPurchaseTrackingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetResolved` ADD CONSTRAINT `fkTblAssetResolvedToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetSelection` ADD CONSTRAINT `fkTblAssetSelectionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetUser` ADD CONSTRAINT `fkTblAssetUserToTblAssetUserTypeViaIntAssetUserTypeID` FOREIGN KEY (`intAssetUserTypeID`) REFERENCES `tblAssetUserType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAssetUser` ADD CONSTRAINT `fkTblAssetUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAuditLog` ADD CONSTRAINT `fkTblAuditLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAuditLogArchive` ADD CONSTRAINT `fkTblAuditLogArchiveToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblAuthorization` ADD CONSTRAINT `fkTblAuthorizationToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblBillingTerm` ADD CONSTRAINT `fkTblBillingTermToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblBOMGroup` ADD CONSTRAINT `fkTblBOMGroupToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblBOMGroupPart` ADD CONSTRAINT `fkTblBOMGroupPartToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblBranding` ADD CONSTRAINT `fkTblBrandingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblBusiness` ADD CONSTRAINT `fkTblBusinessToTblBusinessClassificationViaIntBusinessCl8954574` FOREIGN KEY (`intBusinessClassificationID`) REFERENCES `tblBusinessClassification` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblBusiness` ADD CONSTRAINT `fkTblBusinessToTblBusinessTypeDefViaIntBusinessTypeID` FOREIGN KEY (`intBusinessTypeID`) REFERENCES `tblBusinessTypeDef` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblBusiness` ADD CONSTRAINT `fkTblBusinessToTblCohortViaIntCohortID` FOREIGN KEY (`intCohortID`) REFERENCES `tblCohort` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblBusiness` ADD CONSTRAINT `fkTblBusinessToTblCountryViaIntCountryID` FOREIGN KEY (`intCountryID`) REFERENCES `tblCountry` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblBusiness` ADD CONSTRAINT `fkTblBusinessToTblCurrencyViaIntPrimaryCurrencyID` FOREIGN KEY (`intPrimaryCurrencyID`) REFERENCES `tblCurrency` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblBusiness` ADD CONSTRAINT `fkTblBusinessToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblBusinessContact` ADD CONSTRAINT `fkTblBusinessContactToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblBusinessGroup` ADD CONSTRAINT `fkTblBusinessGroupToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblBusinessRole` ADD CONSTRAINT `fkTblBusinessRoleToTblBusinessRoleTypeViaIntBusinessRoleTypeID` FOREIGN KEY (`intBusinessRoleTypeID`) REFERENCES `tblBusinessRoleType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblBusinessRole` ADD CONSTRAINT `fkTblBusinessRoleToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblCalendarEvent` ADD CONSTRAINT `fkTblCalendarEventToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblCategorySetting` ADD CONSTRAINT `fkTblCategorySettingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblCertification` ADD CONSTRAINT `fkTblCertificationToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblChargeDepartment` ADD CONSTRAINT `fkTblChargeDepartmentToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblClientSession` ADD CONSTRAINT `fkTblClientSessionToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblCounter` ADD CONSTRAINT `fkTblCounterToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblCreditCard` ADD CONSTRAINT `fkTblCreditCardToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblCrmMetricsUser` ADD CONSTRAINT `fkTblCrmMetricsUserToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblCustomField` ADD CONSTRAINT `fkTblCustomFieldToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblCustomFieldValue` ADD CONSTRAINT `fkTblCustomFieldValueToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblCustomQuery` ADD CONSTRAINT `fkTblCustomQueryToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblCycleCount` ADD CONSTRAINT `fkTblCycleCountToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDashboard` ADD CONSTRAINT `fkTblDashboardToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblDashboardWidgetPosition` ADD CONSTRAINT `fkTblDashboardWidgetPositionToTblDashboardViaIntDashboardID` FOREIGN KEY (`intDashboardID`) REFERENCES `tblDashboard` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblDashboardWidgetPosition` ADD CONSTRAINT `fkTblDashboardWidgetPositionToTblDashboardWidgetViaIntWidgetID` FOREIGN KEY (`intWidgetID`) REFERENCES `tblDashboardWidget` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblDashboardWidgetPosition` ADD CONSTRAINT `fkTblDashboardWidgetPositionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDashboardWidgetPositionFilter` ADD CONSTRAINT `fkTblDashboardWidgetPositionFilterToTblDashboardWidge1437204759` FOREIGN KEY (`intSubQueryID`) REFERENCES `tblDashboardWidgetQuery` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblDashboardWidgetPositionFilter` ADD CONSTRAINT `fkTblDashboardWidgetPositionFilterToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDashboardWidgetPositionParameter` ADD CONSTRAINT `fkTblDashboardWidgetPositionParameterToTblDashboardWi1451014240` FOREIGN KEY (`intDashboardWidgetParameterID`) REFERENCES `tblDashboardWidgetParameter` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblDashboardWidgetPositionParameter` ADD CONSTRAINT `fkTblDashboardWidgetPositionParameterToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDatabaseExport` ADD CONSTRAINT `fkTblDatabaseExportToTblApplicationViaIntApplicationID` FOREIGN KEY (`intApplicationID`) REFERENCES `tblApplication` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDatabaseExport` ADD CONSTRAINT `fkTblDatabaseExportToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDdColumn` ADD CONSTRAINT `fkTblDdColumnToTblAssetCategoryViaIntLegacyAssetCategoryID` FOREIGN KEY (`intLegacyAssetCategoryID`) REFERENCES `tblAssetCategory` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDdColumn` ADD CONSTRAINT `fkTblDdColumnToTblCustomFieldViaIntImportedFromCustomFieldID` FOREIGN KEY (`intImportedFromCustomFieldID`) REFERENCES `tblCustomField` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDdCustomTableRow` ADD CONSTRAINT `fkTblDdCustomTableRowToTblDdTableViaIntDdTableID` FOREIGN KEY (`intDdTableID`) REFERENCES `tblDdTable` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDdCustomTableRow` ADD CONSTRAINT `fkTblDdCustomTableRowToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDistribution` ADD CONSTRAINT `fkTblDistributionToTblDistributionBillingPlanViaIntDis844418560` FOREIGN KEY (`intDistributionBillingPlanID`) REFERENCES `tblDistributionBillingPlan` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDistribution` ADD CONSTRAINT `fkTblDistributionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDistributionPaymentMethod` ADD CONSTRAINT `fkTblDistributionPaymentMethodToTblPaymentMethodViaIn1784404493` FOREIGN KEY (`intPaymentMethodID`) REFERENCES `tblPaymentMethod` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDistributionPaymentMethod` ADD CONSTRAINT `fkTblDistributionPaymentMethodToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDistributionPricingTier` ADD CONSTRAINT `fkTblDistributionPricingTierToTblPricingTierViaIntPricingTierID` FOREIGN KEY (`intPricingTierID`) REFERENCES `tblPricingTier` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblDistributionPricingTier` ADD CONSTRAINT `fkTblDistributionPricingTierToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDistributionRecurringType` ADD CONSTRAINT `fkTblDistributionRecurringTypeToTblRecurringTypeViaInt313665341` FOREIGN KEY (`intRecurringTypeID`) REFERENCES `tblRecurringType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDistributionRecurringType` ADD CONSTRAINT `fkTblDistributionRecurringTypeToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDistributionUnitPricingRule` ADD CONSTRAINT `fkTblDistributionUnitPricingRuleToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblEmailAttachment` ADD CONSTRAINT `fkTblEmailAttachmentToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblEmailMessage` ADD CONSTRAINT `fkTblEmailMessageToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblEvent` ADD CONSTRAINT `fkTblEventToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFeatureProperty` ADD CONSTRAINT `fkTblFeaturePropertyToTblTenantFeatureViaIntTenantFeatureID` FOREIGN KEY (`intTenantFeatureID`) REFERENCES `tblTenantFeature` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFeatureProperty` ADD CONSTRAINT `fkTblFeaturePropertyToTblUserViaIntUpdatedByUserID` FOREIGN KEY (`intUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFile` ADD CONSTRAINT `fkTblFileToTblReportTemplateViaIntReportTemplateID` FOREIGN KEY (`intReportTemplateID`) REFERENCES `tblReportTemplate` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblFile` ADD CONSTRAINT `fkTblFileToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFileContents` ADD CONSTRAINT `fkTblFileContentsToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFirewall` ADD CONSTRAINT `fkTblFirewallToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFirewallLog` ADD CONSTRAINT `fkTblFirewallLogToTblApplicationViaIntApplicationID` FOREIGN KEY (`intApplicationID`) REFERENCES `tblApplication` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFirewallLog` ADD CONSTRAINT `fkTblFirewallLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFirewallRule` ADD CONSTRAINT `fkTblFirewallRuleToTblApplicationViaIntApplicationID` FOREIGN KEY (`intApplicationID`) REFERENCES `tblApplication` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFirewallRule` ADD CONSTRAINT `fkTblFirewallRuleToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblGHGCalcAsset` ADD CONSTRAINT `fkTblGHGCalcAssetToTblGHGCalcFuelViaIntFuelID` FOREIGN KEY (`intFuelID`) REFERENCES `tblGHGCalcFuel` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblGHGCalcAsset` ADD CONSTRAINT `fkTblGHGCalcAssetToTblGHGCalcFuelViaIntSubFuelID` FOREIGN KEY (`intSubFuelID`) REFERENCES `tblGHGCalcFuel` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblGHGCalcAsset` ADD CONSTRAINT `fkTblGHGCalcAssetToTblGHGCalcLocationViaIntLocationID` FOREIGN KEY (`intLocationID`) REFERENCES `tblGHGCalcLocation` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblGHGCalcAsset` ADD CONSTRAINT `fkTblGHGCalcAssetToTblGHGCalcLocationViaIntSubLocationID` FOREIGN KEY (`intSubLocationID`) REFERENCES `tblGHGCalcLocation` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblGHGCalcAsset` ADD CONSTRAINT `fkTblGHGCalcAssetToTblGHGCalcVehicleViaIntSubVehicleID` FOREIGN KEY (`intSubVehicleID`) REFERENCES `tblGHGCalcVehicle` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblGHGCalcAsset` ADD CONSTRAINT `fkTblGHGCalcAssetToTblGHGCalcVehicleViaIntVehicleID` FOREIGN KEY (`intVehicleID`) REFERENCES `tblGHGCalcVehicle` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblGHGCalcAsset` ADD CONSTRAINT `fkTblGHGCalcAssetToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblGroupPermissions` ADD CONSTRAINT `fkTblGroupPermissionsToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblGuestActions` ADD CONSTRAINT `fkTblGuestActionsToTblClientSessionViaIntClientSessionID` FOREIGN KEY (`intClientSessionID`) REFERENCES `tblClientSession` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblGuestActions` ADD CONSTRAINT `fkTblGuestActionsToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblGuestMrFormField` ADD CONSTRAINT `fkTblGuestMrFormFieldToTblDdColumnViaIntDdColumnID` FOREIGN KEY (`intDdColumnID`) REFERENCES `tblDdColumn` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblGuestMrFormField` ADD CONSTRAINT `fkTblGuestMrFormFieldToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblIntegration` ADD CONSTRAINT `fkTblIntegrationToTblIntegrationEndpointFormatViaIntI1544684030` FOREIGN KEY (`intIntegrationEndpointFormatID`) REFERENCES `tblIntegrationEndpointFormat` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblIntegration` ADD CONSTRAINT `fkTblIntegrationToTblIntegrationProtocolViaIntIntegrat326181182` FOREIGN KEY (`intIntegrationProtocolID`) REFERENCES `tblIntegrationProtocol` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblIntegration` ADD CONSTRAINT `fkTblIntegrationToTblIntegrationSystemViaIntIntegrationSystemID` FOREIGN KEY (`intIntegrationSystemID`) REFERENCES `tblIntegrationSystem` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblIntegration` ADD CONSTRAINT `fkTblIntegrationToTblIntegrationTemplateViaIntIntegrat356429566` FOREIGN KEY (`intIntegrationTemplateID`) REFERENCES `tblIntegrationTemplate` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblIntegration` ADD CONSTRAINT `fkTblIntegrationToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblIntegrationAction` ADD CONSTRAINT `fkTblIntegrationActionToTblIntegrationActionAdvancedEn764610804` FOREIGN KEY (`intIntegrationActionAdvancedEndpointID`) REFERENCES `tblIntegrationActionAdvancedEndpoint` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblIntegrationAction` ADD CONSTRAINT `fkTblIntegrationActionToTblIntegrationActionTypeViaInt175799340` FOREIGN KEY (`intIntegrationActionTypeID`) REFERENCES `tblIntegrationActionType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblIntegrationAction` ADD CONSTRAINT `fkTblIntegrationActionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblIntegrationActionLog` ADD CONSTRAINT `fkTblIntegrationActionLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblIntegrationConfigurableProperty` ADD CONSTRAINT `fkTblIntegrationConfigurablePropertyToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblIntegrationParameter` ADD CONSTRAINT `fkTblIntegrationParameterToTblIntegrationParameterTyp1436430319` FOREIGN KEY (`intIntegrationParameterTypeID`) REFERENCES `tblIntegrationParameterType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblIntegrationParameter` ADD CONSTRAINT `fkTblIntegrationParameterToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblInventoryTransaction` ADD CONSTRAINT `fkTblInventoryTransactionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblKpiResult` ADD CONSTRAINT `fkTblKpiResultToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLastMeterReading` ADD CONSTRAINT `fkTblLastMeterReadingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLineItem` ADD CONSTRAINT `fkTblLineItemToTblBillingTypeViaIntBillingTypeID` FOREIGN KEY (`intBillingTypeID`) REFERENCES `tblBillingType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLineItem` ADD CONSTRAINT `fkTblLineItemToTblProductTierViaIntProductTierID` FOREIGN KEY (`intProductTierID`) REFERENCES `tblProductTier` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLineItem` ADD CONSTRAINT `fkTblLineItemToTblProductViaIntProductID` FOREIGN KEY (`intProductID`) REFERENCES `tblProduct` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLineItem` ADD CONSTRAINT `fkTblLineItemToTblPromotionalOfferViaIntPromotionalOfferID` FOREIGN KEY (`intPromotionalOfferID`) REFERENCES `tblPromotionalOffer` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLineItem` ADD CONSTRAINT `fkTblLineItemToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLocalization` ADD CONSTRAINT `fkTblLocalizationToTblUserViaIntCreatedByID` FOREIGN KEY (`intCreatedByID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLocalization` ADD CONSTRAINT `fkTblLocalizationToTblUserViaIntLastModifiedByID` FOREIGN KEY (`intLastModifiedByID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLocalizationArchive` ADD CONSTRAINT `fkTblLocalizationArchiveToTblUserViaIntCreatedByID` FOREIGN KEY (`intCreatedByID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLocalizationArchive` ADD CONSTRAINT `fkTblLocalizationArchiveToTblUserViaIntLastModifiedByID` FOREIGN KEY (`intLastModifiedByID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLocalizationPermission` ADD CONSTRAINT `fkTblLocalizationPermissionToTblLocalizationViaIntLoca946020240` FOREIGN KEY (`intLocalizationID`) REFERENCES `tblLocalization` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblLocalizationPermission` ADD CONSTRAINT `fkTblLocalizationPermissionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLogAlert` ADD CONSTRAINT `fkTblLogAlertToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLogMonitoring` ADD CONSTRAINT `fkTblLogMonitoringToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLogSavedSearch` ADD CONSTRAINT `fkTblLogSavedSearchToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLogSavedSearchUser` ADD CONSTRAINT `fkTblLogSavedSearchUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLogUser` ADD CONSTRAINT `fkTblLogUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMaintenanceType` ADD CONSTRAINT `fkTblMaintenanceTypeToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMASourceCounter` ADD CONSTRAINT `fkTblMASourceCounterToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMASourceListing` ADD CONSTRAINT `fkTblMASourceListingToTblCurrencyViaIntCurrencyID` FOREIGN KEY (`intCurrencyID`) REFERENCES `tblCurrency` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblMASourceListing` ADD CONSTRAINT `fkTblMASourceListingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMASourceSeller` ADD CONSTRAINT `fkTblMASourceSellerToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMASourceWarranty` ADD CONSTRAINT `fkTblMASourceWarrantyToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMessage` ADD CONSTRAINT `fkTblMessageToTblMessageFolderViaIntMessageFolderID` FOREIGN KEY (`intMessageFolderID`) REFERENCES `tblMessageFolder` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMessage` ADD CONSTRAINT `fkTblMessageToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMeterReading` ADD CONSTRAINT `fkTblMeterReadingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMeterReadingUnit` ADD CONSTRAINT `fkTblMeterReadingUnitToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMiscCost` ADD CONSTRAINT `fkTblMiscCostToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMiscCostType` ADD CONSTRAINT `fkTblMiscCostTypeToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMove` ADD CONSTRAINT `fkTblMoveToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMoveAsset` ADD CONSTRAINT `fkTblMoveAssetToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMoveBack` ADD CONSTRAINT `fkTblMoveBackToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMoveBackAsset` ADD CONSTRAINT `fkTblMoveBackAssetToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMoveSiteManager` ADD CONSTRAINT `fkTblMoveSiteManagerToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblMoveStatus` ADD CONSTRAINT `fkTblMoveStatusToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblNetworkSettings` ADD CONSTRAINT `fkTblNetworkSettingsToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblOrder` ADD CONSTRAINT `fkTblOrderToTblRecurringTypeViaIntRecurringTypeID` FOREIGN KEY (`intRecurringTypeID`) REFERENCES `tblRecurringType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblOrder` ADD CONSTRAINT `fkTblOrderToTblTenantViaIntIssuedByTenantID` FOREIGN KEY (`intIssuedByTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblOrder` ADD CONSTRAINT `fkTblOrderToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblOrderRefund` ADD CONSTRAINT `fkTblOrderRefundToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblOrderSystemProperty` ADD CONSTRAINT `fkTblOrderSystemPropertyToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPartner` ADD CONSTRAINT `fkTblPartnerToTblAffiliateProgramViaIntAffiliateProgramID` FOREIGN KEY (`intAffiliateProgramID`) REFERENCES `tblAffiliateProgram` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPartner` ADD CONSTRAINT `fkTblPartnerToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPartsSelection` ADD CONSTRAINT `fkTblPartsSelectionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPassword` ADD CONSTRAINT `fkTblPasswordToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblPaymentProfile` ADD CONSTRAINT `fkTblPaymentProfileToTblPaymentMethodViaIntPaymentMethodID` FOREIGN KEY (`intPaymentMethodID`) REFERENCES `tblPaymentMethod` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPaymentProfile` ADD CONSTRAINT `fkTblPaymentProfileToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPerRecordValue` ADD CONSTRAINT `fkTblPerRecordValueToTblResourceViaIntTableResourceID` FOREIGN KEY (`intTableResourceID`) REFERENCES `tblResource` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPerRecordValue` ADD CONSTRAINT `fkTblPerRecordValueToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPricingTier` ADD CONSTRAINT `fkTblPricingTierToTblUserViaIntLastUpdatedByUserID` FOREIGN KEY (`intLastUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPriority` ADD CONSTRAINT `fkTblPriorityToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblProduct` ADD CONSTRAINT `fkTblProductToTblUserViaIntLastUpdatedByUserID` FOREIGN KEY (`intLastUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblProductDiscountControl` ADD CONSTRAINT `fkTblProductDiscountControlToTblUserViaIntLastUpdatedByUserID` FOREIGN KEY (`intLastUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblProductDiscountControl` ADD CONSTRAINT `fkTblProductDiscountControlToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblProductTimeTracking` ADD CONSTRAINT `fkTblProductTimeTrackingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblProject` ADD CONSTRAINT `fkTblProjectToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblProjectUser` ADD CONSTRAINT `fkTblProjectUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPromotionalOffer` ADD CONSTRAINT `fkTblPromotionalOfferToTblUserViaIntLastUpdatedByUserID` FOREIGN KEY (`intLastUpdatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrder` ADD CONSTRAINT `fkTblPurchaseOrderToTblCountryViaIntBillToCountryID` FOREIGN KEY (`intBillToCountryID`) REFERENCES `tblCountry` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrder` ADD CONSTRAINT `fkTblPurchaseOrderToTblCountryViaIntShipToCountryID` FOREIGN KEY (`intShipToCountryID`) REFERENCES `tblCountry` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrder` ADD CONSTRAINT `fkTblPurchaseOrderToTblCountryViaIntSupplierCountryID` FOREIGN KEY (`intSupplierCountryID`) REFERENCES `tblCountry` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrder` ADD CONSTRAINT `fkTblPurchaseOrderToTblCurrencyViaIntPurchaseCurrencyID` FOREIGN KEY (`intPurchaseCurrencyID`) REFERENCES `tblCurrency` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrder` ADD CONSTRAINT `fkTblPurchaseOrderToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderAdditionalCost` ADD CONSTRAINT `fkTblPurchaseOrderAdditionalCostToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderAdditionalCostType` ADD CONSTRAINT `fkTblPurchaseOrderAdditionalCostTypeToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderLineItem` ADD CONSTRAINT `fkTblPurchaseOrderLineItemToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderLineItemRfq` ADD CONSTRAINT `fkTblPurchaseOrderLineItemRfqToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderLog` ADD CONSTRAINT `fkTblPurchaseOrderLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderStatus` ADD CONSTRAINT `fkTblPurchaseOrderStatusToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderStatusTransition` ADD CONSTRAINT `fkTblPurchaseOrderStatusTransitionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderStatusTransitionPermission` ADD CONSTRAINT `fkTblPurchaseOrderStatusTransitionPermissionToTblTenan449116137` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPurchaseOrderUser` ADD CONSTRAINT `fkTblPurchaseOrderUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblQuote` ADD CONSTRAINT `fkTblQuoteToTblPromotionalOfferViaIntPromotionalOfferID` FOREIGN KEY (`intPromotionalOfferID`) REFERENCES `tblPromotionalOffer` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblQuote` ADD CONSTRAINT `fkTblQuoteToTblQuoteStatusViaIntAccountQuoteStatusID` FOREIGN KEY (`intAccountQuoteStatusID`) REFERENCES `tblQuoteStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblQuote` ADD CONSTRAINT `fkTblQuoteToTblRecurringTypeViaIntForecastedRecurringTypeId` FOREIGN KEY (`intForecastedRecurringTypeId`) REFERENCES `tblRecurringType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblQuote` ADD CONSTRAINT `fkTblQuoteToTblRecurringTypeViaIntRecurringTypeID` FOREIGN KEY (`intRecurringTypeID`) REFERENCES `tblRecurringType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblQuote` ADD CONSTRAINT `fkTblQuoteToTblTenantViaIntIssuedByTenantID` FOREIGN KEY (`intIssuedByTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblQuote` ADD CONSTRAINT `fkTblQuoteToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRCAAction` ADD CONSTRAINT `fkTblRCAActionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRCACause` ADD CONSTRAINT `fkTblRCACauseToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRCAGrouping` ADD CONSTRAINT `fkTblRCAGroupingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRCAGroupingAction` ADD CONSTRAINT `fkTblRCAGroupingActionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRCAGroupingCause` ADD CONSTRAINT `fkTblRCAGroupingCauseToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRCAProblem` ADD CONSTRAINT `fkTblRCAProblemToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReasonToSetAssetOffline` ADD CONSTRAINT `fkTblReasonToSetAssetOfflineToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReasonToSetAssetOnline` ADD CONSTRAINT `fkTblReasonToSetAssetOnlineToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReceipt` ADD CONSTRAINT `fkTblReceiptToTblCurrencyViaIntPurchaseCurrencyID` FOREIGN KEY (`intPurchaseCurrencyID`) REFERENCES `tblCurrency` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReceipt` ADD CONSTRAINT `fkTblReceiptToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReceiptLineItem` ADD CONSTRAINT `fkTblReceiptLineItemToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReceiptStatus` ADD CONSTRAINT `fkTblReceiptStatusToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReceiptStatusTransition` ADD CONSTRAINT `fkTblReceiptStatusTransitionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReconciliationControl` ADD CONSTRAINT `fkTblReconciliationControlToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRegionUser` ADD CONSTRAINT `fkTblRegionUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRegionUserGroup` ADD CONSTRAINT `fkTblRegionUserGroupToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRememberMeCookie` ADD CONSTRAINT `fkTblRememberMeCookieToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblReportHistory` ADD CONSTRAINT `fkTblReportHistoryToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReportPreset` ADD CONSTRAINT `fkTblReportPresetToTblReportTemplateViaIntReportTemplateID` FOREIGN KEY (`intReportTemplateID`) REFERENCES `tblReportTemplate` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblReportPreset` ADD CONSTRAINT `fkTblReportPresetToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReportPresetParameter` ADD CONSTRAINT `fkTblReportPresetParameterToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReportsToResolved` ADD CONSTRAINT `fkTblReportsToResolvedToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReportTemplate` ADD CONSTRAINT `fkTblReportTemplateToTblFileContentsViaIntFileContentsID` FOREIGN KEY (`intFileContentsID`) REFERENCES `tblFileContents` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblResetPassword` ADD CONSTRAINT `fkTblResetPasswordToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRFQ` ADD CONSTRAINT `fkTblRFQToTblCountryViaIntBillToCountryID` FOREIGN KEY (`intBillToCountryID`) REFERENCES `tblCountry` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRFQ` ADD CONSTRAINT `fkTblRFQToTblCountryViaIntShipToCountryID` FOREIGN KEY (`intShipToCountryID`) REFERENCES `tblCountry` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRFQ` ADD CONSTRAINT `fkTblRFQToTblCountryViaIntSupplierCountryID` FOREIGN KEY (`intSupplierCountryID`) REFERENCES `tblCountry` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRFQ` ADD CONSTRAINT `fkTblRFQToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRFQAsset` ADD CONSTRAINT `fkTblRFQAssetToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRFQLineItem` ADD CONSTRAINT `fkTblRFQLineItemToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRFQQueue` ADD CONSTRAINT `fkTblRFQQueueToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRFQStatus` ADD CONSTRAINT `fkTblRFQStatusToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRFQStatusTransition` ADD CONSTRAINT `fkTblRFQStatusTransitionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRole` ADD CONSTRAINT `fkTblRoleToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRolePermission` ADD CONSTRAINT `fkTblRolePermissionToTblPermissionViaIntPermissionID` FOREIGN KEY (`intPermissionID`) REFERENCES `tblPermission` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblRolePermission` ADD CONSTRAINT `fkTblRolePermissionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSalesAccountTracking` ADD CONSTRAINT `fkTblSalesAccountTrackingToTblSalespersonTypeViaIntSa1720825228` FOREIGN KEY (`intSalespersonTypeID`) REFERENCES `tblSalespersonType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSalesAccountTracking` ADD CONSTRAINT `fkTblSalesAccountTrackingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenance` ADD CONSTRAINT `fkTblScheduledMaintenanceToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenanceActivityLog` ADD CONSTRAINT `fkTblScheduledMaintenanceActivityLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenanceAsset` ADD CONSTRAINT `fkTblScheduledMaintenanceAssetToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenanceBusiness` ADD CONSTRAINT `fkTblScheduledMaintenanceBusinessToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenanceNesting` ADD CONSTRAINT `fkTblScheduledMaintenanceNestingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenancePart` ADD CONSTRAINT `fkTblScheduledMaintenancePartToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledMaintenanceUser` ADD CONSTRAINT `fkTblScheduledMaintenanceUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledReport` ADD CONSTRAINT `fkTblScheduledReportToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledReportUser` ADD CONSTRAINT `fkTblScheduledReportUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledTask` ADD CONSTRAINT `fkTblScheduledTaskToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduledTaskFile` ADD CONSTRAINT `fkTblScheduledTaskFileToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblScheduleTrigger` ADD CONSTRAINT `fkTblScheduleTriggerToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblServerSetting` ADD CONSTRAINT `fkTblServerSettingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblShippingType` ADD CONSTRAINT `fkTblShippingTypeToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSiteAvailability` ADD CONSTRAINT `fkTblSiteAvailabilityToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSiteSetting` ADD CONSTRAINT `fkTblSiteSettingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSiteStock` ADD CONSTRAINT `fkTblSiteStockToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSiteUser` ADD CONSTRAINT `fkTblSiteUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSiteUserGroup` ADD CONSTRAINT `fkTblSiteUserGroupToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSmtpEvent` ADD CONSTRAINT `fkTblSmtpEventToTblUserViaIntDoneByUserID` FOREIGN KEY (`intDoneByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSSOImplementation` ADD CONSTRAINT `fkTblSSOImplementationToTblSSOProviderViaIntProviderID` FOREIGN KEY (`intProviderID`) REFERENCES `tblSSOProvider` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSSOImplementation` ADD CONSTRAINT `fkTblSSOImplementationToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblStock` ADD CONSTRAINT `fkTblStockToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblStockAdjustmentItem` ADD CONSTRAINT `fkTblStockAdjustmentItemToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblStockCycleCount` ADD CONSTRAINT `fkTblStockCycleCountToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblStockHistory` ADD CONSTRAINT `fkTblStockHistoryToTblStockTxTypeViaIntStockTxTypeID` FOREIGN KEY (`intStockTxTypeID`) REFERENCES `tblStockTxType` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblStockHistory` ADD CONSTRAINT `fkTblStockHistoryToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblStockPurchaseItem` ADD CONSTRAINT `fkTblStockPurchaseItemToTblCurrencyViaIntPurchaseCurrencyID` FOREIGN KEY (`intPurchaseCurrencyID`) REFERENCES `tblCurrency` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblStockPurchaseItem` ADD CONSTRAINT `fkTblStockPurchaseItemToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSubscriptionPlan` ADD CONSTRAINT `fkTblSubscriptionPlanToTblMarketingProgramViaIntMarket889270404` FOREIGN KEY (`intMarketingProgramID`) REFERENCES `tblMarketingProgram` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSubscriptionPlan` ADD CONSTRAINT `fkTblSubscriptionPlanToTblRecurringTypeViaIntRecurringTypeID` FOREIGN KEY (`intRecurringTypeID`) REFERENCES `tblRecurringType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSubscriptionPlan` ADD CONSTRAINT `fkTblSubscriptionPlanToTblSubscriptionStatusViaIntSubsc69938658` FOREIGN KEY (`intSubscriptionStatusID`) REFERENCES `tblSubscriptionStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSubscriptionPlan` ADD CONSTRAINT `fkTblSubscriptionPlanToTblTenantViaIntIssuedByTenantID` FOREIGN KEY (`intIssuedByTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSubscriptionPlan` ADD CONSTRAINT `fkTblSubscriptionPlanToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSystemMessageUser` ADD CONSTRAINT `fkTblSystemMessageUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSystemSetting` ADD CONSTRAINT `fkTblSystemSettingToTblCurrencyViaIntDefaultCurrencyID` FOREIGN KEY (`intDefaultCurrencyID`) REFERENCES `tblCurrency` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSystemSetting` ADD CONSTRAINT `fkTblSystemSettingToTblLocalizationViaIntDefaultLocalizationID` FOREIGN KEY (`intDefaultLocalizationID`) REFERENCES `tblLocalization` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSystemSetting` ADD CONSTRAINT `fkTblSystemSettingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTask` ADD CONSTRAINT `fkTblTaskToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTaskFile` ADD CONSTRAINT `fkTblTaskFileToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTaskGroup` ADD CONSTRAINT `fkTblTaskGroupToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTaskGroupAssetCategory` ADD CONSTRAINT `fkTblTaskGroupAssetCategoryToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTaskResultConfiguration` ADD CONSTRAINT `fkTblTaskResultConfigurationToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTaskResultValue` ADD CONSTRAINT `fkTblTaskResultValueToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTemplate` ADD CONSTRAINT `fkTblTemplateToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTemplateCategory` ADD CONSTRAINT `fkTblTemplateCategoryToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenant` ADD CONSTRAINT `fkTblTenantToTblFileContentsViaIntFileLoginScreenBran1394697510` FOREIGN KEY (`intFileLoginScreenBrandContentsID`) REFERENCES `tblFileContents` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblTenant` ADD CONSTRAINT `fkTblTenantToTblFileContentsViaIntFileMenuContentsID` FOREIGN KEY (`intFileMenuContentsID`) REFERENCES `tblFileContents` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblTenant` ADD CONSTRAINT `fkTblTenantToTblUserViaIntAcceptedEulaUserID` FOREIGN KEY (`intAcceptedEulaUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenant` ADD CONSTRAINT `fkTblTenantToTblUserViaIntAccountManagerUserID` FOREIGN KEY (`intAccountManagerUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenant` ADD CONSTRAINT `fkTblTenantToTblUserViaIntCreatedByUserID` FOREIGN KEY (`intCreatedByUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantDashboard` ADD CONSTRAINT `fkTblTenantDashboardToTblDashboardViaIntDashboardID` FOREIGN KEY (`intDashboardID`) REFERENCES `tblDashboard` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblTenantDashboard` ADD CONSTRAINT `fkTblTenantDashboardToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantDeleteStatus` ADD CONSTRAINT `fkTblTenantDeleteStatusToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantDistributionCampaign` ADD CONSTRAINT `fkTblTenantDistributionCampaignToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantFeature` ADD CONSTRAINT `fkTblTenantFeatureToTblFeatureValueOverageControlTypeVi25024799` FOREIGN KEY (`intOverageControlTypeID`) REFERENCES `tblFeatureValueOverageControlType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantFeature` ADD CONSTRAINT `fkTblTenantFeatureToTblFeatureValuePeriodTypeViaIntFea757598728` FOREIGN KEY (`intFeatureValuePeriodTypeID`) REFERENCES `tblFeatureValuePeriodType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantFeature` ADD CONSTRAINT `fkTblTenantFeatureToTblFeatureValueTypeViaIntFeatureValueTypeID` FOREIGN KEY (`intFeatureValueTypeID`) REFERENCES `tblFeatureValueType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantFeature` ADD CONSTRAINT `fkTblTenantFeatureToTblFeatureValueTypeViaIntOverageUn568047530` FOREIGN KEY (`intOverageUnitCostThresholdTypeID`) REFERENCES `tblFeatureValueType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantFeature` ADD CONSTRAINT `fkTblTenantFeatureToTblFeatureViaIntFeatureID` FOREIGN KEY (`intFeatureID`) REFERENCES `tblFeature` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantFeature` ADD CONSTRAINT `fkTblTenantFeatureToTblPricingTierFeatureViaIntAddedFr692937396` FOREIGN KEY (`intAddedFromPricingTierFeatureID`) REFERENCES `tblPricingTierFeature` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantFeature` ADD CONSTRAINT `fkTblTenantFeatureToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantLineItem` ADD CONSTRAINT `fkTblTenantLineItemToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantOrder` ADD CONSTRAINT `fkTblTenantOrderToTblTenantOrderTypeViaIntTenantOrderTypeID` FOREIGN KEY (`intTenantOrderTypeID`) REFERENCES `tblTenantOrderType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantOrder` ADD CONSTRAINT `fkTblTenantOrderToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantRelationship` ADD CONSTRAINT `fkTblTenantRelationshipToTblDistributionViaIntDistributionId` FOREIGN KEY (`intDistributionId`) REFERENCES `tblDistribution` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantRelationship` ADD CONSTRAINT `fkTblTenantRelationshipToTblTenantDistributionCampaign961459584` FOREIGN KEY (`intTenantDistributionCampaignId`) REFERENCES `tblTenantDistributionCampaign` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantReport` ADD CONSTRAINT `fkTblTenantReportToTblReportTemplateViaIntReportTemplateID` FOREIGN KEY (`intReportTemplateID`) REFERENCES `tblReportTemplate` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblTenantReport` ADD CONSTRAINT `fkTblTenantReportToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantSystemProperty` ADD CONSTRAINT `fkTblTenantSystemPropertyToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantSystemPropertyLog` ADD CONSTRAINT `fkTblTenantSystemPropertyLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantTransaction` ADD CONSTRAINT `fkTblTenantTransactionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantWidget` ADD CONSTRAINT `fkTblTenantWidgetToTblDashboardWidgetViaIntWidgetID` FOREIGN KEY (`intWidgetID`) REFERENCES `tblDashboardWidget` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblTenantWidget` ADD CONSTRAINT `fkTblTenantWidgetToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingBlack` ADD CONSTRAINT `fkTblTestingBlackToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingRedC` ADD CONSTRAINT `fkTblTestingRedCToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingWhiteC` ADD CONSTRAINT `fkTblTestingWhiteCToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestingYellow` ADD CONSTRAINT `fkTblTestingYellowToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTestTable` ADD CONSTRAINT `fkTblTestTableToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUicProfile` ADD CONSTRAINT `fkTblUicProfileToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUsageLog` ADD CONSTRAINT `fkTblUsageLogToTblUserViaIntUserID` FOREIGN KEY (`intUserID`) REFERENCES `tblUser` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUser` ADD CONSTRAINT `fkTblUserToTblCountryViaIntCountryID` FOREIGN KEY (`intCountryID`) REFERENCES `tblCountry` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUser` ADD CONSTRAINT `fkTblUserToTblCurrencyViaIntCurrencyID` FOREIGN KEY (`intCurrencyID`) REFERENCES `tblCurrency` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUser` ADD CONSTRAINT `fkTblUserToTblLocalizationViaIntLocalizationID` FOREIGN KEY (`intLocalizationID`) REFERENCES `tblLocalization` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUser` ADD CONSTRAINT `fkTblUserToTblSkinViaIntSkinID` FOREIGN KEY (`intSkinID`) REFERENCES `tblSkin` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUser` ADD CONSTRAINT `fkTblUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserAnalyticsPermission` ADD CONSTRAINT `fkTblUserAnalyticsPermissionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserApiConsumerPermission` ADD CONSTRAINT `fkTblUserApiConsumerPermissionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserCertification` ADD CONSTRAINT `fkTblUserCertificationToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserClockInOut` ADD CONSTRAINT `fkTblUserClockInOutToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserEpicFeatureNotice` ADD CONSTRAINT `fkTblUserEpicFeatureNoticeToTblDashboardFeatureNoticeV108178802` FOREIGN KEY (`intDashboardFeatureNoticeID`) REFERENCES `tblDashboardFeatureNotice` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserEpicFeatureNotice` ADD CONSTRAINT `fkTblUserEpicFeatureNoticeToTblEpicFeatureNoticeViaInt749281880` FOREIGN KEY (`intEpicFeatureNoticeID`) REFERENCES `tblEpicFeatureNotice` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserEpicFeatureNotice` ADD CONSTRAINT `fkTblUserEpicFeatureNoticeToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserGroupDashboardPersona` ADD CONSTRAINT `fkTblUserGroupDashboardPersonaToTblDashboardPersonaVia532792540` FOREIGN KEY (`intDashboardPersonaID`) REFERENCES `tblDashboardPersona` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblUserGroupDashboardPersona` ADD CONSTRAINT `fkTblUserGroupDashboardPersonaToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserMASourceStart` ADD CONSTRAINT `fkTblUserMASourceStartToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserMilestone` ADD CONSTRAINT `fkTblUserMilestoneToTblMilestoneViaIntMilestoneID` FOREIGN KEY (`intMilestoneID`) REFERENCES `tblMilestone` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblUserMilestone` ADD CONSTRAINT `fkTblUserMilestoneToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserPermission` ADD CONSTRAINT `fkTblUserPermissionToTblPermissionViaIntPermissionID` FOREIGN KEY (`intPermissionID`) REFERENCES `tblPermission` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserPermission` ADD CONSTRAINT `fkTblUserPermissionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserPurchaseOrderStatusTransitionPermission` ADD CONSTRAINT `fkTblUserPurchaseOrderStatusTransitionPermissionToTblT317160276` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserReportsToUser` ADD CONSTRAINT `fkTblUserReportsToUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserRole` ADD CONSTRAINT `fkTblUserRoleToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserSetting` ADD CONSTRAINT `fkTblUserSettingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserSystemProperty` ADD CONSTRAINT `fkTblUserSystemPropertyToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblUserSystemPropertyLog` ADD CONSTRAINT `fkTblUserSystemPropertyLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblV6ApiApplicationUserMapping` ADD CONSTRAINT `fkTblV6ApiApplicationUserMappingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblV6RolePermissionLookup` ADD CONSTRAINT `fkTblV6RolePermissionLookupToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblV6TenantUserInactivityTimeout` ADD CONSTRAINT `fkTblV6TenantUserInactivityTimeoutToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblV6TenantUserMgmtMigration` ADD CONSTRAINT `fkTblV6TenantUserMgmtMigrationToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblV6UserDeletionTracking` ADD CONSTRAINT `fkTblV6UserDeletionTrackingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWarranty` ADD CONSTRAINT `fkTblWarrantyToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWarranty` ADD CONSTRAINT `fkTblWarrantyToTblWarrantyTypeViaIntWarrantyTypeID` FOREIGN KEY (`intWarrantyTypeID`) REFERENCES `tblWarrantyType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWarranty` ADD CONSTRAINT `fkTblWarrantyToTblWarrantyUsageTermTypeViaIntWarrantyU212019224` FOREIGN KEY (`intWarrantyUsageTermTypeID`) REFERENCES `tblWarrantyUsageTermType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkflow` ADD CONSTRAINT `fkTblWorkflowToTblResourceViaIntDeResourceID` FOREIGN KEY (`intDeResourceID`) REFERENCES `tblResource` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkflow` ADD CONSTRAINT `fkTblWorkflowToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkflow` ADD CONSTRAINT `fkTblWorkflowToTblWorkflowTriggerTypeViaIntWorkflowTr1445185211` FOREIGN KEY (`intWorkflowTriggerTypeID`) REFERENCES `tblWorkflowTriggerType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkflowActivity` ADD CONSTRAINT `fkTblWorkflowActivityToTblIntegrationTemplateViaIntIn1470688790` FOREIGN KEY (`intIntegrationTemplateID`) REFERENCES `tblIntegrationTemplate` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkflowActivity` ADD CONSTRAINT `fkTblWorkflowActivityToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkflowActivity` ADD CONSTRAINT `fkTblWorkflowActivityToTblWorkflowActivityTypeGroupVi1999155658` FOREIGN KEY (`intWorkflowActivityTypeGroupID`) REFERENCES `tblWorkflowActivityTypeGroup` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkflowActivity` ADD CONSTRAINT `fkTblWorkflowActivityToTblWorkflowActivityTypeViaIntWo128754936` FOREIGN KEY (`intWorkflowActivityTypeID`) REFERENCES `tblWorkflowActivityType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkflowComment` ADD CONSTRAINT `fkTblWorkflowCommentToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkflowExecution` ADD CONSTRAINT `fkTblWorkflowExecutionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrder` ADD CONSTRAINT `fkTblWorkOrderToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderAsset` ADD CONSTRAINT `fkTblWorkOrderAssetToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderBusiness` ADD CONSTRAINT `fkTblWorkOrderBusinessToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderLog` ADD CONSTRAINT `fkTblWorkOrderLogToTblCurrencyViaIntCurrencyID` FOREIGN KEY (`intCurrencyID`) REFERENCES `tblCurrency` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderLog` ADD CONSTRAINT `fkTblWorkOrderLogToTblLogCostTypeViaIntCostTypeID` FOREIGN KEY (`intCostTypeID`) REFERENCES `tblLogCostType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderLog` ADD CONSTRAINT `fkTblWorkOrderLogToTblLogTypeViaIntLogTypeID` FOREIGN KEY (`intLogTypeID`) REFERENCES `tblLogType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderLog` ADD CONSTRAINT `fkTblWorkOrderLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderPart` ADD CONSTRAINT `fkTblWorkOrderPartToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderStatus` ADD CONSTRAINT `fkTblWorkOrderStatusToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderStatusTransition` ADD CONSTRAINT `fkTblWorkOrderStatusTransitionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderTask` ADD CONSTRAINT `fkTblWorkOrderTaskToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderTaskAdditionalProperties` ADD CONSTRAINT `fkTblWorkOrderTaskAdditionalPropertiesToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderTaskFile` ADD CONSTRAINT `fkTblWorkOrderTaskFileToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderTaskUser` ADD CONSTRAINT `fkTblWorkOrderTaskUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkOrderUser` ADD CONSTRAINT `fkTblWorkOrderUserToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

