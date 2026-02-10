-- Generated Vitess-Compliant Triggers
SET @@ddl_strategy = 'direct';

-- Constraint: qrtz_blob_triggers_ibfk_1
CREATE TRIGGER `trg_qrtz_blob_triggers_ibfk_1_restrict_del` BEFORE DELETE ON `QRTZ_TRIGGERS`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `QRTZ_BLOB_TRIGGERS` WHERE `SCHED_NAME` = OLD.`SCHED_NAME` AND `TRIGGER_NAME` = OLD.`TRIGGER_NAME` AND `TRIGGER_GROUP` = OLD.`TRIGGER_GROUP` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in QRTZ_BLOB_TRIGGERS';
    END IF;
END;

-- Constraint: qrtz_cron_triggers_ibfk_1
CREATE TRIGGER `trg_qrtz_cron_triggers_ibfk_1_restrict_del` BEFORE DELETE ON `QRTZ_TRIGGERS`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `QRTZ_CRON_TRIGGERS` WHERE `SCHED_NAME` = OLD.`SCHED_NAME` AND `TRIGGER_NAME` = OLD.`TRIGGER_NAME` AND `TRIGGER_GROUP` = OLD.`TRIGGER_GROUP` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in QRTZ_CRON_TRIGGERS';
    END IF;
END;

-- Constraint: qrtz_simple_triggers_ibfk_1
CREATE TRIGGER `trg_qrtz_simple_triggers_ibfk_1_restrict_del` BEFORE DELETE ON `QRTZ_TRIGGERS`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `QRTZ_SIMPLE_TRIGGERS` WHERE `SCHED_NAME` = OLD.`SCHED_NAME` AND `TRIGGER_NAME` = OLD.`TRIGGER_NAME` AND `TRIGGER_GROUP` = OLD.`TRIGGER_GROUP` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in QRTZ_SIMPLE_TRIGGERS';
    END IF;
END;

-- Constraint: qrtz_simprop_triggers_ibfk_1
CREATE TRIGGER `trg_qrtz_simprop_triggers_ibfk_1_restrict_del` BEFORE DELETE ON `QRTZ_TRIGGERS`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `QRTZ_SIMPROP_TRIGGERS` WHERE `SCHED_NAME` = OLD.`SCHED_NAME` AND `TRIGGER_NAME` = OLD.`TRIGGER_NAME` AND `TRIGGER_GROUP` = OLD.`TRIGGER_GROUP` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in QRTZ_SIMPROP_TRIGGERS';
    END IF;
END;

-- Constraint: qrtz_triggers_ibfk_1
CREATE TRIGGER `trg_qrtz_triggers_ibfk_1_restrict_del` BEFORE DELETE ON `QRTZ_JOB_DETAILS`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `QRTZ_TRIGGERS` WHERE `SCHED_NAME` = OLD.`SCHED_NAME` AND `JOB_NAME` = OLD.`JOB_NAME` AND `JOB_GROUP` = OLD.`JOB_GROUP` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in QRTZ_TRIGGERS';
    END IF;
END;

-- Constraint: fkTblBillingTaxesToTblCountryViaIntCountryID
CREATE TRIGGER `trg_fkTblBillingTaxesToTblCountryViaIntCountryID_restrict_del` BEFORE DELETE ON `tblCountry`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblBillingTaxes` WHERE `intCountryID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblBillingTaxes';
    END IF;
END;

-- Constraint: fkTblBusinessTypeDefToTblBusinessTypeDefViaIntDefaultParentID
CREATE TRIGGER `trg_fkTblBusinessTypeDefToTblBusinessTypeDefViaIntDefaultParentID_restrict_del` BEFORE DELETE ON `tblBusinessTypeDef`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblBusinessTypeDef` WHERE `intDefaultParentID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblBusinessTypeDef';
    END IF;
END;

-- Constraint: fkTblClientSessionToTblTenantViaIntTenantID
CREATE TRIGGER `trg_fkTblClientSessionToTblTenantViaIntTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblClientSession` WHERE `intTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblClientSession';
    END IF;
END;

-- Constraint: fkTblCrmMetricsToTblCrmMetricsTypeViaIntCrmMetricTypeID
CREATE TRIGGER `trg_fkTblCrmMetricsToTblCrmMetricsTypeViaIntCrmMetricTypeID_restrict_del` BEFORE DELETE ON `tblCrmMetricsType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblCrmMetrics` WHERE `intCrmMetricTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblCrmMetrics';
    END IF;
END;

-- Constraint: fkTblCrmMetricsToTblTenantViaIntTenantID
CREATE TRIGGER `trg_fkTblCrmMetricsToTblTenantViaIntTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblCrmMetrics` WHERE `intTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblCrmMetrics';
    END IF;
END;

-- Constraint: fkTblCrmMetricsTypeToTblCrmMetricsTypeFormatViaIntCrm1049697325
CREATE TRIGGER `trg_fkTblCrmMetricsTypeToTblCrmMetricsTypeFormatViaIntCrm1049697325_restrict_del` BEFORE DELETE ON `tblCrmMetricsTypeFormat`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblCrmMetricsType` WHERE `intCrmMetricsTypeFormatID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblCrmMetricsType';
    END IF;
END;

-- Constraint: fkTblCrmMetricsUserToTblCrmMetricsTypeViaIntCrmMetric1ID
CREATE TRIGGER `trg_fkTblCrmMetricsUserToTblCrmMetricsTypeViaIntCrmMetric1ID_restrict_del` BEFORE DELETE ON `tblCrmMetricsType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblCrmMetricsUser` WHERE `intCrmMetric1ID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblCrmMetricsUser';
    END IF;
END;

-- Constraint: fkTblCrmMetricsUserToTblCrmMetricsTypeViaIntCrmMetric2ID
CREATE TRIGGER `trg_fkTblCrmMetricsUserToTblCrmMetricsTypeViaIntCrmMetric2ID_restrict_del` BEFORE DELETE ON `tblCrmMetricsType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblCrmMetricsUser` WHERE `intCrmMetric2ID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblCrmMetricsUser';
    END IF;
END;

-- Constraint: fkTblDashboardToTblTenantViaIntOwnerTenantID
CREATE TRIGGER `trg_fkTblDashboardToTblTenantViaIntOwnerTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblDashboard` WHERE `intOwnerTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblDashboard';
    END IF;
END;

-- Constraint: fkTblDashboardDashboardPersonaToTblDashboardPersonaVia328257604
CREATE TRIGGER `trg_fkTblDashboardDashboardPersonaToTblDashboardPersonaVia328257604_cascade_del` AFTER DELETE ON `tblDashboardPersona`
FOR EACH ROW
BEGIN
    DELETE FROM `tblDashboardDashboardPersona` WHERE `intDashboardPersonaID` = OLD.`id`;
END;

-- Constraint: fkTblDashboardDashboardPersonaToTblDashboardViaIntDashboardID
CREATE TRIGGER `trg_fkTblDashboardDashboardPersonaToTblDashboardViaIntDashboardID_cascade_del` AFTER DELETE ON `tblDashboard`
FOR EACH ROW
BEGIN
    DELETE FROM `tblDashboardDashboardPersona` WHERE `intDashboardID` = OLD.`id`;
END;

-- Constraint: fkTblDashboardDashboardPersonaToTblTenantViaIntOwnerTenantID
CREATE TRIGGER `trg_fkTblDashboardDashboardPersonaToTblTenantViaIntOwnerTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblDashboardDashboardPersona` WHERE `intOwnerTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblDashboardDashboardPersona';
    END IF;
END;

-- Constraint: fkTblDashboardFeatureNoticeToTblProductTierViaIntProductTierID
CREATE TRIGGER `trg_fkTblDashboardFeatureNoticeToTblProductTierViaIntProductTierID_cascade_del` AFTER DELETE ON `tblProductTier`
FOR EACH ROW
BEGIN
    DELETE FROM `tblDashboardFeatureNotice` WHERE `intProductTierID` = OLD.`id`;
END;

-- Constraint: fkTblDashboardFeatureNoticeToTblTenantViaIntOwnerTenantID
CREATE TRIGGER `trg_fkTblDashboardFeatureNoticeToTblTenantViaIntOwnerTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblDashboardFeatureNotice` WHERE `intOwnerTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblDashboardFeatureNotice';
    END IF;
END;

-- Constraint: fkTblDashboardPersonaToTblDashboardViaIntSharedDashboardID
CREATE TRIGGER `trg_fkTblDashboardPersonaToTblDashboardViaIntSharedDashboardID_cascade_del` AFTER DELETE ON `tblDashboard`
FOR EACH ROW
BEGIN
    DELETE FROM `tblDashboardPersona` WHERE `intSharedDashboardID` = OLD.`id`;
END;

-- Constraint: fkTblDashboardPersonaToTblTenantViaIntTenantID
CREATE TRIGGER `trg_fkTblDashboardPersonaToTblTenantViaIntTenantID_cascade_del` AFTER DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    DELETE FROM `tblDashboardPersona` WHERE `intTenantID` = OLD.`id`;
END;

-- Constraint: fkTblDashboardWidgetToTblDashboardWidgetCategoryViaInt694956624
CREATE TRIGGER `trg_fkTblDashboardWidgetToTblDashboardWidgetCategoryViaInt694956624_restrict_del` BEFORE DELETE ON `tblDashboardWidgetCategory`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblDashboardWidget` WHERE `intWidgetCategoryID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblDashboardWidget';
    END IF;
END;

-- Constraint: fkTblDashboardWidgetToTblTenantViaIntOwnerTenantID
CREATE TRIGGER `trg_fkTblDashboardWidgetToTblTenantViaIntOwnerTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblDashboardWidget` WHERE `intOwnerTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblDashboardWidget';
    END IF;
END;

-- Constraint: fkTblDashboardWidgetDashboardPersonaToTblDashboardPers465988632
CREATE TRIGGER `trg_fkTblDashboardWidgetDashboardPersonaToTblDashboardPers465988632_cascade_del` AFTER DELETE ON `tblDashboardPersona`
FOR EACH ROW
BEGIN
    DELETE FROM `tblDashboardWidgetDashboardPersona` WHERE `intDashboardPersonaID` = OLD.`id`;
END;

-- Constraint: fkTblDashboardWidgetDashboardPersonaToTblDashboardWid1798115596
CREATE TRIGGER `trg_fkTblDashboardWidgetDashboardPersonaToTblDashboardWid1798115596_cascade_del` AFTER DELETE ON `tblDashboardWidget`
FOR EACH ROW
BEGIN
    DELETE FROM `tblDashboardWidgetDashboardPersona` WHERE `intWidgetID` = OLD.`id`;
END;

-- Constraint: fkTblDashboardWidgetDashboardPersonaToTblTenantViaInt1705383681
CREATE TRIGGER `trg_fkTblDashboardWidgetDashboardPersonaToTblTenantViaInt1705383681_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblDashboardWidgetDashboardPersona` WHERE `intOwnerTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblDashboardWidgetDashboardPersona';
    END IF;
END;

-- Constraint: fkTblDashboardWidgetParameterToTblDashboardWidgetQuer2050682901
CREATE TRIGGER `trg_fkTblDashboardWidgetParameterToTblDashboardWidgetQuer2050682901_cascade_del` AFTER DELETE ON `tblDashboardWidgetQuery`
FOR EACH ROW
BEGIN
    DELETE FROM `tblDashboardWidgetParameter` WHERE `intDashboardWidgetQueryID` = OLD.`id`;
END;

-- Constraint: fkTblDashboardWidgetParameterToTblTenantViaIntOwnerTenantID
CREATE TRIGGER `trg_fkTblDashboardWidgetParameterToTblTenantViaIntOwnerTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblDashboardWidgetParameter` WHERE `intOwnerTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblDashboardWidgetParameter';
    END IF;
END;

-- Constraint: fkTblDashboardWidgetQueryToTblDashboardWidgetViaIntDas156836436
CREATE TRIGGER `trg_fkTblDashboardWidgetQueryToTblDashboardWidgetViaIntDas156836436_cascade_del` AFTER DELETE ON `tblDashboardWidget`
FOR EACH ROW
BEGIN
    DELETE FROM `tblDashboardWidgetQuery` WHERE `intDashboardWidgetID` = OLD.`id`;
END;

-- Constraint: fkTblDashboardWidgetQueryToTblTenantViaIntOwnerTenantID
CREATE TRIGGER `trg_fkTblDashboardWidgetQueryToTblTenantViaIntOwnerTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblDashboardWidgetQuery` WHERE `intOwnerTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblDashboardWidgetQuery';
    END IF;
END;

-- Constraint: fkTblDdColumnToTblDdColumnTypeViaIntDdColumnTypeID
CREATE TRIGGER `trg_fkTblDdColumnToTblDdColumnTypeViaIntDdColumnTypeID_restrict_del` BEFORE DELETE ON `tblDdColumnType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblDdColumn` WHERE `intDdColumnTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblDdColumn';
    END IF;
END;

-- Constraint: fkTblDdColumnToTblDdTableViaIntDdTableID
CREATE TRIGGER `trg_fkTblDdColumnToTblDdTableViaIntDdTableID_restrict_del` BEFORE DELETE ON `tblDdTable`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblDdColumn` WHERE `intDdTableID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblDdColumn';
    END IF;
END;

-- Constraint: fkTblDdColumnToTblDdTableViaIntPkDdTableID
CREATE TRIGGER `trg_fkTblDdColumnToTblDdTableViaIntPkDdTableID_restrict_del` BEFORE DELETE ON `tblDdTable`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblDdColumn` WHERE `intPkDdTableID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblDdColumn';
    END IF;
END;

-- Constraint: fkTblDdColumnToTblTenantViaIntTenantID
CREATE TRIGGER `trg_fkTblDdColumnToTblTenantViaIntTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblDdColumn` WHERE `intTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblDdColumn';
    END IF;
END;

-- Constraint: fkTblDdTableToTblDdColumnViaIntLabelDdColumnID
CREATE TRIGGER `trg_fkTblDdTableToTblDdColumnViaIntLabelDdColumnID_restrict_del` BEFORE DELETE ON `tblDdColumn`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblDdTable` WHERE `intLabelDdColumnID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblDdTable';
    END IF;
END;

-- Constraint: fkTblDdTableToTblDdTableTypeViaIntDdTableTypeID
CREATE TRIGGER `trg_fkTblDdTableToTblDdTableTypeViaIntDdTableTypeID_restrict_del` BEFORE DELETE ON `tblDdTableType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblDdTable` WHERE `intDdTableTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblDdTable';
    END IF;
END;

-- Constraint: fkTblDdTableToTblTenantViaIntTenantID
CREATE TRIGGER `trg_fkTblDdTableToTblTenantViaIntTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblDdTable` WHERE `intTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblDdTable';
    END IF;
END;

-- Constraint: fkTblEmailAddressToTblEmailAddressStatusViaIntLastEmai898905720
CREATE TRIGGER `trg_fkTblEmailAddressToTblEmailAddressStatusViaIntLastEmai898905720_restrict_del` BEFORE DELETE ON `tblEmailAddressStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblEmailAddress` WHERE `intLastEmailAddressStatusID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblEmailAddress';
    END IF;
END;

-- Constraint: fkTblEmailAddressSmtpEventToTblEmailAddressStatusViaI1603196096
CREATE TRIGGER `trg_fkTblEmailAddressSmtpEventToTblEmailAddressStatusViaI1603196096_restrict_del` BEFORE DELETE ON `tblEmailAddressStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblEmailAddressSmtpEvent` WHERE `intEmailAddressStatusID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblEmailAddressSmtpEvent';
    END IF;
END;

-- Constraint: fkTblEmailAddressSmtpEventToTblEmailAddressViaIntEmailAddressID
CREATE TRIGGER `trg_fkTblEmailAddressSmtpEventToTblEmailAddressViaIntEmailAddressID_restrict_del` BEFORE DELETE ON `tblEmailAddress`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblEmailAddressSmtpEvent` WHERE `intEmailAddressID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblEmailAddressSmtpEvent';
    END IF;
END;

-- Constraint: fkTblEmailAddressSmtpEventToTblSmtpEventViaIntSmtpEventID
CREATE TRIGGER `trg_fkTblEmailAddressSmtpEventToTblSmtpEventViaIntSmtpEventID_restrict_del` BEFORE DELETE ON `tblSmtpEvent`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblEmailAddressSmtpEvent` WHERE `intSmtpEventID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblEmailAddressSmtpEvent';
    END IF;
END;

-- Constraint: fkTblEpicFeatureNoticeToTblTenantViaIntOwnerTenantID
CREATE TRIGGER `trg_fkTblEpicFeatureNoticeToTblTenantViaIntOwnerTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblEpicFeatureNotice` WHERE `intOwnerTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblEpicFeatureNotice';
    END IF;
END;

-- Constraint: fkTblEpicFeatureNoticePricingTierToTblEpicFeatureNoti1581744475
CREATE TRIGGER `trg_fkTblEpicFeatureNoticePricingTierToTblEpicFeatureNoti1581744475_cascade_del` AFTER DELETE ON `tblEpicFeatureNotice`
FOR EACH ROW
BEGIN
    DELETE FROM `tblEpicFeatureNoticePricingTier` WHERE `intEpicFeatureNoticeID` = OLD.`id`;
END;

-- Constraint: fkTblEpicFeatureNoticePricingTierToTblPricingTierViaIn844431749
CREATE TRIGGER `trg_fkTblEpicFeatureNoticePricingTierToTblPricingTierViaIn844431749_cascade_del` AFTER DELETE ON `tblPricingTier`
FOR EACH ROW
BEGIN
    DELETE FROM `tblEpicFeatureNoticePricingTier` WHERE `intPricingTierID` = OLD.`id`;
END;

-- Constraint: fkTblFeatureToTblFeatureCategoryViaIntFeatureCategoryID
CREATE TRIGGER `trg_fkTblFeatureToTblFeatureCategoryViaIntFeatureCategoryID_restrict_del` BEFORE DELETE ON `tblFeatureCategory`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFeature` WHERE `intFeatureCategoryID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFeature';
    END IF;
END;

-- Constraint: fkTblFeatureToTblFeatureValueTypeViaIntFeatureValueTypeID
CREATE TRIGGER `trg_fkTblFeatureToTblFeatureValueTypeViaIntFeatureValueTypeID_restrict_del` BEFORE DELETE ON `tblFeatureValueType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFeature` WHERE `intFeatureValueTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFeature';
    END IF;
END;

-- Constraint: fkTblFeatureToTblProductViaIntProductID
CREATE TRIGGER `trg_fkTblFeatureToTblProductViaIntProductID_restrict_del` BEFORE DELETE ON `tblProduct`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFeature` WHERE `intProductID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFeature';
    END IF;
END;

-- Constraint: fkTblFeatureNoticeFilterToTblBusinessClassificationVi1127590338
CREATE TRIGGER `trg_fkTblFeatureNoticeFilterToTblBusinessClassificationVi1127590338_restrict_del` BEFORE DELETE ON `tblBusinessClassification`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFeatureNoticeFilter` WHERE `intBusinessClassificationID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFeatureNoticeFilter';
    END IF;
END;

-- Constraint: fkTblFeatureNoticeFilterToTblCountryViaIntCountryID
CREATE TRIGGER `trg_fkTblFeatureNoticeFilterToTblCountryViaIntCountryID_restrict_del` BEFORE DELETE ON `tblCountry`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFeatureNoticeFilter` WHERE `intCountryID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFeatureNoticeFilter';
    END IF;
END;

-- Constraint: fkTblFeatureNoticeFilterToTblDashboardFeatureNoticeVi1961399002
CREATE TRIGGER `trg_fkTblFeatureNoticeFilterToTblDashboardFeatureNoticeVi1961399002_cascade_del` AFTER DELETE ON `tblDashboardFeatureNotice`
FOR EACH ROW
BEGIN
    DELETE FROM `tblFeatureNoticeFilter` WHERE `intDashboardFeatureNoticeID` = OLD.`id`;
END;

-- Constraint: fkTblFeatureNoticeFilterToTblEpicFeatureNoticeViaIntE1887495440
CREATE TRIGGER `trg_fkTblFeatureNoticeFilterToTblEpicFeatureNoticeViaIntE1887495440_cascade_del` AFTER DELETE ON `tblEpicFeatureNotice`
FOR EACH ROW
BEGIN
    DELETE FROM `tblFeatureNoticeFilter` WHERE `intEpicFeatureNoticeID` = OLD.`id`;
END;

-- Constraint: fkTblFeatureNoticeFilterToTblProductTierViaIntProductTierID
CREATE TRIGGER `trg_fkTblFeatureNoticeFilterToTblProductTierViaIntProductTierID_restrict_del` BEFORE DELETE ON `tblProductTier`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFeatureNoticeFilter` WHERE `intProductTierID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFeatureNoticeFilter';
    END IF;
END;

-- Constraint: fkTblFeatureNoticeFilterToTblRecurringTypeViaIntRecurringTypeID
CREATE TRIGGER `trg_fkTblFeatureNoticeFilterToTblRecurringTypeViaIntRecurringTypeID_restrict_del` BEFORE DELETE ON `tblRecurringType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFeatureNoticeFilter` WHERE `intRecurringTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFeatureNoticeFilter';
    END IF;
END;

-- Constraint: fkTblFeatureNoticeFilterToTblTenantAutomationViaIntTena11896844
CREATE TRIGGER `trg_fkTblFeatureNoticeFilterToTblTenantAutomationViaIntTena11896844_cascade_del` AFTER DELETE ON `tblTenantAutomation`
FOR EACH ROW
BEGIN
    DELETE FROM `tblFeatureNoticeFilter` WHERE `intTenantAutomationID` = OLD.`id`;
END;

-- Constraint: fkTblFeatureNoticeFilterToTblTenantTypeViaIntTenantTypeID
CREATE TRIGGER `trg_fkTblFeatureNoticeFilterToTblTenantTypeViaIntTenantTypeID_restrict_del` BEFORE DELETE ON `tblTenantType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFeatureNoticeFilter` WHERE `intTenantTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFeatureNoticeFilter';
    END IF;
END;

-- Constraint: fkTblFeatureNoticeFilterToTblTenantViaIntTenantFilterID
CREATE TRIGGER `trg_fkTblFeatureNoticeFilterToTblTenantViaIntTenantFilterID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFeatureNoticeFilter` WHERE `intTenantFilterID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFeatureNoticeFilter';
    END IF;
END;

-- Constraint: fkTblFeaturePropertyToTblFeatureValuePeriodTypeViaInt1279832935
CREATE TRIGGER `trg_fkTblFeaturePropertyToTblFeatureValuePeriodTypeViaInt1279832935_restrict_del` BEFORE DELETE ON `tblFeatureValuePeriodType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFeatureProperty` WHERE `intFeatureValuePeriodTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFeatureProperty';
    END IF;
END;

-- Constraint: fkTblFeaturePropertyToTblFeatureValueTypeViaIntFeatur1288613801
CREATE TRIGGER `trg_fkTblFeaturePropertyToTblFeatureValueTypeViaIntFeatur1288613801_restrict_del` BEFORE DELETE ON `tblFeatureValueType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFeatureProperty` WHERE `intFeatureValueTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFeatureProperty';
    END IF;
END;

-- Constraint: fkTblFeaturePropertyToTblFeatureViaIntFeatureID
CREATE TRIGGER `trg_fkTblFeaturePropertyToTblFeatureViaIntFeatureID_restrict_del` BEFORE DELETE ON `tblFeature`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFeatureProperty` WHERE `intFeatureID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFeatureProperty';
    END IF;
END;

-- Constraint: fkTblFeaturePropertyToTblPricingTierFeatureViaIntPric1153301769
CREATE TRIGGER `trg_fkTblFeaturePropertyToTblPricingTierFeatureViaIntPric1153301769_cascade_del` AFTER DELETE ON `tblPricingTierFeature`
FOR EACH ROW
BEGIN
    DELETE FROM `tblFeatureProperty` WHERE `intPricingTierFeatureID` = OLD.`id`;
END;

-- Constraint: fkTblFeaturePropertyToTblTenantViaIntOwnerTenantID
CREATE TRIGGER `trg_fkTblFeaturePropertyToTblTenantViaIntOwnerTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFeatureProperty` WHERE `intOwnerTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFeatureProperty';
    END IF;
END;

-- Constraint: fkTblGHGCalcCarbonMarketToTblGHGCalcResourceViaIntResourceID
CREATE TRIGGER `trg_fkTblGHGCalcCarbonMarketToTblGHGCalcResourceViaIntResourceID_restrict_del` BEFORE DELETE ON `tblGHGCalcResource`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblGHGCalcCarbonMarket` WHERE `intResourceID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblGHGCalcCarbonMarket';
    END IF;
END;

-- Constraint: fkTblGHGCalcFuelToTblGHGCalcFuelViaIntParentFuelID
CREATE TRIGGER `trg_fkTblGHGCalcFuelToTblGHGCalcFuelViaIntParentFuelID_cascade_del` AFTER DELETE ON `tblGHGCalcFuel`
FOR EACH ROW
BEGIN
    DELETE FROM `tblGHGCalcFuel` WHERE `intParentFuelID` = OLD.`id`;
END;

-- Constraint: fkTblGHGCalcFuelToTblGHGCalcResourceViaIntResourceID
CREATE TRIGGER `trg_fkTblGHGCalcFuelToTblGHGCalcResourceViaIntResourceID_restrict_del` BEFORE DELETE ON `tblGHGCalcResource`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblGHGCalcFuel` WHERE `intResourceID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblGHGCalcFuel';
    END IF;
END;

-- Constraint: fkTblGHGCalcGWPToTblGHGCalcResourceViaIntResourceID
CREATE TRIGGER `trg_fkTblGHGCalcGWPToTblGHGCalcResourceViaIntResourceID_restrict_del` BEFORE DELETE ON `tblGHGCalcResource`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblGHGCalcGWP` WHERE `intResourceID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblGHGCalcGWP';
    END IF;
END;

-- Constraint: fkTblGHGCalcLocationToTblGHGCalcCarbonMarketViaIntCar2140652035
CREATE TRIGGER `trg_fkTblGHGCalcLocationToTblGHGCalcCarbonMarketViaIntCar2140652035_restrict_del` BEFORE DELETE ON `tblGHGCalcCarbonMarket`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblGHGCalcLocation` WHERE `intCarbonMarketID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblGHGCalcLocation';
    END IF;
END;

-- Constraint: fkTblGHGCalcLocationToTblGHGCalcLocationViaIntParentLocationID
CREATE TRIGGER `trg_fkTblGHGCalcLocationToTblGHGCalcLocationViaIntParentLocationID_cascade_del` AFTER DELETE ON `tblGHGCalcLocation`
FOR EACH ROW
BEGIN
    DELETE FROM `tblGHGCalcLocation` WHERE `intParentLocationID` = OLD.`id`;
END;

-- Constraint: fkTblGHGCalcLocationToTblGHGCalcResourceViaIntResourceID
CREATE TRIGGER `trg_fkTblGHGCalcLocationToTblGHGCalcResourceViaIntResourceID_restrict_del` BEFORE DELETE ON `tblGHGCalcResource`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblGHGCalcLocation` WHERE `intResourceID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblGHGCalcLocation';
    END IF;
END;

-- Constraint: fkTblGHGCalcVehicleToTblGHGCalcResourceViaIntResourceID
CREATE TRIGGER `trg_fkTblGHGCalcVehicleToTblGHGCalcResourceViaIntResourceID_restrict_del` BEFORE DELETE ON `tblGHGCalcResource`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblGHGCalcVehicle` WHERE `intResourceID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblGHGCalcVehicle';
    END IF;
END;

-- Constraint: fkTblGHGCalcVehicleToTblGHGCalcVehicleViaIntParentVehicleID
CREATE TRIGGER `trg_fkTblGHGCalcVehicleToTblGHGCalcVehicleViaIntParentVehicleID_cascade_del` AFTER DELETE ON `tblGHGCalcVehicle`
FOR EACH ROW
BEGIN
    DELETE FROM `tblGHGCalcVehicle` WHERE `intParentVehicleID` = OLD.`id`;
END;

-- Constraint: fkTblIntegrationActionAdvancedEndpointToTblIntegration998018549
CREATE TRIGGER `trg_fkTblIntegrationActionAdvancedEndpointToTblIntegration998018549_restrict_del` BEFORE DELETE ON `tblIntegrationSystem`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblIntegrationActionAdvancedEndpoint` WHERE `intIntegrationSystemID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblIntegrationActionAdvancedEndpoint';
    END IF;
END;

-- Constraint: fkTblIntegrationTemplateToTblIntegrationEndpointForma1870131928
CREATE TRIGGER `trg_fkTblIntegrationTemplateToTblIntegrationEndpointForma1870131928_restrict_del` BEFORE DELETE ON `tblIntegrationEndpointFormat`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblIntegrationTemplate` WHERE `intIntegrationEndpointFormatID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblIntegrationTemplate';
    END IF;
END;

-- Constraint: fkTblIntegrationTemplateToTblIntegrationProtocolViaIn1637480168
CREATE TRIGGER `trg_fkTblIntegrationTemplateToTblIntegrationProtocolViaIn1637480168_restrict_del` BEFORE DELETE ON `tblIntegrationProtocol`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblIntegrationTemplate` WHERE `intIntegrationProtocolID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblIntegrationTemplate';
    END IF;
END;

-- Constraint: fkTblIntegrationTemplateToTblIntegrationSystemViaIntIn994776264
CREATE TRIGGER `trg_fkTblIntegrationTemplateToTblIntegrationSystemViaIntIn994776264_restrict_del` BEFORE DELETE ON `tblIntegrationSystem`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblIntegrationTemplate` WHERE `intIntegrationSystemID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblIntegrationTemplate';
    END IF;
END;

-- Constraint: fkTblLocalizationToTblCountryViaIntCountryID
CREATE TRIGGER `trg_fkTblLocalizationToTblCountryViaIntCountryID_restrict_del` BEFORE DELETE ON `tblCountry`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblLocalization` WHERE `intCountryID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblLocalization';
    END IF;
END;

-- Constraint: fkTblLocalizationToTblCurrencyViaIntDefaultCurrencyID
CREATE TRIGGER `trg_fkTblLocalizationToTblCurrencyViaIntDefaultCurrencyID_restrict_del` BEFORE DELETE ON `tblCurrency`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblLocalization` WHERE `intDefaultCurrencyID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblLocalization';
    END IF;
END;

-- Constraint: fkTblLocalizationToTblLanguageViaIntLanguageID
CREATE TRIGGER `trg_fkTblLocalizationToTblLanguageViaIntLanguageID_restrict_del` BEFORE DELETE ON `tblLanguage`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblLocalization` WHERE `intLanguageID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblLocalization';
    END IF;
END;

-- Constraint: fkTblLocalizationToTblLocalizationTypeViaIntLocalizationTypeID
CREATE TRIGGER `trg_fkTblLocalizationToTblLocalizationTypeViaIntLocalizationTypeID_restrict_del` BEFORE DELETE ON `tblLocalizationType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblLocalization` WHERE `intLocalizationTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblLocalization';
    END IF;
END;

-- Constraint: fkTblLocalizationToTblLocalizationViaIntParentLocalizationID
CREATE TRIGGER `trg_fkTblLocalizationToTblLocalizationViaIntParentLocalizationID_restrict_del` BEFORE DELETE ON `tblLocalization`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblLocalization` WHERE `intParentLocalizationID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblLocalization';
    END IF;
END;

-- Constraint: fkTblLocalizationToTblTenantViaIntOwnerTenantID
CREATE TRIGGER `trg_fkTblLocalizationToTblTenantViaIntOwnerTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblLocalization` WHERE `intOwnerTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblLocalization';
    END IF;
END;

-- Constraint: fkTblLocalizationArchiveToTblCountryViaIntCountryID
CREATE TRIGGER `trg_fkTblLocalizationArchiveToTblCountryViaIntCountryID_restrict_del` BEFORE DELETE ON `tblCountry`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblLocalizationArchive` WHERE `intCountryID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblLocalizationArchive';
    END IF;
END;

-- Constraint: fkTblLocalizationArchiveToTblCurrencyViaIntDefaultCurrencyID
CREATE TRIGGER `trg_fkTblLocalizationArchiveToTblCurrencyViaIntDefaultCurrencyID_restrict_del` BEFORE DELETE ON `tblCurrency`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblLocalizationArchive` WHERE `intDefaultCurrencyID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblLocalizationArchive';
    END IF;
END;

-- Constraint: fkTblLocalizationArchiveToTblLanguageViaIntLanguageID
CREATE TRIGGER `trg_fkTblLocalizationArchiveToTblLanguageViaIntLanguageID_restrict_del` BEFORE DELETE ON `tblLanguage`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblLocalizationArchive` WHERE `intLanguageID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblLocalizationArchive';
    END IF;
END;

-- Constraint: fkTblLocalizationArchiveToTblLocalizationViaIntLocalizationID
CREATE TRIGGER `trg_fkTblLocalizationArchiveToTblLocalizationViaIntLocalizationID_restrict_del` BEFORE DELETE ON `tblLocalization`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblLocalizationArchive` WHERE `intLocalizationID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblLocalizationArchive';
    END IF;
END;

-- Constraint: fkTblLocalizationArchiveToTblTenantViaIntOwnerTenantID
CREATE TRIGGER `trg_fkTblLocalizationArchiveToTblTenantViaIntOwnerTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblLocalizationArchive` WHERE `intOwnerTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblLocalizationArchive';
    END IF;
END;

-- Constraint: fkTblPasswordToTblPasswordStorageVersionViaIntPasswordS37970469
CREATE TRIGGER `trg_fkTblPasswordToTblPasswordStorageVersionViaIntPasswordS37970469_restrict_del` BEFORE DELETE ON `tblPasswordStorageVersion`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPassword` WHERE `intPasswordStorageVersionID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPassword';
    END IF;
END;

-- Constraint: fkTblPermissionToTblApplicationViaIntApplicationID
CREATE TRIGGER `trg_fkTblPermissionToTblApplicationViaIntApplicationID_restrict_del` BEFORE DELETE ON `tblApplication`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPermission` WHERE `intApplicationID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPermission';
    END IF;
END;

-- Constraint: fkTblPlanFeatureToTblPlanFeatureCategoryViaIntPlanFeat864232777
CREATE TRIGGER `trg_fkTblPlanFeatureToTblPlanFeatureCategoryViaIntPlanFeat864232777_restrict_del` BEFORE DELETE ON `tblPlanFeatureCategory`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPlanFeature` WHERE `intPlanFeatureCategoryID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPlanFeature';
    END IF;
END;

-- Constraint: fkTblPlanFeatureProductTierToTblPlanFeatureViaIntPlanFeatureID
CREATE TRIGGER `trg_fkTblPlanFeatureProductTierToTblPlanFeatureViaIntPlanFeatureID_restrict_del` BEFORE DELETE ON `tblPlanFeature`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPlanFeatureProductTier` WHERE `intPlanFeatureID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPlanFeatureProductTier';
    END IF;
END;

-- Constraint: fkTblPlanFeatureProductTierToTblProductTierViaIntProductTierID
CREATE TRIGGER `trg_fkTblPlanFeatureProductTierToTblProductTierViaIntProductTierID_restrict_del` BEFORE DELETE ON `tblProductTier`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPlanFeatureProductTier` WHERE `intProductTierID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPlanFeatureProductTier';
    END IF;
END;

-- Constraint: fkTblPricingTierToTblProductOfferingViaIntProductOfferingID
CREATE TRIGGER `trg_fkTblPricingTierToTblProductOfferingViaIntProductOfferingID_cascade_del` AFTER DELETE ON `tblProductOffering`
FOR EACH ROW
BEGIN
    DELETE FROM `tblPricingTier` WHERE `intProductOfferingID` = OLD.`id`;
END;

-- Constraint: fkTblPricingTierToTblProductTierViaIntProductTierID
CREATE TRIGGER `trg_fkTblPricingTierToTblProductTierViaIntProductTierID_cascade_del` AFTER DELETE ON `tblProductTier`
FOR EACH ROW
BEGIN
    DELETE FROM `tblPricingTier` WHERE `intProductTierID` = OLD.`id`;
END;

-- Constraint: fkTblPricingTierToTblProductViaIntProductID
CREATE TRIGGER `trg_fkTblPricingTierToTblProductViaIntProductID_cascade_del` AFTER DELETE ON `tblProduct`
FOR EACH ROW
BEGIN
    DELETE FROM `tblPricingTier` WHERE `intProductID` = OLD.`id`;
END;

-- Constraint: fkTblPricingTierFeatureToTblFeatureValueOverageContro1750148949
CREATE TRIGGER `trg_fkTblPricingTierFeatureToTblFeatureValueOverageContro1750148949_restrict_del` BEFORE DELETE ON `tblFeatureValueOverageControlType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPricingTierFeature` WHERE `intOverageControlTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPricingTierFeature';
    END IF;
END;

-- Constraint: fkTblPricingTierFeatureToTblFeatureValuePeriodTypeVia1731107716
CREATE TRIGGER `trg_fkTblPricingTierFeatureToTblFeatureValuePeriodTypeVia1731107716_restrict_del` BEFORE DELETE ON `tblFeatureValuePeriodType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPricingTierFeature` WHERE `intFeatureValuePeriodTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPricingTierFeature';
    END IF;
END;

-- Constraint: fkTblPricingTierFeatureToTblFeatureValueTypeViaIntFeat760178626
CREATE TRIGGER `trg_fkTblPricingTierFeatureToTblFeatureValueTypeViaIntFeat760178626_restrict_del` BEFORE DELETE ON `tblFeatureValueType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPricingTierFeature` WHERE `intFeatureValueTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPricingTierFeature';
    END IF;
END;

-- Constraint: fkTblPricingTierFeatureToTblFeatureValueTypeViaIntOve1238213322
CREATE TRIGGER `trg_fkTblPricingTierFeatureToTblFeatureValueTypeViaIntOve1238213322_restrict_del` BEFORE DELETE ON `tblFeatureValueType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPricingTierFeature` WHERE `intOverageUnitCostThresholdTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPricingTierFeature';
    END IF;
END;

-- Constraint: fkTblPricingTierFeatureToTblFeatureViaIntFeatureID
CREATE TRIGGER `trg_fkTblPricingTierFeatureToTblFeatureViaIntFeatureID_restrict_del` BEFORE DELETE ON `tblFeature`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPricingTierFeature` WHERE `intFeatureID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPricingTierFeature';
    END IF;
END;

-- Constraint: fkTblPricingTierFeatureToTblPricingTierViaIntPricingTierID
CREATE TRIGGER `trg_fkTblPricingTierFeatureToTblPricingTierViaIntPricingTierID_restrict_del` BEFORE DELETE ON `tblPricingTier`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPricingTierFeature` WHERE `intPricingTierID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPricingTierFeature';
    END IF;
END;

-- Constraint: fkTblProductToTblBillingTypeViaIntBillingTypeID
CREATE TRIGGER `trg_fkTblProductToTblBillingTypeViaIntBillingTypeID_restrict_del` BEFORE DELETE ON `tblBillingType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblProduct` WHERE `intBillingTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblProduct';
    END IF;
END;

-- Constraint: fkTblProductToTblProductUnitViaIntProductUnitID
CREATE TRIGGER `trg_fkTblProductToTblProductUnitViaIntProductUnitID_restrict_del` BEFORE DELETE ON `tblProductUnit`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblProduct` WHERE `intProductUnitID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblProduct';
    END IF;
END;

-- Constraint: fkTblProductToTblProductViaIntProductParentID
CREATE TRIGGER `trg_fkTblProductToTblProductViaIntProductParentID_restrict_del` BEFORE DELETE ON `tblProduct`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblProduct` WHERE `intProductParentID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblProduct';
    END IF;
END;

-- Constraint: fkTblProductDiscountControlToTblProductViaIntProductID
CREATE TRIGGER `trg_fkTblProductDiscountControlToTblProductViaIntProductID_restrict_del` BEFORE DELETE ON `tblProduct`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblProductDiscountControl` WHERE `intProductID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblProductDiscountControl';
    END IF;
END;

-- Constraint: fkTblProductOfferingFeatureToTblFeatureViaIntFeatureID
CREATE TRIGGER `trg_fkTblProductOfferingFeatureToTblFeatureViaIntFeatureID_restrict_del` BEFORE DELETE ON `tblFeature`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblProductOfferingFeature` WHERE `intFeatureID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblProductOfferingFeature';
    END IF;
END;

-- Constraint: fkTblProductOfferingFeatureToTblProductOfferingViaIntP764916061
CREATE TRIGGER `trg_fkTblProductOfferingFeatureToTblProductOfferingViaIntP764916061_restrict_del` BEFORE DELETE ON `tblProductOffering`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblProductOfferingFeature` WHERE `intProductOfferingID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblProductOfferingFeature';
    END IF;
END;

-- Constraint: fkTblPromotionalOfferDetailToTblProductTierViaIntUpgra836988905
CREATE TRIGGER `trg_fkTblPromotionalOfferDetailToTblProductTierViaIntUpgra836988905_restrict_del` BEFORE DELETE ON `tblProductTier`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPromotionalOfferDetail` WHERE `intUpgradeProductTierID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPromotionalOfferDetail';
    END IF;
END;

-- Constraint: fkTblPromotionalOfferDetailToTblProductViaIntAddProductID
CREATE TRIGGER `trg_fkTblPromotionalOfferDetailToTblProductViaIntAddProductID_restrict_del` BEFORE DELETE ON `tblProduct`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPromotionalOfferDetail` WHERE `intAddProductID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPromotionalOfferDetail';
    END IF;
END;

-- Constraint: fkTblPromotionalOfferDetailToTblPromotionalOfferViaIn1725564611
CREATE TRIGGER `trg_fkTblPromotionalOfferDetailToTblPromotionalOfferViaIn1725564611_cascade_del` AFTER DELETE ON `tblPromotionalOffer`
FOR EACH ROW
BEGIN
    DELETE FROM `tblPromotionalOfferDetail` WHERE `intPromotionalOfferID` = OLD.`id`;
END;

-- Constraint: fkTblPromotionalOfferDetailToTblRecurringTypeViaIntUpg230950365
CREATE TRIGGER `trg_fkTblPromotionalOfferDetailToTblRecurringTypeViaIntUpg230950365_restrict_del` BEFORE DELETE ON `tblRecurringType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPromotionalOfferDetail` WHERE `intUpgradeRecurringTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPromotionalOfferDetail';
    END IF;
END;

-- Constraint: fkTblPromotionalOfferPricingTierToTblPricingTierViaIn1370877860
CREATE TRIGGER `trg_fkTblPromotionalOfferPricingTierToTblPricingTierViaIn1370877860_cascade_del` AFTER DELETE ON `tblPricingTier`
FOR EACH ROW
BEGIN
    DELETE FROM `tblPromotionalOfferPricingTier` WHERE `intPricingTierID` = OLD.`id`;
END;

-- Constraint: fkTblPromotionalOfferPricingTierToTblPromotionalOffer1651163174
CREATE TRIGGER `trg_fkTblPromotionalOfferPricingTierToTblPromotionalOffer1651163174_cascade_del` AFTER DELETE ON `tblPromotionalOffer`
FOR EACH ROW
BEGIN
    DELETE FROM `tblPromotionalOfferPricingTier` WHERE `intPromotionalOfferID` = OLD.`id`;
END;

-- Constraint: fkTblRemoteEntityIdMappingToTblTenantViaIntTenantID
CREATE TRIGGER `trg_fkTblRemoteEntityIdMappingToTblTenantViaIntTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblRemoteEntityIdMapping` WHERE `intTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblRemoteEntityIdMapping';
    END IF;
END;

-- Constraint: fkTblReportHistoryToTblReportTemplateViaIntReportTemplateID
CREATE TRIGGER `trg_fkTblReportHistoryToTblReportTemplateViaIntReportTemplateID_cascade_del` AFTER DELETE ON `tblReportTemplate`
FOR EACH ROW
BEGIN
    DELETE FROM `tblReportHistory` WHERE `intReportTemplateID` = OLD.`id`;
END;

-- Constraint: fkTblReportTemplateToTblReportCategoryViaIntReportCategoryID
CREATE TRIGGER `trg_fkTblReportTemplateToTblReportCategoryViaIntReportCategoryID_restrict_del` BEFORE DELETE ON `tblReportCategory`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblReportTemplate` WHERE `intReportCategoryID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblReportTemplate';
    END IF;
END;

-- Constraint: fkTblReportTemplateToTblReportTypeViaIntReportTypeID
CREATE TRIGGER `trg_fkTblReportTemplateToTblReportTypeViaIntReportTypeID_cascade_del` AFTER DELETE ON `tblReportType`
FOR EACH ROW
BEGIN
    DELETE FROM `tblReportTemplate` WHERE `intReportTypeID` = OLD.`id`;
END;

-- Constraint: fkTblReportTemplateToTblTenantViaIntOwnerTenantID
CREATE TRIGGER `trg_fkTblReportTemplateToTblTenantViaIntOwnerTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblReportTemplate` WHERE `intOwnerTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblReportTemplate';
    END IF;
END;

-- Constraint: fkTblResourceToTblDdColumnViaIntDdColumnID
CREATE TRIGGER `trg_fkTblResourceToTblDdColumnViaIntDdColumnID_restrict_del` BEFORE DELETE ON `tblDdColumn`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblResource` WHERE `intDdColumnID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblResource';
    END IF;
END;

-- Constraint: fkTblResourceToTblDdTableViaIntDdTableID
CREATE TRIGGER `trg_fkTblResourceToTblDdTableViaIntDdTableID_restrict_del` BEFORE DELETE ON `tblDdTable`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblResource` WHERE `intDdTableID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblResource';
    END IF;
END;

-- Constraint: fkTblResourceToTblResourceNamespaceViaIntResourceNamespaceID
CREATE TRIGGER `trg_fkTblResourceToTblResourceNamespaceViaIntResourceNamespaceID_restrict_del` BEFORE DELETE ON `tblResourceNamespace`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblResource` WHERE `intResourceNamespaceID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblResource';
    END IF;
END;

-- Constraint: fkTblResourceToTblResourceServiceViaIntResourceServiceID
CREATE TRIGGER `trg_fkTblResourceToTblResourceServiceViaIntResourceServiceID_restrict_del` BEFORE DELETE ON `tblResourceService`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblResource` WHERE `intResourceServiceID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblResource';
    END IF;
END;

-- Constraint: fkTblResourceToTblResourceTypeViaIntResourceTypeID
CREATE TRIGGER `trg_fkTblResourceToTblResourceTypeViaIntResourceTypeID_restrict_del` BEFORE DELETE ON `tblResourceType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblResource` WHERE `intResourceTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblResource';
    END IF;
END;

-- Constraint: fkTblResourceToTblResourceViaIntParentResourceID
CREATE TRIGGER `trg_fkTblResourceToTblResourceViaIntParentResourceID_restrict_del` BEFORE DELETE ON `tblResource`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblResource` WHERE `intParentResourceID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblResource';
    END IF;
END;

-- Constraint: fkTblResourceToTblTenantViaIntTenantID
CREATE TRIGGER `trg_fkTblResourceToTblTenantViaIntTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblResource` WHERE `intTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblResource';
    END IF;
END;

-- Constraint: fkTblResourceConsumerToTblResourceConsumerTypeViaIntR1899153794
CREATE TRIGGER `trg_fkTblResourceConsumerToTblResourceConsumerTypeViaIntR1899153794_cascade_del` AFTER DELETE ON `tblResourceConsumerType`
FOR EACH ROW
BEGIN
    DELETE FROM `tblResourceConsumer` WHERE `intResourceConsumerTypeID` = OLD.`id`;
END;

-- Constraint: fkTblResourceConsumerToTblResourceViaIntResourceID
CREATE TRIGGER `trg_fkTblResourceConsumerToTblResourceViaIntResourceID_cascade_del` AFTER DELETE ON `tblResource`
FOR EACH ROW
BEGIN
    DELETE FROM `tblResourceConsumer` WHERE `intResourceID` = OLD.`id`;
END;

-- Constraint: fkTblSmtpEventToTblSmtpEventTypeViaIntSmtpEventTypeID
CREATE TRIGGER `trg_fkTblSmtpEventToTblSmtpEventTypeViaIntSmtpEventTypeID_restrict_del` BEFORE DELETE ON `tblSmtpEventType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblSmtpEvent` WHERE `intSmtpEventTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblSmtpEvent';
    END IF;
END;

-- Constraint: fkTblSmtpEventToTblSmtpProviderViaIntSmtpProviderID
CREATE TRIGGER `trg_fkTblSmtpEventToTblSmtpProviderViaIntSmtpProviderID_restrict_del` BEFORE DELETE ON `tblSmtpProvider`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblSmtpEvent` WHERE `intSmtpProviderID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblSmtpEvent';
    END IF;
END;

-- Constraint: fkTblSmtpProviderToTblTenantViaIntTenantID
CREATE TRIGGER `trg_fkTblSmtpProviderToTblTenantViaIntTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblSmtpProvider` WHERE `intTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblSmtpProvider';
    END IF;
END;

-- Constraint: fkTblStockTxTypeToTblTenantViaIntTenantID
CREATE TRIGGER `trg_fkTblStockTxTypeToTblTenantViaIntTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblStockTxType` WHERE `intTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblStockTxType';
    END IF;
END;

-- Constraint: fkTblTenantToTblLeadStateViaIntLeadStateID
CREATE TRIGGER `trg_fkTblTenantToTblLeadStateViaIntLeadStateID_restrict_del` BEFORE DELETE ON `tblLeadState`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTenant` WHERE `intLeadStateID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTenant';
    END IF;
END;

-- Constraint: fkTblTenantToTblLocalizationViaIntDefaultLocalizationID
CREATE TRIGGER `trg_fkTblTenantToTblLocalizationViaIntDefaultLocalizationID_restrict_del` BEFORE DELETE ON `tblLocalization`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTenant` WHERE `intDefaultLocalizationID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTenant';
    END IF;
END;

-- Constraint: fkTblTenantToTblPaymentMethodViaIntTargetPaymentMethodID
CREATE TRIGGER `trg_fkTblTenantToTblPaymentMethodViaIntTargetPaymentMethodID_restrict_del` BEFORE DELETE ON `tblPaymentMethod`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTenant` WHERE `intTargetPaymentMethodID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTenant';
    END IF;
END;

-- Constraint: fkTblTenantToTblTenantStatusViaIntTenantStatusID
CREATE TRIGGER `trg_fkTblTenantToTblTenantStatusViaIntTenantStatusID_restrict_del` BEFORE DELETE ON `tblTenantStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTenant` WHERE `intTenantStatusID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTenant';
    END IF;
END;

-- Constraint: fkTblTenantToTblTenantTypeViaIntTenantTypeID
CREATE TRIGGER `trg_fkTblTenantToTblTenantTypeViaIntTenantTypeID_restrict_del` BEFORE DELETE ON `tblTenantType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTenant` WHERE `intTenantTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTenant';
    END IF;
END;

-- Constraint: fkTblTenantToTblTenantViaIntConfirmCopiedToTenantID
CREATE TRIGGER `trg_fkTblTenantToTblTenantViaIntConfirmCopiedToTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTenant` WHERE `intConfirmCopiedToTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTenant';
    END IF;
END;

-- Constraint: fkTblTenantToTblTenantViaIntPartnerID
CREATE TRIGGER `trg_fkTblTenantToTblTenantViaIntPartnerID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTenant` WHERE `intPartnerID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTenant';
    END IF;
END;

-- Constraint: fkTblTenantAutomationToTblFeatureViaIntFeatureID
CREATE TRIGGER `trg_fkTblTenantAutomationToTblFeatureViaIntFeatureID_cascade_del` AFTER DELETE ON `tblFeature`
FOR EACH ROW
BEGIN
    DELETE FROM `tblTenantAutomation` WHERE `intFeatureID` = OLD.`id`;
END;

-- Constraint: fkTblTenantNotificationPricingTierToTblPricingTierVia1197790813
CREATE TRIGGER `trg_fkTblTenantNotificationPricingTierToTblPricingTierVia1197790813_cascade_del` AFTER DELETE ON `tblPricingTier`
FOR EACH ROW
BEGIN
    DELETE FROM `tblTenantNotificationPricingTier` WHERE `intPricingTierID` = OLD.`id`;
END;

-- Constraint: fkTblTenantNotificationPricingTierToTblTenantNotificati96878801
CREATE TRIGGER `trg_fkTblTenantNotificationPricingTierToTblTenantNotificati96878801_cascade_del` AFTER DELETE ON `tblTenantNotification`
FOR EACH ROW
BEGIN
    DELETE FROM `tblTenantNotificationPricingTier` WHERE `intTenantNotificationID` = OLD.`id`;
END;

-- Constraint: fkTblTenantRelationshipToTblTenantRelationshipTypeViaI502057060
CREATE TRIGGER `trg_fkTblTenantRelationshipToTblTenantRelationshipTypeViaI502057060_restrict_del` BEFORE DELETE ON `tblTenantRelationshipType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTenantRelationship` WHERE `intTenantRelationshipTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTenantRelationship';
    END IF;
END;

-- Constraint: fkTblTenantRelationshipToTblTenantViaIntMasterTenantID
CREATE TRIGGER `trg_fkTblTenantRelationshipToTblTenantViaIntMasterTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTenantRelationship` WHERE `intMasterTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTenantRelationship';
    END IF;
END;

-- Constraint: fkTblTenantRelationshipToTblTenantViaIntSlaveTenantID
CREATE TRIGGER `trg_fkTblTenantRelationshipToTblTenantViaIntSlaveTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTenantRelationship` WHERE `intSlaveTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTenantRelationship';
    END IF;
END;

-- Constraint: fkTblTheThrowableReportedToTblTheThrowableViaIntTheThrowableID
CREATE TRIGGER `trg_fkTblTheThrowableReportedToTblTheThrowableViaIntTheThrowableID_cascade_del` AFTER DELETE ON `tblTheThrowable`
FOR EACH ROW
BEGIN
    DELETE FROM `tblTheThrowableReported` WHERE `intTheThrowableID` = OLD.`id`;
END;

-- Constraint: fkTblUsageLogToTblTenantViaIntTenantID
CREATE TRIGGER `trg_fkTblUsageLogToTblTenantViaIntTenantID_restrict_del` BEFORE DELETE ON `tblTenant`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblUsageLog` WHERE `intTenantID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblUsageLog';
    END IF;
END;

-- Constraint: fkTblWorkToTblClientSessionViaIntClientSessionID
CREATE TRIGGER `trg_fkTblWorkToTblClientSessionViaIntClientSessionID_cascade_del` AFTER DELETE ON `tblClientSession`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWork` WHERE `intClientSessionID` = OLD.`id`;
END;

-- Constraint: fkTblWorkflowActivityTypeToTblWorkflowActivityTypeGrou224890084
CREATE TRIGGER `trg_fkTblWorkflowActivityTypeToTblWorkflowActivityTypeGrou224890084_restrict_del` BEFORE DELETE ON `tblWorkflowActivityTypeGroup`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkflowActivityType` WHERE `intWorkflowActivityTypeGroupID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkflowActivityType';
    END IF;
END;

-- Constraint: fkTblWorkflowTriggerTypeToTblWorkflowTriggerTypeGroupV956444445
CREATE TRIGGER `trg_fkTblWorkflowTriggerTypeToTblWorkflowTriggerTypeGroupV956444445_restrict_del` BEFORE DELETE ON `tblWorkflowTriggerTypeGroup`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkflowTriggerType` WHERE `intWorkflowTriggerTypeGroupID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkflowTriggerType';
    END IF;
END;

