ALTER TABLE `QRTZ_BLOB_TRIGGERS` ADD CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE `QRTZ_CRON_TRIGGERS` ADD CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` ADD CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` ADD CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE `QRTZ_TRIGGERS` ADD CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) REFERENCES `QRTZ_JOB_DETAILS` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE `tblBillingTaxes` ADD CONSTRAINT `fkTblBillingTaxesToTblCountryViaIntCountryID` FOREIGN KEY (`intCountryID`) REFERENCES `tblCountry` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblBusinessTypeDef` ADD CONSTRAINT `fkTblBusinessTypeDefToTblBusinessTypeDefViaIntDefaultParentID` FOREIGN KEY (`intDefaultParentID`) REFERENCES `tblBusinessTypeDef` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblClientSession` ADD CONSTRAINT `fkTblClientSessionToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblCrmMetrics` ADD CONSTRAINT `fkTblCrmMetricsToTblCrmMetricsTypeViaIntCrmMetricTypeID` FOREIGN KEY (`intCrmMetricTypeID`) REFERENCES `tblCrmMetricsType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblCrmMetrics` ADD CONSTRAINT `fkTblCrmMetricsToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblCrmMetricsType` ADD CONSTRAINT `fkTblCrmMetricsTypeToTblCrmMetricsTypeFormatViaIntCrm1049697325` FOREIGN KEY (`intCrmMetricsTypeFormatID`) REFERENCES `tblCrmMetricsTypeFormat` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblCrmMetricsUser` ADD CONSTRAINT `fkTblCrmMetricsUserToTblCrmMetricsTypeViaIntCrmMetric1ID` FOREIGN KEY (`intCrmMetric1ID`) REFERENCES `tblCrmMetricsType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblCrmMetricsUser` ADD CONSTRAINT `fkTblCrmMetricsUserToTblCrmMetricsTypeViaIntCrmMetric2ID` FOREIGN KEY (`intCrmMetric2ID`) REFERENCES `tblCrmMetricsType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDashboard` ADD CONSTRAINT `fkTblDashboardToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDashboardDashboardPersona` ADD CONSTRAINT `fkTblDashboardDashboardPersonaToTblDashboardPersonaVia328257604` FOREIGN KEY (`intDashboardPersonaID`) REFERENCES `tblDashboardPersona` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblDashboardDashboardPersona` ADD CONSTRAINT `fkTblDashboardDashboardPersonaToTblDashboardViaIntDashboardID` FOREIGN KEY (`intDashboardID`) REFERENCES `tblDashboard` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblDashboardDashboardPersona` ADD CONSTRAINT `fkTblDashboardDashboardPersonaToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDashboardFeatureNotice` ADD CONSTRAINT `fkTblDashboardFeatureNoticeToTblProductTierViaIntProductTierID` FOREIGN KEY (`intProductTierID`) REFERENCES `tblProductTier` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblDashboardFeatureNotice` ADD CONSTRAINT `fkTblDashboardFeatureNoticeToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDashboardPersona` ADD CONSTRAINT `fkTblDashboardPersonaToTblDashboardViaIntSharedDashboardID` FOREIGN KEY (`intSharedDashboardID`) REFERENCES `tblDashboard` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblDashboardPersona` ADD CONSTRAINT `fkTblDashboardPersonaToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblDashboardWidget` ADD CONSTRAINT `fkTblDashboardWidgetToTblDashboardWidgetCategoryViaInt694956624` FOREIGN KEY (`intWidgetCategoryID`) REFERENCES `tblDashboardWidgetCategory` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDashboardWidget` ADD CONSTRAINT `fkTblDashboardWidgetToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDashboardWidgetDashboardPersona` ADD CONSTRAINT `fkTblDashboardWidgetDashboardPersonaToTblDashboardPers465988632` FOREIGN KEY (`intDashboardPersonaID`) REFERENCES `tblDashboardPersona` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblDashboardWidgetDashboardPersona` ADD CONSTRAINT `fkTblDashboardWidgetDashboardPersonaToTblDashboardWid1798115596` FOREIGN KEY (`intWidgetID`) REFERENCES `tblDashboardWidget` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblDashboardWidgetDashboardPersona` ADD CONSTRAINT `fkTblDashboardWidgetDashboardPersonaToTblTenantViaInt1705383681` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDashboardWidgetParameter` ADD CONSTRAINT `fkTblDashboardWidgetParameterToTblDashboardWidgetQuer2050682901` FOREIGN KEY (`intDashboardWidgetQueryID`) REFERENCES `tblDashboardWidgetQuery` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblDashboardWidgetParameter` ADD CONSTRAINT `fkTblDashboardWidgetParameterToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDashboardWidgetQuery` ADD CONSTRAINT `fkTblDashboardWidgetQueryToTblDashboardWidgetViaIntDas156836436` FOREIGN KEY (`intDashboardWidgetID`) REFERENCES `tblDashboardWidget` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblDashboardWidgetQuery` ADD CONSTRAINT `fkTblDashboardWidgetQueryToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDdColumn` ADD CONSTRAINT `fkTblDdColumnToTblDdColumnTypeViaIntDdColumnTypeID` FOREIGN KEY (`intDdColumnTypeID`) REFERENCES `tblDdColumnType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDdColumn` ADD CONSTRAINT `fkTblDdColumnToTblDdTableViaIntDdTableID` FOREIGN KEY (`intDdTableID`) REFERENCES `tblDdTable` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDdColumn` ADD CONSTRAINT `fkTblDdColumnToTblDdTableViaIntPkDdTableID` FOREIGN KEY (`intPkDdTableID`) REFERENCES `tblDdTable` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDdColumn` ADD CONSTRAINT `fkTblDdColumnToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDdTable` ADD CONSTRAINT `fkTblDdTableToTblDdColumnViaIntLabelDdColumnID` FOREIGN KEY (`intLabelDdColumnID`) REFERENCES `tblDdColumn` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDdTable` ADD CONSTRAINT `fkTblDdTableToTblDdTableTypeViaIntDdTableTypeID` FOREIGN KEY (`intDdTableTypeID`) REFERENCES `tblDdTableType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblDdTable` ADD CONSTRAINT `fkTblDdTableToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblEmailAddress` ADD CONSTRAINT `fkTblEmailAddressToTblEmailAddressStatusViaIntLastEmai898905720` FOREIGN KEY (`intLastEmailAddressStatusID`) REFERENCES `tblEmailAddressStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblEmailAddressSmtpEvent` ADD CONSTRAINT `fkTblEmailAddressSmtpEventToTblEmailAddressStatusViaI1603196096` FOREIGN KEY (`intEmailAddressStatusID`) REFERENCES `tblEmailAddressStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblEmailAddressSmtpEvent` ADD CONSTRAINT `fkTblEmailAddressSmtpEventToTblEmailAddressViaIntEmailAddressID` FOREIGN KEY (`intEmailAddressID`) REFERENCES `tblEmailAddress` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblEmailAddressSmtpEvent` ADD CONSTRAINT `fkTblEmailAddressSmtpEventToTblSmtpEventViaIntSmtpEventID` FOREIGN KEY (`intSmtpEventID`) REFERENCES `tblSmtpEvent` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblEpicFeatureNotice` ADD CONSTRAINT `fkTblEpicFeatureNoticeToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblEpicFeatureNoticePricingTier` ADD CONSTRAINT `fkTblEpicFeatureNoticePricingTierToTblEpicFeatureNoti1581744475` FOREIGN KEY (`intEpicFeatureNoticeID`) REFERENCES `tblEpicFeatureNotice` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblEpicFeatureNoticePricingTier` ADD CONSTRAINT `fkTblEpicFeatureNoticePricingTierToTblPricingTierViaIn844431749` FOREIGN KEY (`intPricingTierID`) REFERENCES `tblPricingTier` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblFeature` ADD CONSTRAINT `fkTblFeatureToTblFeatureCategoryViaIntFeatureCategoryID` FOREIGN KEY (`intFeatureCategoryID`) REFERENCES `tblFeatureCategory` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFeature` ADD CONSTRAINT `fkTblFeatureToTblFeatureValueTypeViaIntFeatureValueTypeID` FOREIGN KEY (`intFeatureValueTypeID`) REFERENCES `tblFeatureValueType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFeature` ADD CONSTRAINT `fkTblFeatureToTblProductViaIntProductID` FOREIGN KEY (`intProductID`) REFERENCES `tblProduct` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFeatureNoticeFilter` ADD CONSTRAINT `fkTblFeatureNoticeFilterToTblBusinessClassificationVi1127590338` FOREIGN KEY (`intBusinessClassificationID`) REFERENCES `tblBusinessClassification` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFeatureNoticeFilter` ADD CONSTRAINT `fkTblFeatureNoticeFilterToTblCountryViaIntCountryID` FOREIGN KEY (`intCountryID`) REFERENCES `tblCountry` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFeatureNoticeFilter` ADD CONSTRAINT `fkTblFeatureNoticeFilterToTblDashboardFeatureNoticeVi1961399002` FOREIGN KEY (`intDashboardFeatureNoticeID`) REFERENCES `tblDashboardFeatureNotice` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblFeatureNoticeFilter` ADD CONSTRAINT `fkTblFeatureNoticeFilterToTblEpicFeatureNoticeViaIntE1887495440` FOREIGN KEY (`intEpicFeatureNoticeID`) REFERENCES `tblEpicFeatureNotice` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblFeatureNoticeFilter` ADD CONSTRAINT `fkTblFeatureNoticeFilterToTblProductTierViaIntProductTierID` FOREIGN KEY (`intProductTierID`) REFERENCES `tblProductTier` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFeatureNoticeFilter` ADD CONSTRAINT `fkTblFeatureNoticeFilterToTblRecurringTypeViaIntRecurringTypeID` FOREIGN KEY (`intRecurringTypeID`) REFERENCES `tblRecurringType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFeatureNoticeFilter` ADD CONSTRAINT `fkTblFeatureNoticeFilterToTblTenantAutomationViaIntTena11896844` FOREIGN KEY (`intTenantAutomationID`) REFERENCES `tblTenantAutomation` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblFeatureNoticeFilter` ADD CONSTRAINT `fkTblFeatureNoticeFilterToTblTenantTypeViaIntTenantTypeID` FOREIGN KEY (`intTenantTypeID`) REFERENCES `tblTenantType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFeatureNoticeFilter` ADD CONSTRAINT `fkTblFeatureNoticeFilterToTblTenantViaIntTenantFilterID` FOREIGN KEY (`intTenantFilterID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFeatureProperty` ADD CONSTRAINT `fkTblFeaturePropertyToTblFeatureValuePeriodTypeViaInt1279832935` FOREIGN KEY (`intFeatureValuePeriodTypeID`) REFERENCES `tblFeatureValuePeriodType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFeatureProperty` ADD CONSTRAINT `fkTblFeaturePropertyToTblFeatureValueTypeViaIntFeatur1288613801` FOREIGN KEY (`intFeatureValueTypeID`) REFERENCES `tblFeatureValueType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFeatureProperty` ADD CONSTRAINT `fkTblFeaturePropertyToTblFeatureViaIntFeatureID` FOREIGN KEY (`intFeatureID`) REFERENCES `tblFeature` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblFeatureProperty` ADD CONSTRAINT `fkTblFeaturePropertyToTblPricingTierFeatureViaIntPric1153301769` FOREIGN KEY (`intPricingTierFeatureID`) REFERENCES `tblPricingTierFeature` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblFeatureProperty` ADD CONSTRAINT `fkTblFeaturePropertyToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblGHGCalcCarbonMarket` ADD CONSTRAINT `fkTblGHGCalcCarbonMarketToTblGHGCalcResourceViaIntResourceID` FOREIGN KEY (`intResourceID`) REFERENCES `tblGHGCalcResource` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblGHGCalcFuel` ADD CONSTRAINT `fkTblGHGCalcFuelToTblGHGCalcFuelViaIntParentFuelID` FOREIGN KEY (`intParentFuelID`) REFERENCES `tblGHGCalcFuel` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblGHGCalcFuel` ADD CONSTRAINT `fkTblGHGCalcFuelToTblGHGCalcResourceViaIntResourceID` FOREIGN KEY (`intResourceID`) REFERENCES `tblGHGCalcResource` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblGHGCalcGWP` ADD CONSTRAINT `fkTblGHGCalcGWPToTblGHGCalcResourceViaIntResourceID` FOREIGN KEY (`intResourceID`) REFERENCES `tblGHGCalcResource` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblGHGCalcLocation` ADD CONSTRAINT `fkTblGHGCalcLocationToTblGHGCalcCarbonMarketViaIntCar2140652035` FOREIGN KEY (`intCarbonMarketID`) REFERENCES `tblGHGCalcCarbonMarket` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblGHGCalcLocation` ADD CONSTRAINT `fkTblGHGCalcLocationToTblGHGCalcLocationViaIntParentLocationID` FOREIGN KEY (`intParentLocationID`) REFERENCES `tblGHGCalcLocation` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblGHGCalcLocation` ADD CONSTRAINT `fkTblGHGCalcLocationToTblGHGCalcResourceViaIntResourceID` FOREIGN KEY (`intResourceID`) REFERENCES `tblGHGCalcResource` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblGHGCalcVehicle` ADD CONSTRAINT `fkTblGHGCalcVehicleToTblGHGCalcResourceViaIntResourceID` FOREIGN KEY (`intResourceID`) REFERENCES `tblGHGCalcResource` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblGHGCalcVehicle` ADD CONSTRAINT `fkTblGHGCalcVehicleToTblGHGCalcVehicleViaIntParentVehicleID` FOREIGN KEY (`intParentVehicleID`) REFERENCES `tblGHGCalcVehicle` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblIntegrationActionAdvancedEndpoint` ADD CONSTRAINT `fkTblIntegrationActionAdvancedEndpointToTblIntegration998018549` FOREIGN KEY (`intIntegrationSystemID`) REFERENCES `tblIntegrationSystem` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblIntegrationTemplate` ADD CONSTRAINT `fkTblIntegrationTemplateToTblIntegrationEndpointForma1870131928` FOREIGN KEY (`intIntegrationEndpointFormatID`) REFERENCES `tblIntegrationEndpointFormat` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblIntegrationTemplate` ADD CONSTRAINT `fkTblIntegrationTemplateToTblIntegrationProtocolViaIn1637480168` FOREIGN KEY (`intIntegrationProtocolID`) REFERENCES `tblIntegrationProtocol` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblIntegrationTemplate` ADD CONSTRAINT `fkTblIntegrationTemplateToTblIntegrationSystemViaIntIn994776264` FOREIGN KEY (`intIntegrationSystemID`) REFERENCES `tblIntegrationSystem` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLocalization` ADD CONSTRAINT `fkTblLocalizationToTblCountryViaIntCountryID` FOREIGN KEY (`intCountryID`) REFERENCES `tblCountry` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLocalization` ADD CONSTRAINT `fkTblLocalizationToTblCurrencyViaIntDefaultCurrencyID` FOREIGN KEY (`intDefaultCurrencyID`) REFERENCES `tblCurrency` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLocalization` ADD CONSTRAINT `fkTblLocalizationToTblLanguageViaIntLanguageID` FOREIGN KEY (`intLanguageID`) REFERENCES `tblLanguage` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLocalization` ADD CONSTRAINT `fkTblLocalizationToTblLocalizationTypeViaIntLocalizationTypeID` FOREIGN KEY (`intLocalizationTypeID`) REFERENCES `tblLocalizationType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLocalization` ADD CONSTRAINT `fkTblLocalizationToTblLocalizationViaIntParentLocalizationID` FOREIGN KEY (`intParentLocalizationID`) REFERENCES `tblLocalization` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLocalization` ADD CONSTRAINT `fkTblLocalizationToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLocalizationArchive` ADD CONSTRAINT `fkTblLocalizationArchiveToTblCountryViaIntCountryID` FOREIGN KEY (`intCountryID`) REFERENCES `tblCountry` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLocalizationArchive` ADD CONSTRAINT `fkTblLocalizationArchiveToTblCurrencyViaIntDefaultCurrencyID` FOREIGN KEY (`intDefaultCurrencyID`) REFERENCES `tblCurrency` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLocalizationArchive` ADD CONSTRAINT `fkTblLocalizationArchiveToTblLanguageViaIntLanguageID` FOREIGN KEY (`intLanguageID`) REFERENCES `tblLanguage` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblLocalizationArchive` ADD CONSTRAINT `fkTblLocalizationArchiveToTblLocalizationViaIntLocalizationID` FOREIGN KEY (`intLocalizationID`) REFERENCES `tblLocalization` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblLocalizationArchive` ADD CONSTRAINT `fkTblLocalizationArchiveToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPassword` ADD CONSTRAINT `fkTblPasswordToTblPasswordStorageVersionViaIntPasswordS37970469` FOREIGN KEY (`intPasswordStorageVersionID`) REFERENCES `tblPasswordStorageVersion` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPermission` ADD CONSTRAINT `fkTblPermissionToTblApplicationViaIntApplicationID` FOREIGN KEY (`intApplicationID`) REFERENCES `tblApplication` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPlanFeature` ADD CONSTRAINT `fkTblPlanFeatureToTblPlanFeatureCategoryViaIntPlanFeat864232777` FOREIGN KEY (`intPlanFeatureCategoryID`) REFERENCES `tblPlanFeatureCategory` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPlanFeatureProductTier` ADD CONSTRAINT `fkTblPlanFeatureProductTierToTblPlanFeatureViaIntPlanFeatureID` FOREIGN KEY (`intPlanFeatureID`) REFERENCES `tblPlanFeature` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPlanFeatureProductTier` ADD CONSTRAINT `fkTblPlanFeatureProductTierToTblProductTierViaIntProductTierID` FOREIGN KEY (`intProductTierID`) REFERENCES `tblProductTier` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPricingTier` ADD CONSTRAINT `fkTblPricingTierToTblProductOfferingViaIntProductOfferingID` FOREIGN KEY (`intProductOfferingID`) REFERENCES `tblProductOffering` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblPricingTier` ADD CONSTRAINT `fkTblPricingTierToTblProductTierViaIntProductTierID` FOREIGN KEY (`intProductTierID`) REFERENCES `tblProductTier` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblPricingTier` ADD CONSTRAINT `fkTblPricingTierToTblProductViaIntProductID` FOREIGN KEY (`intProductID`) REFERENCES `tblProduct` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblPricingTierFeature` ADD CONSTRAINT `fkTblPricingTierFeatureToTblFeatureValueOverageContro1750148949` FOREIGN KEY (`intOverageControlTypeID`) REFERENCES `tblFeatureValueOverageControlType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPricingTierFeature` ADD CONSTRAINT `fkTblPricingTierFeatureToTblFeatureValuePeriodTypeVia1731107716` FOREIGN KEY (`intFeatureValuePeriodTypeID`) REFERENCES `tblFeatureValuePeriodType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPricingTierFeature` ADD CONSTRAINT `fkTblPricingTierFeatureToTblFeatureValueTypeViaIntFeat760178626` FOREIGN KEY (`intFeatureValueTypeID`) REFERENCES `tblFeatureValueType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPricingTierFeature` ADD CONSTRAINT `fkTblPricingTierFeatureToTblFeatureValueTypeViaIntOve1238213322` FOREIGN KEY (`intOverageUnitCostThresholdTypeID`) REFERENCES `tblFeatureValueType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPricingTierFeature` ADD CONSTRAINT `fkTblPricingTierFeatureToTblFeatureViaIntFeatureID` FOREIGN KEY (`intFeatureID`) REFERENCES `tblFeature` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPricingTierFeature` ADD CONSTRAINT `fkTblPricingTierFeatureToTblPricingTierViaIntPricingTierID` FOREIGN KEY (`intPricingTierID`) REFERENCES `tblPricingTier` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblProduct` ADD CONSTRAINT `fkTblProductToTblBillingTypeViaIntBillingTypeID` FOREIGN KEY (`intBillingTypeID`) REFERENCES `tblBillingType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblProduct` ADD CONSTRAINT `fkTblProductToTblProductUnitViaIntProductUnitID` FOREIGN KEY (`intProductUnitID`) REFERENCES `tblProductUnit` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblProduct` ADD CONSTRAINT `fkTblProductToTblProductViaIntProductParentID` FOREIGN KEY (`intProductParentID`) REFERENCES `tblProduct` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblProductDiscountControl` ADD CONSTRAINT `fkTblProductDiscountControlToTblProductViaIntProductID` FOREIGN KEY (`intProductID`) REFERENCES `tblProduct` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblProductOfferingFeature` ADD CONSTRAINT `fkTblProductOfferingFeatureToTblFeatureViaIntFeatureID` FOREIGN KEY (`intFeatureID`) REFERENCES `tblFeature` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblProductOfferingFeature` ADD CONSTRAINT `fkTblProductOfferingFeatureToTblProductOfferingViaIntP764916061` FOREIGN KEY (`intProductOfferingID`) REFERENCES `tblProductOffering` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblPromotionalOfferDetail` ADD CONSTRAINT `fkTblPromotionalOfferDetailToTblProductTierViaIntUpgra836988905` FOREIGN KEY (`intUpgradeProductTierID`) REFERENCES `tblProductTier` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblPromotionalOfferDetail` ADD CONSTRAINT `fkTblPromotionalOfferDetailToTblProductViaIntAddProductID` FOREIGN KEY (`intAddProductID`) REFERENCES `tblProduct` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblPromotionalOfferDetail` ADD CONSTRAINT `fkTblPromotionalOfferDetailToTblPromotionalOfferViaIn1725564611` FOREIGN KEY (`intPromotionalOfferID`) REFERENCES `tblPromotionalOffer` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblPromotionalOfferDetail` ADD CONSTRAINT `fkTblPromotionalOfferDetailToTblRecurringTypeViaIntUpg230950365` FOREIGN KEY (`intUpgradeRecurringTypeID`) REFERENCES `tblRecurringType` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblPromotionalOfferPricingTier` ADD CONSTRAINT `fkTblPromotionalOfferPricingTierToTblPricingTierViaIn1370877860` FOREIGN KEY (`intPricingTierID`) REFERENCES `tblPricingTier` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblPromotionalOfferPricingTier` ADD CONSTRAINT `fkTblPromotionalOfferPricingTierToTblPromotionalOffer1651163174` FOREIGN KEY (`intPromotionalOfferID`) REFERENCES `tblPromotionalOffer` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblRemoteEntityIdMapping` ADD CONSTRAINT `fkTblRemoteEntityIdMappingToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReportHistory` ADD CONSTRAINT `fkTblReportHistoryToTblReportTemplateViaIntReportTemplateID` FOREIGN KEY (`intReportTemplateID`) REFERENCES `tblReportTemplate` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblReportTemplate` ADD CONSTRAINT `fkTblReportTemplateToTblReportCategoryViaIntReportCategoryID` FOREIGN KEY (`intReportCategoryID`) REFERENCES `tblReportCategory` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblReportTemplate` ADD CONSTRAINT `fkTblReportTemplateToTblReportTypeViaIntReportTypeID` FOREIGN KEY (`intReportTypeID`) REFERENCES `tblReportType` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblReportTemplate` ADD CONSTRAINT `fkTblReportTemplateToTblTenantViaIntOwnerTenantID` FOREIGN KEY (`intOwnerTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblResource` ADD CONSTRAINT `fkTblResourceToTblDdColumnViaIntDdColumnID` FOREIGN KEY (`intDdColumnID`) REFERENCES `tblDdColumn` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblResource` ADD CONSTRAINT `fkTblResourceToTblDdTableViaIntDdTableID` FOREIGN KEY (`intDdTableID`) REFERENCES `tblDdTable` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblResource` ADD CONSTRAINT `fkTblResourceToTblResourceNamespaceViaIntResourceNamespaceID` FOREIGN KEY (`intResourceNamespaceID`) REFERENCES `tblResourceNamespace` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblResource` ADD CONSTRAINT `fkTblResourceToTblResourceServiceViaIntResourceServiceID` FOREIGN KEY (`intResourceServiceID`) REFERENCES `tblResourceService` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblResource` ADD CONSTRAINT `fkTblResourceToTblResourceTypeViaIntResourceTypeID` FOREIGN KEY (`intResourceTypeID`) REFERENCES `tblResourceType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblResource` ADD CONSTRAINT `fkTblResourceToTblResourceViaIntParentResourceID` FOREIGN KEY (`intParentResourceID`) REFERENCES `tblResource` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblResource` ADD CONSTRAINT `fkTblResourceToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblResourceConsumer` ADD CONSTRAINT `fkTblResourceConsumerToTblResourceConsumerTypeViaIntR1899153794` FOREIGN KEY (`intResourceConsumerTypeID`) REFERENCES `tblResourceConsumerType` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblResourceConsumer` ADD CONSTRAINT `fkTblResourceConsumerToTblResourceViaIntResourceID` FOREIGN KEY (`intResourceID`) REFERENCES `tblResource` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblSmtpEvent` ADD CONSTRAINT `fkTblSmtpEventToTblSmtpEventTypeViaIntSmtpEventTypeID` FOREIGN KEY (`intSmtpEventTypeID`) REFERENCES `tblSmtpEventType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSmtpEvent` ADD CONSTRAINT `fkTblSmtpEventToTblSmtpProviderViaIntSmtpProviderID` FOREIGN KEY (`intSmtpProviderID`) REFERENCES `tblSmtpProvider` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblSmtpProvider` ADD CONSTRAINT `fkTblSmtpProviderToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblStockTxType` ADD CONSTRAINT `fkTblStockTxTypeToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenant` ADD CONSTRAINT `fkTblTenantToTblLeadStateViaIntLeadStateID` FOREIGN KEY (`intLeadStateID`) REFERENCES `tblLeadState` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenant` ADD CONSTRAINT `fkTblTenantToTblLocalizationViaIntDefaultLocalizationID` FOREIGN KEY (`intDefaultLocalizationID`) REFERENCES `tblLocalization` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenant` ADD CONSTRAINT `fkTblTenantToTblPaymentMethodViaIntTargetPaymentMethodID` FOREIGN KEY (`intTargetPaymentMethodID`) REFERENCES `tblPaymentMethod` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL;

ALTER TABLE `tblTenant` ADD CONSTRAINT `fkTblTenantToTblTenantStatusViaIntTenantStatusID` FOREIGN KEY (`intTenantStatusID`) REFERENCES `tblTenantStatus` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenant` ADD CONSTRAINT `fkTblTenantToTblTenantTypeViaIntTenantTypeID` FOREIGN KEY (`intTenantTypeID`) REFERENCES `tblTenantType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenant` ADD CONSTRAINT `fkTblTenantToTblTenantViaIntConfirmCopiedToTenantID` FOREIGN KEY (`intConfirmCopiedToTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenant` ADD CONSTRAINT `fkTblTenantToTblTenantViaIntPartnerID` FOREIGN KEY (`intPartnerID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantAutomation` ADD CONSTRAINT `fkTblTenantAutomationToTblFeatureViaIntFeatureID` FOREIGN KEY (`intFeatureID`) REFERENCES `tblFeature` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblTenantNotificationPricingTier` ADD CONSTRAINT `fkTblTenantNotificationPricingTierToTblPricingTierVia1197790813` FOREIGN KEY (`intPricingTierID`) REFERENCES `tblPricingTier` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblTenantNotificationPricingTier` ADD CONSTRAINT `fkTblTenantNotificationPricingTierToTblTenantNotificati96878801` FOREIGN KEY (`intTenantNotificationID`) REFERENCES `tblTenantNotification` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblTenantRelationship` ADD CONSTRAINT `fkTblTenantRelationshipToTblTenantRelationshipTypeViaI502057060` FOREIGN KEY (`intTenantRelationshipTypeID`) REFERENCES `tblTenantRelationshipType` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantRelationship` ADD CONSTRAINT `fkTblTenantRelationshipToTblTenantViaIntMasterTenantID` FOREIGN KEY (`intMasterTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTenantRelationship` ADD CONSTRAINT `fkTblTenantRelationshipToTblTenantViaIntSlaveTenantID` FOREIGN KEY (`intSlaveTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblTheThrowableReported` ADD CONSTRAINT `fkTblTheThrowableReportedToTblTheThrowableViaIntTheThrowableID` FOREIGN KEY (`intTheThrowableID`) REFERENCES `tblTheThrowable` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblUsageLog` ADD CONSTRAINT `fkTblUsageLogToTblTenantViaIntTenantID` FOREIGN KEY (`intTenantID`) REFERENCES `tblTenant` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWork` ADD CONSTRAINT `fkTblWorkToTblClientSessionViaIntClientSessionID` FOREIGN KEY (`intClientSessionID`) REFERENCES `tblClientSession` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE `tblWorkflowActivityType` ADD CONSTRAINT `fkTblWorkflowActivityTypeToTblWorkflowActivityTypeGrou224890084` FOREIGN KEY (`intWorkflowActivityTypeGroupID`) REFERENCES `tblWorkflowActivityTypeGroup` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

ALTER TABLE `tblWorkflowTriggerType` ADD CONSTRAINT `fkTblWorkflowTriggerTypeToTblWorkflowTriggerTypeGroupV956444445` FOREIGN KEY (`intWorkflowTriggerTypeGroupID`) REFERENCES `tblWorkflowTriggerTypeGroup` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

