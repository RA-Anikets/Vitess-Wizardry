-- Constraint: fkTblAccountLogToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblAccountLogToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAccountLog` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAccountLog';
    END IF;
END;

-- Constraint: fkTblAccountLogDiscountToTblAccountLogViaIntAccountLogID
CREATE TRIGGER `trg_fkTblAccountLogDiscountToTblAccountLogViaIntAccountLogID_cascade_del` AFTER DELETE ON `tblAccountLog`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAccountLogDiscount` WHERE `intAccountLogID` = OLD.`id`;
END;

-- Constraint: fkTblAccountLogOrderToTblAccountLogViaIntAccountLogID
CREATE TRIGGER `trg_fkTblAccountLogOrderToTblAccountLogViaIntAccountLogID_cascade_del` AFTER DELETE ON `tblAccountLog`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAccountLogOrder` WHERE `intAccountLogID` = OLD.`id`;
END;

-- Constraint: fkTblAccountLogOrderToTblOrderViaIntOrderID
CREATE TRIGGER `trg_fkTblAccountLogOrderToTblOrderViaIntOrderID_cascade_del` AFTER DELETE ON `tblOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAccountLogOrder` WHERE `intOrderID` = OLD.`id`;
END;

-- Constraint: fkTblAccountNotesToTblUserViaIntCreatedByUserID
CREATE TRIGGER `trg_fkTblAccountNotesToTblUserViaIntCreatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAccountNotes` WHERE `intCreatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAccountNotes';
    END IF;
END;

-- Constraint: fkTblActivityLogToTblAssetViaIntAssetID
CREATE TRIGGER `trg_fkTblActivityLogToTblAssetViaIntAssetID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblActivityLog` WHERE `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblActivityLogToTblIntegrationActionViaIntIntegrationActionID
CREATE TRIGGER `trg_fkTblActivityLogToTblIntegrationActionViaIntIntegrationActionID_cascade_del` AFTER DELETE ON `tblIntegrationAction`
FOR EACH ROW
BEGIN
    DELETE FROM `tblActivityLog` WHERE `intIntegrationActionID` = OLD.`id`;
END;

-- Constraint: fkTblActivityLogToTblScheduledMaintenanceViaIntSchedu1232720111
CREATE TRIGGER `trg_fkTblActivityLogToTblScheduledMaintenanceViaIntSchedu1232720111_cascade_del` AFTER DELETE ON `tblScheduledMaintenance`
FOR EACH ROW
BEGIN
    DELETE FROM `tblActivityLog` WHERE `intScheduledMaintenanceID` = OLD.`id`;
END;

-- Constraint: fkTblActivityLogToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblActivityLogToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblActivityLog` WHERE `intTenantID` = OLD.`intTenantID` AND `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblActivityLog';
    END IF;
END;

-- Constraint: fkTblApiConsumerToTblApiConsumerViaIntApiConsumerDistr939616916
CREATE TRIGGER `trg_fkTblApiConsumerToTblApiConsumerViaIntApiConsumerDistr939616916_restrict_del` BEFORE DELETE ON `tblApiConsumer`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblApiConsumer` WHERE `intApiConsumerDistributionParentID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblApiConsumer';
    END IF;
END;

-- Constraint: fkTblApiConsumerUsageToTblApiConsumerViaIntApiConsume1358243839
CREATE TRIGGER `trg_fkTblApiConsumerUsageToTblApiConsumerViaIntApiConsume1358243839_restrict_del` BEFORE DELETE ON `tblApiConsumer`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblApiConsumerUsage` WHERE `intApiConsumerDistributionParentID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblApiConsumerUsage';
    END IF;
END;

-- Constraint: fkTblApiConsumerUsageToTblApiConsumerViaIntApiConsumerID
CREATE TRIGGER `trg_fkTblApiConsumerUsageToTblApiConsumerViaIntApiConsumerID_restrict_del` BEFORE DELETE ON `tblApiConsumer`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblApiConsumerUsage` WHERE `intApiConsumerID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblApiConsumerUsage';
    END IF;
END;

-- Constraint: fkTblAssetToTblAccountViaIntAccountIDAndIntTenantID
CREATE TRIGGER `trg_fkTblAssetToTblAccountViaIntAccountIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblAccount`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intAccountID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAsset';
    END IF;
END;

-- Constraint: fkTblAssetToTblAssetCategoryViaIntCategoryIDAndIntTenantID
CREATE TRIGGER `trg_fkTblAssetToTblAssetCategoryViaIntCategoryIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblAssetCategory`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intCategoryID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAsset';
    END IF;
END;

-- Constraint: fkTblAssetToTblAssetCategoryViaIntSuperAssetCategoryID
CREATE TRIGGER `trg_fkTblAssetToTblAssetCategoryViaIntSuperAssetCategoryID_restrict_del` BEFORE DELETE ON `tblAssetCategory`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAsset` WHERE `intSuperAssetCategoryID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAsset';
    END IF;
END;

-- Constraint: fkTblAssetToTblAssetCategoryViaIntSuperCategoryID
CREATE TRIGGER `trg_fkTblAssetToTblAssetCategoryViaIntSuperCategoryID_restrict_del` BEFORE DELETE ON `tblAssetCategory`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAsset` WHERE `intSuperCategoryID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAsset';
    END IF;
END;

-- Constraint: fkTblAssetToTblAssetViaIntAssetLocationIDAndIntTenantID
CREATE TRIGGER `trg_fkTblAssetToTblAssetViaIntAssetLocationIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetLocationID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAsset';
    END IF;
END;

-- Constraint: fkTblAssetToTblAssetViaIntAssetParentIDAndIntTenantID
CREATE TRIGGER `trg_fkTblAssetToTblAssetViaIntAssetParentIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetParentID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAsset';
    END IF;
END;

-- Constraint: fkTblAssetToTblAssetViaIntSiteIDAndIntTenantID
CREATE TRIGGER `trg_fkTblAssetToTblAssetViaIntSiteIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intSiteID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAsset';
    END IF;
END;

-- Constraint: fkTblAssetToTblChargeDepartmentViaIntChargeDepartment1215857167
CREATE TRIGGER `trg_fkTblAssetToTblChargeDepartmentViaIntChargeDepartment1215857167_restrict_del` BEFORE DELETE ON `tblChargeDepartment`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intChargeDepartmentID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAsset';
    END IF;
END;

-- Constraint: fkTblAssetToTblMeterReadingUnitViaIntLastMeterReadingUnitID
CREATE TRIGGER `trg_fkTblAssetToTblMeterReadingUnitViaIntLastMeterReadingUnitID_restrict_del` BEFORE DELETE ON `tblMeterReadingUnit`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAsset` WHERE `intLastMeterReadingUnitID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAsset';
    END IF;
END;

-- Constraint: fkTblAssetToTblPurchaseOrderLineItemViaIntCreatedForPu518539163
CREATE TRIGGER `trg_fkTblAssetToTblPurchaseOrderLineItemViaIntCreatedForPu518539163_restrict_del` BEFORE DELETE ON `tblPurchaseOrderLineItem`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAsset` WHERE `intCreatedForPurchaseOrderLineItemID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAsset';
    END IF;
END;

-- Constraint: fkTblAssetToTblReceiptLineItemViaIntCreatedFromReceipt145304412
CREATE TRIGGER `trg_fkTblAssetToTblReceiptLineItemViaIntCreatedFromReceipt145304412_restrict_del` BEFORE DELETE ON `tblReceiptLineItem`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAsset` WHERE `intCreatedFromReceiptLineItemID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAsset';
    END IF;
END;

-- Constraint: fkTblAssetActivityLogToTblActivityLogViaIntActivityLogID
CREATE TRIGGER `trg_fkTblAssetActivityLogToTblActivityLogViaIntActivityLogID_cascade_del` AFTER DELETE ON `tblActivityLog`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAssetActivityLog` WHERE `intActivityLogID` = OLD.`id`;
END;

-- Constraint: fkTblAssetActivityLogToTblMoveAssetViaIntMoveAssetIDA1114051204
CREATE TRIGGER `trg_fkTblAssetActivityLogToTblMoveAssetViaIntMoveAssetIDA1114051204_restrict_del` BEFORE DELETE ON `tblMoveAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetActivityLog` WHERE `intTenantID` = OLD.`intTenantID` AND `intMoveAssetID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetActivityLog';
    END IF;
END;

-- Constraint: fkTblAssetActivityLogToTblMoveBackAssetViaIntMoveBack1654161444
CREATE TRIGGER `trg_fkTblAssetActivityLogToTblMoveBackAssetViaIntMoveBack1654161444_restrict_del` BEFORE DELETE ON `tblMoveBackAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetActivityLog` WHERE `intTenantID` = OLD.`intTenantID` AND `intMoveBackAssetID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetActivityLog';
    END IF;
END;

-- Constraint: fkTblAssetActivityLogToTblMoveBackViaIntMoveBackIDAndI730605486
CREATE TRIGGER `trg_fkTblAssetActivityLogToTblMoveBackViaIntMoveBackIDAndI730605486_restrict_del` BEFORE DELETE ON `tblMoveBack`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetActivityLog` WHERE `intTenantID` = OLD.`intTenantID` AND `intMoveBackID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetActivityLog';
    END IF;
END;

-- Constraint: fkTblAssetActivityLogToTblMoveViaIntMoveIDAndIntTenantID
CREATE TRIGGER `trg_fkTblAssetActivityLogToTblMoveViaIntMoveIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblMove`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetActivityLog` WHERE `intTenantID` = OLD.`intTenantID` AND `intMoveID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetActivityLog';
    END IF;
END;

-- Constraint: fkTblAssetActivityLogToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblAssetActivityLogToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetActivityLog` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetActivityLog';
    END IF;
END;

-- Constraint: fkTblAssetBusinessToTblAssetViaIntAssetIDAndIntTenantID
CREATE TRIGGER `trg_fkTblAssetBusinessToTblAssetViaIntAssetIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAssetBusiness` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblAssetBusinessToTblBusinessGroupViaIntBusinessGro1690629891
CREATE TRIGGER `trg_fkTblAssetBusinessToTblBusinessGroupViaIntBusinessGro1690629891_restrict_del` BEFORE DELETE ON `tblBusinessGroup`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetBusiness` WHERE `intTenantID` = OLD.`intTenantID` AND `intBusinessGroupID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetBusiness';
    END IF;
END;

-- Constraint: fkTblAssetBusinessToTblBusinessViaIntBusinessIDAndIntTenantID
CREATE TRIGGER `trg_fkTblAssetBusinessToTblBusinessViaIntBusinessIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblBusiness`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetBusiness` WHERE `intTenantID` = OLD.`intTenantID` AND `intBusinessID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetBusiness';
    END IF;
END;

-- Constraint: fkTblAssetCategoryToTblAssetCategoryViaIntParentIDAndI815481187
CREATE TRIGGER `trg_fkTblAssetCategoryToTblAssetCategoryViaIntParentIDAndI815481187_restrict_del` BEFORE DELETE ON `tblAssetCategory`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetCategory` WHERE `intTenantID` = OLD.`intTenantID` AND `intParentID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetCategory';
    END IF;
END;

-- Constraint: fkTblAssetCategoryBarcodeFormatTypeToTblAssetCategory1870575391
CREATE TRIGGER `trg_fkTblAssetCategoryBarcodeFormatTypeToTblAssetCategory1870575391_restrict_del` BEFORE DELETE ON `tblAssetCategory`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetCategoryBarcodeFormatType` WHERE `intAssetCategoryID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetCategoryBarcodeFormatType';
    END IF;
END;

-- Constraint: fkTblAssetCategoryResolvedToTblAssetCategoryViaIntChi1687121893
CREATE TRIGGER `trg_fkTblAssetCategoryResolvedToTblAssetCategoryViaIntChi1687121893_cascade_del` AFTER DELETE ON `tblAssetCategory`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAssetCategoryResolved` WHERE `intTenantID` = OLD.`intTenantID` AND `intChildID` = OLD.`id`;
END;

-- Constraint: fkTblAssetCategoryResolvedToTblAssetCategoryViaIntPar1912925573
CREATE TRIGGER `trg_fkTblAssetCategoryResolvedToTblAssetCategoryViaIntPar1912925573_cascade_del` AFTER DELETE ON `tblAssetCategory`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAssetCategoryResolved` WHERE `intTenantID` = OLD.`intTenantID` AND `intParentID` = OLD.`id`;
END;

-- Constraint: fkTblAssetClassificationToTblAssetViaIntAssetID
CREATE TRIGGER `trg_fkTblAssetClassificationToTblAssetViaIntAssetID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAssetClassification` WHERE `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblAssetClassificationToTblAssetViaIntSiteID
CREATE TRIGGER `trg_fkTblAssetClassificationToTblAssetViaIntSiteID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAssetClassification` WHERE `intSiteID` = OLD.`id`;
END;

-- Constraint: fkTblAssetClassificationLogToTblAssetViaIntAssetIDAndI882329203
CREATE TRIGGER `trg_fkTblAssetClassificationLogToTblAssetViaIntAssetIDAndI882329203_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAssetClassificationLog` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblAssetClassificationLogToTblAssetViaIntSiteIDAndIntTenantID
CREATE TRIGGER `trg_fkTblAssetClassificationLogToTblAssetViaIntSiteIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAssetClassificationLog` WHERE `intTenantID` = OLD.`intTenantID` AND `intSiteID` = OLD.`id`;
END;

-- Constraint: fkTblAssetConsumingReferenceToTblAssetViaIntAssetIDAn2031227025
CREATE TRIGGER `trg_fkTblAssetConsumingReferenceToTblAssetViaIntAssetIDAn2031227025_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetConsumingReference` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetConsumingReference';
    END IF;
END;

-- Constraint: fkTblAssetConsumingReferenceToTblAssetViaIntConsumesA1292758054
CREATE TRIGGER `trg_fkTblAssetConsumingReferenceToTblAssetViaIntConsumesA1292758054_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetConsumingReference` WHERE `intTenantID` = OLD.`intTenantID` AND `intConsumesAssetID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetConsumingReference';
    END IF;
END;

-- Constraint: fkTblAssetConsumingReferenceToTblBOMGroupPartViaIntBO2061768786
CREATE TRIGGER `trg_fkTblAssetConsumingReferenceToTblBOMGroupPartViaIntBO2061768786_restrict_del` BEFORE DELETE ON `tblBOMGroupPart`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetConsumingReference` WHERE `intBOMPartControlID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetConsumingReference';
    END IF;
END;

-- Constraint: fkTblAssetConsumingReferenceToTblBOMGroupViaIntBOMControlID
CREATE TRIGGER `trg_fkTblAssetConsumingReferenceToTblBOMGroupViaIntBOMControlID_restrict_del` BEFORE DELETE ON `tblBOMGroup`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetConsumingReference` WHERE `intBOMControlID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetConsumingReference';
    END IF;
END;

-- Constraint: fkTblAssetDepletionTrackingToTblAssetPurchaseTrackingV698527743
CREATE TRIGGER `trg_fkTblAssetDepletionTrackingToTblAssetPurchaseTrackingV698527743_cascade_del` AFTER DELETE ON `tblAssetPurchaseTracking`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAssetDepletionTracking` WHERE `intAssetPurchaseTrackingID` = OLD.`id`;
END;

-- Constraint: fkTblAssetDepletionTrackingToTblWorkOrderPartViaIntWo1744765951
CREATE TRIGGER `trg_fkTblAssetDepletionTrackingToTblWorkOrderPartViaIntWo1744765951_cascade_del` AFTER DELETE ON `tblWorkOrderPart`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAssetDepletionTracking` WHERE `intWorkOrderPartID` = OLD.`id`;
END;

-- Constraint: fkTblAssetEventToTblAssetEventTypeViaIntAssetEventTyp1939736897
CREATE TRIGGER `trg_fkTblAssetEventToTblAssetEventTypeViaIntAssetEventTyp1939736897_restrict_del` BEFORE DELETE ON `tblAssetEventType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetEvent` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetEventTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetEvent';
    END IF;
END;

-- Constraint: fkTblAssetEventToTblAssetViaIntAssetID
CREATE TRIGGER `trg_fkTblAssetEventToTblAssetViaIntAssetID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAssetEvent` WHERE `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblAssetEventToTblUserViaIntSubmittedByUserID
CREATE TRIGGER `trg_fkTblAssetEventToTblUserViaIntSubmittedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetEvent` WHERE `intSubmittedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetEvent';
    END IF;
END;

-- Constraint: fkTblAssetEventToTblWorkOrderViaIntWorkOrderIDAndIntTenantID
CREATE TRIGGER `trg_fkTblAssetEventToTblWorkOrderViaIntWorkOrderIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblWorkOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAssetEvent` WHERE `intTenantID` = OLD.`intTenantID` AND `intWorkOrderID` = OLD.`id`;
END;

-- Constraint: fkTblAssetEventTypeAssetToTblAssetEventTypeViaIntAsse1340966513
CREATE TRIGGER `trg_fkTblAssetEventTypeAssetToTblAssetEventTypeViaIntAsse1340966513_restrict_del` BEFORE DELETE ON `tblAssetEventType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetEventTypeAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetEventTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetEventTypeAsset';
    END IF;
END;

-- Constraint: fkTblAssetEventTypeAssetToTblAssetViaIntAssetIDAndIntTenantID
CREATE TRIGGER `trg_fkTblAssetEventTypeAssetToTblAssetViaIntAssetIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetEventTypeAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetEventTypeAsset';
    END IF;
END;

-- Constraint: fkTblAssetOfflineTrackerToTblAssetEventTypeViaIntAsse1328600581
CREATE TRIGGER `trg_fkTblAssetOfflineTrackerToTblAssetEventTypeViaIntAsse1328600581_restrict_del` BEFORE DELETE ON `tblAssetEventType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetOfflineTracker` WHERE `intAssetEventTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetOfflineTracker';
    END IF;
END;

-- Constraint: fkTblAssetOfflineTrackerToTblAssetViaIntAssetIDAndIntTenantID
CREATE TRIGGER `trg_fkTblAssetOfflineTrackerToTblAssetViaIntAssetIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAssetOfflineTracker` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblAssetOfflineTrackerToTblAssetViaIntAssetIsLocate1063347007
CREATE TRIGGER `trg_fkTblAssetOfflineTrackerToTblAssetViaIntAssetIsLocate1063347007_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetOfflineTracker` WHERE `intAssetIsLocatedAtAsssetID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetOfflineTracker';
    END IF;
END;

-- Constraint: fkTblAssetOfflineTrackerToTblAssetViaIntAssetIsPartOfAssetID
CREATE TRIGGER `trg_fkTblAssetOfflineTrackerToTblAssetViaIntAssetIsPartOfAssetID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetOfflineTracker` WHERE `intAssetIsPartOfAssetID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetOfflineTracker';
    END IF;
END;

-- Constraint: fkTblAssetOfflineTrackerToTblAssetViaIntSendToFacilityID
CREATE TRIGGER `trg_fkTblAssetOfflineTrackerToTblAssetViaIntSendToFacilityID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetOfflineTracker` WHERE `intSendToFacilityID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetOfflineTracker';
    END IF;
END;

-- Constraint: fkTblAssetOfflineTrackerToTblAssetViaIntSwapWithAssetID
CREATE TRIGGER `trg_fkTblAssetOfflineTrackerToTblAssetViaIntSwapWithAssetID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetOfflineTracker` WHERE `intSwapWithAssetID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetOfflineTracker';
    END IF;
END;

-- Constraint: fkTblAssetOfflineTrackerToTblReasonToSetAssetOfflineV1944624567
CREATE TRIGGER `trg_fkTblAssetOfflineTrackerToTblReasonToSetAssetOfflineV1944624567_restrict_del` BEFORE DELETE ON `tblReasonToSetAssetOffline`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetOfflineTracker` WHERE `intTenantID` = OLD.`intTenantID` AND `intReasonOfflineID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetOfflineTracker';
    END IF;
END;

-- Constraint: fkTblAssetOfflineTrackerToTblReasonToSetAssetOnlineVia478542041
CREATE TRIGGER `trg_fkTblAssetOfflineTrackerToTblReasonToSetAssetOnlineVia478542041_restrict_del` BEFORE DELETE ON `tblReasonToSetAssetOnline`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetOfflineTracker` WHERE `intTenantID` = OLD.`intTenantID` AND `intReasonOnlineID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetOfflineTracker';
    END IF;
END;

-- Constraint: fkTblAssetOfflineTrackerToTblUserViaIntSetOfflineByUserID
CREATE TRIGGER `trg_fkTblAssetOfflineTrackerToTblUserViaIntSetOfflineByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetOfflineTracker` WHERE `intSetOfflineByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetOfflineTracker';
    END IF;
END;

-- Constraint: fkTblAssetOfflineTrackerToTblUserViaIntSetOnlineByUserID
CREATE TRIGGER `trg_fkTblAssetOfflineTrackerToTblUserViaIntSetOnlineByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetOfflineTracker` WHERE `intSetOnlineByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetOfflineTracker';
    END IF;
END;

-- Constraint: fkTblAssetOfflineTrackerToTblUserViaIntStatusChangedByUserID
CREATE TRIGGER `trg_fkTblAssetOfflineTrackerToTblUserViaIntStatusChangedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetOfflineTracker` WHERE `intStatusChangedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetOfflineTracker';
    END IF;
END;

-- Constraint: fkTblAssetOfflineTrackerToTblWorkOrderViaIntWorkOrderID
CREATE TRIGGER `trg_fkTblAssetOfflineTrackerToTblWorkOrderViaIntWorkOrderID_restrict_del` BEFORE DELETE ON `tblWorkOrder`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetOfflineTracker` WHERE `intWorkOrderID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetOfflineTracker';
    END IF;
END;

-- Constraint: fkTblAssetPropertyToTblAssetViaIntAssetIDAndIntTenantID
CREATE TRIGGER `trg_fkTblAssetPropertyToTblAssetViaIntAssetIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetProperty` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetProperty';
    END IF;
END;

-- Constraint: fkTblAssetPropertyToTblMeterReadingUnitViaIntMeterRea2078634338
CREATE TRIGGER `trg_fkTblAssetPropertyToTblMeterReadingUnitViaIntMeterRea2078634338_restrict_del` BEFORE DELETE ON `tblMeterReadingUnit`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetProperty` WHERE `intTenantID` = OLD.`intTenantID` AND `intMeterReadingUnitID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetProperty';
    END IF;
END;

-- Constraint: fkTblAssetPropertyDomainElementToTblAssetPropertyViaIn510438062
CREATE TRIGGER `trg_fkTblAssetPropertyDomainElementToTblAssetPropertyViaIn510438062_cascade_del` AFTER DELETE ON `tblAssetProperty`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAssetPropertyDomainElement` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetPropertyID` = OLD.`id`;
END;

-- Constraint: fkTblAssetPropertyValueToTblAssetEventTypeViaIntAssetE434192927
CREATE TRIGGER `trg_fkTblAssetPropertyValueToTblAssetEventTypeViaIntAssetE434192927_restrict_del` BEFORE DELETE ON `tblAssetEventType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetPropertyValue` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetEventTypeId` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetPropertyValue';
    END IF;
END;

-- Constraint: fkTblAssetPropertyValueToTblAssetPropertyDomainElement549001757
CREATE TRIGGER `trg_fkTblAssetPropertyValueToTblAssetPropertyDomainElement549001757_restrict_del` BEFORE DELETE ON `tblAssetPropertyDomainElement`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetPropertyValue` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetPropertyDomainElementID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetPropertyValue';
    END IF;
END;

-- Constraint: fkTblAssetPropertyValueToTblAssetPropertyViaIntAssetPr923834485
CREATE TRIGGER `trg_fkTblAssetPropertyValueToTblAssetPropertyViaIntAssetPr923834485_restrict_del` BEFORE DELETE ON `tblAssetProperty`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetPropertyValue` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetPropertyID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetPropertyValue';
    END IF;
END;

-- Constraint: fkTblAssetPropertyValueToTblAssetViaIntSensorOrDeviceID
CREATE TRIGGER `trg_fkTblAssetPropertyValueToTblAssetViaIntSensorOrDeviceID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetPropertyValue` WHERE `intSensorOrDeviceID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetPropertyValue';
    END IF;
END;

-- Constraint: fkTblAssetPropertyValueToTblUserViaIntCreatedByApiUserID
CREATE TRIGGER `trg_fkTblAssetPropertyValueToTblUserViaIntCreatedByApiUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetPropertyValue` WHERE `intCreatedByApiUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetPropertyValue';
    END IF;
END;

-- Constraint: fkTblAssetPropertyValueToTblUserViaIntCreatedByUserID
CREATE TRIGGER `trg_fkTblAssetPropertyValueToTblUserViaIntCreatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetPropertyValue` WHERE `intCreatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetPropertyValue';
    END IF;
END;

-- Constraint: fkTblAssetPurchaseTrackingToTblAssetViaIntAssetID
CREATE TRIGGER `trg_fkTblAssetPurchaseTrackingToTblAssetViaIntAssetID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAssetPurchaseTracking` WHERE `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblAssetPurchaseTrackingToTblBusinessViaIntBusinessID
CREATE TRIGGER `trg_fkTblAssetPurchaseTrackingToTblBusinessViaIntBusinessID_restrict_del` BEFORE DELETE ON `tblBusiness`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAssetPurchaseTracking` WHERE `intBusinessID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAssetPurchaseTracking';
    END IF;
END;

-- Constraint: fkTblAssetResolvedToTblAssetViaIntAncestorIDAndIntTenantID
CREATE TRIGGER `trg_fkTblAssetResolvedToTblAssetViaIntAncestorIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAssetResolved` WHERE `intTenantID` = OLD.`intTenantID` AND `intAncestorID` = OLD.`id`;
END;

-- Constraint: fkTblAssetResolvedToTblAssetViaIntDescendantIDAndIntTenantID
CREATE TRIGGER `trg_fkTblAssetResolvedToTblAssetViaIntDescendantIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAssetResolved` WHERE `intTenantID` = OLD.`intTenantID` AND `intDescendantID` = OLD.`id`;
END;

-- Constraint: fkTblAssetSelectionToTblAssetViaIntAssetIdAndIntTenantID
CREATE TRIGGER `trg_fkTblAssetSelectionToTblAssetViaIntAssetIdAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAssetSelection` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetId` = OLD.`id`;
END;

-- Constraint: fkTblAssetUserToTblAssetViaIntAssetIDAndIntTenantID
CREATE TRIGGER `trg_fkTblAssetUserToTblAssetViaIntAssetIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAssetUser` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblAssetUserToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblAssetUserToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAssetUser` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblAuditLogToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblAuditLogToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAuditLog` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAuditLog';
    END IF;
END;

-- Constraint: fkTblAuthorizationToTblApiConsumerViaIntApiConsumerID
CREATE TRIGGER `trg_fkTblAuthorizationToTblApiConsumerViaIntApiConsumerID_cascade_del` AFTER DELETE ON `tblApiConsumer`
FOR EACH ROW
BEGIN
    DELETE FROM `tblAuthorization` WHERE `intApiConsumerID` = OLD.`id`;
END;

-- Constraint: fkTblAuthorizationToTblUserViaIntUserId
CREATE TRIGGER `trg_fkTblAuthorizationToTblUserViaIntUserId_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblAuthorization` WHERE `intUserId` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblAuthorization';
    END IF;
END;

-- Constraint: fkTblBOMGroupToTblUserViaIntCreatedByUserID
CREATE TRIGGER `trg_fkTblBOMGroupToTblUserViaIntCreatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblBOMGroup` WHERE `intCreatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblBOMGroup';
    END IF;
END;

-- Constraint: fkTblBOMGroupToTblUserViaIntLastUpdatedByUserID
CREATE TRIGGER `trg_fkTblBOMGroupToTblUserViaIntLastUpdatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblBOMGroup` WHERE `intLastUpdatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblBOMGroup';
    END IF;
END;

-- Constraint: fkTblBOMGroupPartToTblAssetViaIntAssetID
CREATE TRIGGER `trg_fkTblBOMGroupPartToTblAssetViaIntAssetID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblBOMGroupPart` WHERE `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblBOMGroupPartToTblBOMGroupViaIntBOMGroupID
CREATE TRIGGER `trg_fkTblBOMGroupPartToTblBOMGroupViaIntBOMGroupID_cascade_del` AFTER DELETE ON `tblBOMGroup`
FOR EACH ROW
BEGIN
    DELETE FROM `tblBOMGroupPart` WHERE `intBOMGroupID` = OLD.`id`;
END;

-- Constraint: fkTblBrandingToTblFileContentsViaIntFileContentsID
CREATE TRIGGER `trg_fkTblBrandingToTblFileContentsViaIntFileContentsID_cascade_del` AFTER DELETE ON `tblFileContents`
FOR EACH ROW
BEGIN
    DELETE FROM `tblBranding` WHERE `intFileContentsID` = OLD.`id`;
END;

-- Constraint: fkTblBusinessToTblMASourceSellerViaIntMASourceSellerID
CREATE TRIGGER `trg_fkTblBusinessToTblMASourceSellerViaIntMASourceSellerID_restrict_del` BEFORE DELETE ON `tblMASourceSeller`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblBusiness` WHERE `intMASourceSellerID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblBusiness';
    END IF;
END;

-- Constraint: fkTblBusinessToTblTemplateViaIntRFQTemplateID
CREATE TRIGGER `trg_fkTblBusinessToTblTemplateViaIntRFQTemplateID_restrict_del` BEFORE DELETE ON `tblTemplate`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblBusiness` WHERE `intRFQTemplateID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblBusiness';
    END IF;
END;

-- Constraint: fkTblBusinessContactToTblBusinessViaIntBusinessID
CREATE TRIGGER `trg_fkTblBusinessContactToTblBusinessViaIntBusinessID_cascade_del` AFTER DELETE ON `tblBusiness`
FOR EACH ROW
BEGIN
    DELETE FROM `tblBusinessContact` WHERE `intBusinessID` = OLD.`id`;
END;

-- Constraint: fkTblBusinessContactToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblBusinessContactToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblBusinessContact` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblBusinessRoleToTblBusinessGroupViaIntBusinessGroupID
CREATE TRIGGER `trg_fkTblBusinessRoleToTblBusinessGroupViaIntBusinessGroupID_restrict_del` BEFORE DELETE ON `tblBusinessGroup`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblBusinessRole` WHERE `intBusinessGroupID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblBusinessRole';
    END IF;
END;

-- Constraint: fkTblBusinessRoleToTblBusinessViaIntBusinessID
CREATE TRIGGER `trg_fkTblBusinessRoleToTblBusinessViaIntBusinessID_restrict_del` BEFORE DELETE ON `tblBusiness`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblBusinessRole` WHERE `intBusinessID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblBusinessRole';
    END IF;
END;

-- Constraint: fkTblCalendarEventToTblScheduledMaintenanceViaIntSche1489515749
CREATE TRIGGER `trg_fkTblCalendarEventToTblScheduledMaintenanceViaIntSche1489515749_cascade_del` AFTER DELETE ON `tblScheduledMaintenance`
FOR EACH ROW
BEGIN
    DELETE FROM `tblCalendarEvent` WHERE `intTenantID` = OLD.`intTenantID` AND `intScheduledMaintenanceID` = OLD.`id`;
END;

-- Constraint: fkTblCalendarEventToTblScheduleTriggerViaIntScheduleTriggerID
CREATE TRIGGER `trg_fkTblCalendarEventToTblScheduleTriggerViaIntScheduleTriggerID_cascade_del` AFTER DELETE ON `tblScheduleTrigger`
FOR EACH ROW
BEGIN
    DELETE FROM `tblCalendarEvent` WHERE `intScheduleTriggerID` = OLD.`id`;
END;

-- Constraint: fkTblCategorySettingToTblAssetCategoryViaIntCategoryID
CREATE TRIGGER `trg_fkTblCategorySettingToTblAssetCategoryViaIntCategoryID_cascade_del` AFTER DELETE ON `tblAssetCategory`
FOR EACH ROW
BEGIN
    DELETE FROM `tblCategorySetting` WHERE `intCategoryID` = OLD.`id`;
END;

-- Constraint: fkTblChargeDepartmentToTblAssetViaIntFacilityIDAndIntTenantID
CREATE TRIGGER `trg_fkTblChargeDepartmentToTblAssetViaIntFacilityIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblChargeDepartment` WHERE `intTenantID` = OLD.`intTenantID` AND `intFacilityID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblChargeDepartment';
    END IF;
END;

-- Constraint: fkTblCreditCardToTblPaymentProfileViaIntPaymentProfileID
CREATE TRIGGER `trg_fkTblCreditCardToTblPaymentProfileViaIntPaymentProfileID_cascade_del` AFTER DELETE ON `tblPaymentProfile`
FOR EACH ROW
BEGIN
    DELETE FROM `tblCreditCard` WHERE `intPaymentProfileID` = OLD.`id`;
END;

-- Constraint: fkTblCustomFieldToTblAssetCategoryViaIntAssetCategoryID
CREATE TRIGGER `trg_fkTblCustomFieldToTblAssetCategoryViaIntAssetCategoryID_restrict_del` BEFORE DELETE ON `tblAssetCategory`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblCustomField` WHERE `intAssetCategoryID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblCustomField';
    END IF;
END;

-- Constraint: fkTblCustomFieldValueToTblCustomFieldViaIntCustomFieldID
CREATE TRIGGER `trg_fkTblCustomFieldValueToTblCustomFieldViaIntCustomFieldID_cascade_del` AFTER DELETE ON `tblCustomField`
FOR EACH ROW
BEGIN
    DELETE FROM `tblCustomFieldValue` WHERE `intCustomFieldID` = OLD.`id`;
END;

-- Constraint: fkTblCustomQueryToTblUserViaIntCreatedByUserID
CREATE TRIGGER `trg_fkTblCustomQueryToTblUserViaIntCreatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblCustomQuery` WHERE `intCreatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblCustomQuery';
    END IF;
END;

-- Constraint: fkTblCycleCountToTblAssetViaIntFacilityID
CREATE TRIGGER `trg_fkTblCycleCountToTblAssetViaIntFacilityID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblCycleCount` WHERE `intFacilityID` = OLD.`id`;
END;

-- Constraint: fkTblCycleCountToTblAssetViaIntSiteIDAndIntTenantID
CREATE TRIGGER `trg_fkTblCycleCountToTblAssetViaIntSiteIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblCycleCount` WHERE `intTenantID` = OLD.`intTenantID` AND `intSiteID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblCycleCount';
    END IF;
END;

-- Constraint: fkTblCycleCountToTblUserViaIntCompletedBy
CREATE TRIGGER `trg_fkTblCycleCountToTblUserViaIntCompletedBy_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblCycleCount` WHERE `intCompletedBy` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblCycleCount';
    END IF;
END;

-- Constraint: fkTblCycleCountToTblUserViaIntCreatedBy
CREATE TRIGGER `trg_fkTblCycleCountToTblUserViaIntCreatedBy_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblCycleCount` WHERE `intCreatedBy` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblCycleCount';
    END IF;
END;

-- Constraint: fkTblDashboardWidgetPositionFilterToTblDashboardWidge1913181316
CREATE TRIGGER `trg_fkTblDashboardWidgetPositionFilterToTblDashboardWidge1913181316_cascade_del` AFTER DELETE ON `tblDashboardWidgetPosition`
FOR EACH ROW
BEGIN
    DELETE FROM `tblDashboardWidgetPositionFilter` WHERE `intTenantID` = OLD.`intTenantID` AND `intWidgetPositionID` = OLD.`id`;
END;

-- Constraint: fkTblDashboardWidgetPositionParameterToTblDashboardWid730743525
CREATE TRIGGER `trg_fkTblDashboardWidgetPositionParameterToTblDashboardWid730743525_cascade_del` AFTER DELETE ON `tblDashboardWidgetPosition`
FOR EACH ROW
BEGIN
    DELETE FROM `tblDashboardWidgetPositionParameter` WHERE `intTenantID` = OLD.`intTenantID` AND `intWidgetPositionID` = OLD.`id`;
END;

-- Constraint: fkTblDatabaseExportToTblFileContentsViaIntFileContentsID
CREATE TRIGGER `trg_fkTblDatabaseExportToTblFileContentsViaIntFileContentsID_restrict_del` BEFORE DELETE ON `tblFileContents`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblDatabaseExport` WHERE `intFileContentsID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblDatabaseExport';
    END IF;
END;

-- Constraint: fkTblDatabaseExportToTblUserViaIntGeneratedByUserID
CREATE TRIGGER `trg_fkTblDatabaseExportToTblUserViaIntGeneratedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblDatabaseExport` WHERE `intGeneratedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblDatabaseExport';
    END IF;
END;

-- Constraint: fkTblDistributionPaymentMethodToTblDistributionViaIntD588153981
CREATE TRIGGER `trg_fkTblDistributionPaymentMethodToTblDistributionViaIntD588153981_cascade_del` AFTER DELETE ON `tblDistribution`
FOR EACH ROW
BEGIN
    DELETE FROM `tblDistributionPaymentMethod` WHERE `intDistributionID` = OLD.`id`;
END;

-- Constraint: fkTblDistributionPricingTierToTblDistributionViaIntDi1412099044
CREATE TRIGGER `trg_fkTblDistributionPricingTierToTblDistributionViaIntDi1412099044_cascade_del` AFTER DELETE ON `tblDistribution`
FOR EACH ROW
BEGIN
    DELETE FROM `tblDistributionPricingTier` WHERE `intDistributionID` = OLD.`id`;
END;

-- Constraint: fkTblDistributionRecurringTypeToTblDistributionViaIntD702617933
CREATE TRIGGER `trg_fkTblDistributionRecurringTypeToTblDistributionViaIntD702617933_cascade_del` AFTER DELETE ON `tblDistribution`
FOR EACH ROW
BEGIN
    DELETE FROM `tblDistributionRecurringType` WHERE `intDistributionID` = OLD.`id`;
END;

-- Constraint: fkTblDistributionUnitPricingRuleToTblDistributionPric1148256324
CREATE TRIGGER `trg_fkTblDistributionUnitPricingRuleToTblDistributionPric1148256324_cascade_del` AFTER DELETE ON `tblDistributionPricingTier`
FOR EACH ROW
BEGIN
    DELETE FROM `tblDistributionUnitPricingRule` WHERE `intDistributionPricingTierID` = OLD.`id`;
END;

-- Constraint: fkTblEmailAttachmentToTblEmailMessageViaIntEmailMessageID
CREATE TRIGGER `trg_fkTblEmailAttachmentToTblEmailMessageViaIntEmailMessageID_cascade_del` AFTER DELETE ON `tblEmailMessage`
FOR EACH ROW
BEGIN
    DELETE FROM `tblEmailAttachment` WHERE `intEmailMessageID` = OLD.`id`;
END;

-- Constraint: fkTblEmailMessageToTblBusinessViaIntSenderBusinessID
CREATE TRIGGER `trg_fkTblEmailMessageToTblBusinessViaIntSenderBusinessID_cascade_del` AFTER DELETE ON `tblBusiness`
FOR EACH ROW
BEGIN
    DELETE FROM `tblEmailMessage` WHERE `intSenderBusinessID` = OLD.`id`;
END;

-- Constraint: fkTblEventToTblAssetViaIntSiteID
CREATE TRIGGER `trg_fkTblEventToTblAssetViaIntSiteID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblEvent` WHERE `intSiteID` = OLD.`id`;
END;

-- Constraint: fkTblEventToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblEventToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblEvent` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblEvent';
    END IF;
END;

-- Constraint: fkTblFileToTblAssetCategoryViaIntAssetCategoryID
CREATE TRIGGER `trg_fkTblFileToTblAssetCategoryViaIntAssetCategoryID_cascade_del` AFTER DELETE ON `tblAssetCategory`
FOR EACH ROW
BEGIN
    DELETE FROM `tblFile` WHERE `intAssetCategoryID` = OLD.`id`;
END;

-- Constraint: fkTblFileToTblAssetViaIntAssetIDAndIntTenantID
CREATE TRIGGER `trg_fkTblFileToTblAssetViaIntAssetIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblFile` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblFileToTblBusinessViaIntBusinessID
CREATE TRIGGER `trg_fkTblFileToTblBusinessViaIntBusinessID_cascade_del` AFTER DELETE ON `tblBusiness`
FOR EACH ROW
BEGIN
    DELETE FROM `tblFile` WHERE `intBusinessID` = OLD.`id`;
END;

-- Constraint: fkTblFileToTblFileContentsViaIntFileContentsIDAndIntTenantID
CREATE TRIGGER `trg_fkTblFileToTblFileContentsViaIntFileContentsIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblFileContents`
FOR EACH ROW
BEGIN
    DELETE FROM `tblFile` WHERE `intTenantID` = OLD.`intTenantID` AND `intFileContentsID` = OLD.`id`;
END;

-- Constraint: fkTblFileToTblFileContentsViaIntThumbnailID
CREATE TRIGGER `trg_fkTblFileToTblFileContentsViaIntThumbnailID_cascade_del` AFTER DELETE ON `tblFileContents`
FOR EACH ROW
BEGIN
    DELETE FROM `tblFile` WHERE `intThumbnailID` = OLD.`id`;
END;

-- Constraint: fkTblFileToTblMASourceListingViaIntMASourceListingID
CREATE TRIGGER `trg_fkTblFileToTblMASourceListingViaIntMASourceListingID_cascade_del` AFTER DELETE ON `tblMASourceListing`
FOR EACH ROW
BEGIN
    DELETE FROM `tblFile` WHERE `intMASourceListingID` = OLD.`id`;
END;

-- Constraint: fkTblFileToTblProductTimeTrackingViaIntProductTimeTrackingID
CREATE TRIGGER `trg_fkTblFileToTblProductTimeTrackingViaIntProductTimeTrackingID_cascade_del` AFTER DELETE ON `tblProductTimeTracking`
FOR EACH ROW
BEGIN
    DELETE FROM `tblFile` WHERE `intProductTimeTrackingID` = OLD.`id`;
END;

-- Constraint: fkTblFileToTblProjectViaIntProjectID
CREATE TRIGGER `trg_fkTblFileToTblProjectViaIntProjectID_cascade_del` AFTER DELETE ON `tblProject`
FOR EACH ROW
BEGIN
    DELETE FROM `tblFile` WHERE `intProjectID` = OLD.`id`;
END;

-- Constraint: fkTblFileToTblPurchaseOrderViaIntPurchaseOrderID
CREATE TRIGGER `trg_fkTblFileToTblPurchaseOrderViaIntPurchaseOrderID_cascade_del` AFTER DELETE ON `tblPurchaseOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblFile` WHERE `intPurchaseOrderID` = OLD.`id`;
END;

-- Constraint: fkTblFileToTblRFQViaIntRfqID
CREATE TRIGGER `trg_fkTblFileToTblRFQViaIntRfqID_cascade_del` AFTER DELETE ON `tblRFQ`
FOR EACH ROW
BEGIN
    DELETE FROM `tblFile` WHERE `intRfqID` = OLD.`id`;
END;

-- Constraint: fkTblFileToTblScheduledMaintenanceViaIntScheduledMaintenanceID
CREATE TRIGGER `trg_fkTblFileToTblScheduledMaintenanceViaIntScheduledMaintenanceID_cascade_del` AFTER DELETE ON `tblScheduledMaintenance`
FOR EACH ROW
BEGIN
    DELETE FROM `tblFile` WHERE `intScheduledMaintenanceID` = OLD.`id`;
END;

-- Constraint: fkTblFileToTblTaskGroupViaIntTaskGroupID
CREATE TRIGGER `trg_fkTblFileToTblTaskGroupViaIntTaskGroupID_cascade_del` AFTER DELETE ON `tblTaskGroup`
FOR EACH ROW
BEGIN
    DELETE FROM `tblFile` WHERE `intTaskGroupID` = OLD.`id`;
END;

-- Constraint: fkTblFileToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblFileToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblFile` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblFileToTblWorkOrderViaIntWorkOrderIDAndIntTenantID
CREATE TRIGGER `trg_fkTblFileToTblWorkOrderViaIntWorkOrderIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblWorkOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblFile` WHERE `intTenantID` = OLD.`intTenantID` AND `intWorkOrderID` = OLD.`id`;
END;

-- Constraint: fkTblFirewallToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblFirewallToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFirewall` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFirewall';
    END IF;
END;

-- Constraint: fkTblFirewallLogToTblAssetViaIntSiteID
CREATE TRIGGER `trg_fkTblFirewallLogToTblAssetViaIntSiteID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFirewallLog` WHERE `intSiteID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFirewallLog';
    END IF;
END;

-- Constraint: fkTblFirewallLogToTblFirewallRuleViaIntFirewallRuleID
CREATE TRIGGER `trg_fkTblFirewallLogToTblFirewallRuleViaIntFirewallRuleID_restrict_del` BEFORE DELETE ON `tblFirewallRule`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFirewallLog` WHERE `intFirewallRuleID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFirewallLog';
    END IF;
END;

-- Constraint: fkTblFirewallLogToTblFirewallViaIntFirewallID
CREATE TRIGGER `trg_fkTblFirewallLogToTblFirewallViaIntFirewallID_restrict_del` BEFORE DELETE ON `tblFirewall`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFirewallLog` WHERE `intFirewallID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFirewallLog';
    END IF;
END;

-- Constraint: fkTblFirewallLogToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblFirewallLogToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFirewallLog` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFirewallLog';
    END IF;
END;

-- Constraint: fkTblFirewallRuleToTblAssetViaIntSiteID
CREATE TRIGGER `trg_fkTblFirewallRuleToTblAssetViaIntSiteID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFirewallRule` WHERE `intSiteID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFirewallRule';
    END IF;
END;

-- Constraint: fkTblFirewallRuleToTblFirewallViaIntFirewallID
CREATE TRIGGER `trg_fkTblFirewallRuleToTblFirewallViaIntFirewallID_restrict_del` BEFORE DELETE ON `tblFirewall`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFirewallRule` WHERE `intFirewallID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFirewallRule';
    END IF;
END;

-- Constraint: fkTblFirewallRuleToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblFirewallRuleToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblFirewallRule` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblFirewallRule';
    END IF;
END;

-- Constraint: fkTblGHGCalcAssetToTblAssetViaIntAssetID
CREATE TRIGGER `trg_fkTblGHGCalcAssetToTblAssetViaIntAssetID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblGHGCalcAsset` WHERE `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblGroupPermissionsToTblUserViaIntGroupID
CREATE TRIGGER `trg_fkTblGroupPermissionsToTblUserViaIntGroupID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblGroupPermissions` WHERE `intGroupID` = OLD.`id`;
END;

-- Constraint: fkTblGuestActionsToTblWorkOrderViaIntCreatedWorkOrderID
CREATE TRIGGER `trg_fkTblGuestActionsToTblWorkOrderViaIntCreatedWorkOrderID_cascade_del` AFTER DELETE ON `tblWorkOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblGuestActions` WHERE `intCreatedWorkOrderID` = OLD.`id`;
END;

-- Constraint: fkTblGuestMrFormFieldToTblSystemSettingViaIntSystemSettingID
CREATE TRIGGER `trg_fkTblGuestMrFormFieldToTblSystemSettingViaIntSystemSettingID_cascade_del` AFTER DELETE ON `tblSystemSetting`
FOR EACH ROW
BEGIN
    DELETE FROM `tblGuestMrFormField` WHERE `intSystemSettingID` = OLD.`id`;
END;

-- Constraint: fkTblIntegrationToTblUserViaIntCreatedByUserID
CREATE TRIGGER `trg_fkTblIntegrationToTblUserViaIntCreatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblIntegration` WHERE `intCreatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblIntegration';
    END IF;
END;

-- Constraint: fkTblIntegrationToTblUserViaIntUpdatedByUserID
CREATE TRIGGER `trg_fkTblIntegrationToTblUserViaIntUpdatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblIntegration` WHERE `intUpdatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblIntegration';
    END IF;
END;

-- Constraint: fkTblIntegrationActionToTblIntegrationViaIntIntegrationID
CREATE TRIGGER `trg_fkTblIntegrationActionToTblIntegrationViaIntIntegrationID_restrict_del` BEFORE DELETE ON `tblIntegration`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblIntegrationAction` WHERE `intIntegrationID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblIntegrationAction';
    END IF;
END;

-- Constraint: fkTblIntegrationActionLogToTblActivityLogViaIntActivityLogID
CREATE TRIGGER `trg_fkTblIntegrationActionLogToTblActivityLogViaIntActivityLogID_cascade_del` AFTER DELETE ON `tblActivityLog`
FOR EACH ROW
BEGIN
    DELETE FROM `tblIntegrationActionLog` WHERE `intActivityLogID` = OLD.`id`;
END;

-- Constraint: fkTblIntegrationActionLogToTblActivityLogViaIntParentA336262432
CREATE TRIGGER `trg_fkTblIntegrationActionLogToTblActivityLogViaIntParentA336262432_cascade_del` AFTER DELETE ON `tblActivityLog`
FOR EACH ROW
BEGIN
    DELETE FROM `tblIntegrationActionLog` WHERE `intParentActivityLogID` = OLD.`id`;
END;

-- Constraint: fkTblIntegrationConfigurablePropertyToTblIntegrationV2128527156
CREATE TRIGGER `trg_fkTblIntegrationConfigurablePropertyToTblIntegrationV2128527156_restrict_del` BEFORE DELETE ON `tblIntegration`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblIntegrationConfigurableProperty` WHERE `intIntegrationID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblIntegrationConfigurableProperty';
    END IF;
END;

-- Constraint: fkTblIntegrationParameterToTblIntegrationViaIntIntegrationID
CREATE TRIGGER `trg_fkTblIntegrationParameterToTblIntegrationViaIntIntegrationID_restrict_del` BEFORE DELETE ON `tblIntegration`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblIntegrationParameter` WHERE `intIntegrationID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblIntegrationParameter';
    END IF;
END;

-- Constraint: fkTblKpiResultToTblDashboardWidgetPositionViaIntWidget210242764
CREATE TRIGGER `trg_fkTblKpiResultToTblDashboardWidgetPositionViaIntWidget210242764_cascade_del` AFTER DELETE ON `tblDashboardWidgetPosition`
FOR EACH ROW
BEGIN
    DELETE FROM `tblKpiResult` WHERE `intTenantID` = OLD.`intTenantID` AND `intWidgetPositionID` = OLD.`id`;
END;

-- Constraint: fkTblLastMeterReadingToTblAssetViaIntAssetIDAndIntTenantID
CREATE TRIGGER `trg_fkTblLastMeterReadingToTblAssetViaIntAssetIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblLastMeterReading` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblLastMeterReadingToTblMeterReadingUnitViaIntMeter1710873131
CREATE TRIGGER `trg_fkTblLastMeterReadingToTblMeterReadingUnitViaIntMeter1710873131_restrict_del` BEFORE DELETE ON `tblMeterReadingUnit`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblLastMeterReading` WHERE `intTenantID` = OLD.`intTenantID` AND `intMeterReadingUnitsID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblLastMeterReading';
    END IF;
END;

-- Constraint: fkTblLastMeterReadingToTblMeterReadingViaIntMeterReadi171873776
CREATE TRIGGER `trg_fkTblLastMeterReadingToTblMeterReadingViaIntMeterReadi171873776_restrict_del` BEFORE DELETE ON `tblMeterReading`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblLastMeterReading` WHERE `intTenantID` = OLD.`intTenantID` AND `intMeterReadingID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblLastMeterReading';
    END IF;
END;

-- Constraint: fkTblLineItemToTblLineItemViaIntLineItemParentID
CREATE TRIGGER `trg_fkTblLineItemToTblLineItemViaIntLineItemParentID_cascade_del` AFTER DELETE ON `tblLineItem`
FOR EACH ROW
BEGIN
    DELETE FROM `tblLineItem` WHERE `intLineItemParentID` = OLD.`id`;
END;

-- Constraint: fkTblLineItemToTblOrderViaIntOrderID
CREATE TRIGGER `trg_fkTblLineItemToTblOrderViaIntOrderID_cascade_del` AFTER DELETE ON `tblOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblLineItem` WHERE `intOrderID` = OLD.`id`;
END;

-- Constraint: fkTblLineItemToTblQuoteViaIntQuoteID
CREATE TRIGGER `trg_fkTblLineItemToTblQuoteViaIntQuoteID_cascade_del` AFTER DELETE ON `tblQuote`
FOR EACH ROW
BEGIN
    DELETE FROM `tblLineItem` WHERE `intQuoteID` = OLD.`id`;
END;

-- Constraint: fkTblLineItemToTblSubscriptionPlanViaIntSubscriptionPlanID
CREATE TRIGGER `trg_fkTblLineItemToTblSubscriptionPlanViaIntSubscriptionPlanID_cascade_del` AFTER DELETE ON `tblSubscriptionPlan`
FOR EACH ROW
BEGIN
    DELETE FROM `tblLineItem` WHERE `intSubscriptionPlanID` = OLD.`id`;
END;

-- Constraint: fkTblLineItemToTblUserViaIntUpdatedByUserID
CREATE TRIGGER `trg_fkTblLineItemToTblUserViaIntUpdatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblLineItem` WHERE `intUpdatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblLineItem';
    END IF;
END;

-- Constraint: fkTblLocalizationPermissionToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblLocalizationPermissionToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblLocalizationPermission` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblLogAlertToTblLogMonitoringViaIntLogMonitoringID
CREATE TRIGGER `trg_fkTblLogAlertToTblLogMonitoringViaIntLogMonitoringID_cascade_del` AFTER DELETE ON `tblLogMonitoring`
FOR EACH ROW
BEGIN
    DELETE FROM `tblLogAlert` WHERE `intLogMonitoringID` = OLD.`id`;
END;

-- Constraint: fkTblLogAlertToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblLogAlertToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblLogAlert` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblLogMonitoringToTblLogSavedSearchViaIntSavedSearchID
CREATE TRIGGER `trg_fkTblLogMonitoringToTblLogSavedSearchViaIntSavedSearchID_cascade_del` AFTER DELETE ON `tblLogSavedSearch`
FOR EACH ROW
BEGIN
    DELETE FROM `tblLogMonitoring` WHERE `intSavedSearchID` = OLD.`id`;
END;

-- Constraint: fkTblLogSavedSearchToTblUserViaIntCreatedByUserID
CREATE TRIGGER `trg_fkTblLogSavedSearchToTblUserViaIntCreatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblLogSavedSearch` WHERE `intCreatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblLogSavedSearch';
    END IF;
END;

-- Constraint: fkTblLogSavedSearchUserToTblLogSavedSearchViaIntLogSa1013978150
CREATE TRIGGER `trg_fkTblLogSavedSearchUserToTblLogSavedSearchViaIntLogSa1013978150_cascade_del` AFTER DELETE ON `tblLogSavedSearch`
FOR EACH ROW
BEGIN
    DELETE FROM `tblLogSavedSearchUser` WHERE `intLogSavedSearchID` = OLD.`id`;
END;

-- Constraint: fkTblLogSavedSearchUserToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblLogSavedSearchUserToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblLogSavedSearchUser` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblLookupTableSyncToTblApiConsumerViaIntApiConsumerID
CREATE TRIGGER `trg_fkTblLookupTableSyncToTblApiConsumerViaIntApiConsumerID_cascade_del` AFTER DELETE ON `tblApiConsumer`
FOR EACH ROW
BEGIN
    DELETE FROM `tblLookupTableSync` WHERE `intApiConsumerID` = OLD.`id`;
END;

-- Constraint: fkTblMASourceCounterToTblMASourceListingViaIntMASourceListingID
CREATE TRIGGER `trg_fkTblMASourceCounterToTblMASourceListingViaIntMASourceListingID_restrict_del` BEFORE DELETE ON `tblMASourceListing`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMASourceCounter` WHERE `intMASourceListingID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMASourceCounter';
    END IF;
END;

-- Constraint: fkTblMASourceListingToTblAssetViaIntAssetId
CREATE TRIGGER `trg_fkTblMASourceListingToTblAssetViaIntAssetId_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMASourceListing` WHERE `intAssetId` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMASourceListing';
    END IF;
END;

-- Constraint: fkTblMASourceListingToTblAssetViaIntShipFromID
CREATE TRIGGER `trg_fkTblMASourceListingToTblAssetViaIntShipFromID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMASourceListing` WHERE `intShipFromID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMASourceListing';
    END IF;
END;

-- Constraint: fkTblMASourceListingToTblFileViaIntDefaultImageID
CREATE TRIGGER `trg_fkTblMASourceListingToTblFileViaIntDefaultImageID_restrict_del` BEFORE DELETE ON `tblFile`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMASourceListing` WHERE `intDefaultImageID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMASourceListing';
    END IF;
END;

-- Constraint: fkTblMASourceListingToTblMASourceSellerViaIntMASourceSellerID
CREATE TRIGGER `trg_fkTblMASourceListingToTblMASourceSellerViaIntMASourceSellerID_restrict_del` BEFORE DELETE ON `tblMASourceSeller`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMASourceListing` WHERE `intMASourceSellerID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMASourceListing';
    END IF;
END;

-- Constraint: fkTblMASourceListingToTblUserViaIntContactID
CREATE TRIGGER `trg_fkTblMASourceListingToTblUserViaIntContactID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMASourceListing` WHERE `intContactID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMASourceListing';
    END IF;
END;

-- Constraint: fkTblMASourceListingToTblUserViaIntPostedByID
CREATE TRIGGER `trg_fkTblMASourceListingToTblUserViaIntPostedByID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMASourceListing` WHERE `intPostedByID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMASourceListing';
    END IF;
END;

-- Constraint: fkTblMASourceWarrantyToTblMASourceListingViaIntMASourc617103367
CREATE TRIGGER `trg_fkTblMASourceWarrantyToTblMASourceListingViaIntMASourc617103367_cascade_del` AFTER DELETE ON `tblMASourceListing`
FOR EACH ROW
BEGIN
    DELETE FROM `tblMASourceWarranty` WHERE `intMASourceListingID` = OLD.`id`;
END;

-- Constraint: fkTblMessageToTblUserViaIntRecipientID
CREATE TRIGGER `trg_fkTblMessageToTblUserViaIntRecipientID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMessage` WHERE `intRecipientID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMessage';
    END IF;
END;

-- Constraint: fkTblMessageToTblUserViaIntSenderID
CREATE TRIGGER `trg_fkTblMessageToTblUserViaIntSenderID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMessage` WHERE `intSenderID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMessage';
    END IF;
END;

-- Constraint: fkTblMeterReadingToTblAssetViaIntAssetIDAndIntTenantID
CREATE TRIGGER `trg_fkTblMeterReadingToTblAssetViaIntAssetIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblMeterReading` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblMeterReadingToTblMeterReadingUnitViaIntMeterRead1489363467
CREATE TRIGGER `trg_fkTblMeterReadingToTblMeterReadingUnitViaIntMeterRead1489363467_restrict_del` BEFORE DELETE ON `tblMeterReadingUnit`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMeterReading` WHERE `intTenantID` = OLD.`intTenantID` AND `intMeterReadingUnitsID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMeterReading';
    END IF;
END;

-- Constraint: fkTblMeterReadingToTblUserViaIntSubmittedByUserID
CREATE TRIGGER `trg_fkTblMeterReadingToTblUserViaIntSubmittedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMeterReading` WHERE `intSubmittedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMeterReading';
    END IF;
END;

-- Constraint: fkTblMeterReadingToTblWorkOrderViaIntWorkOrderID
CREATE TRIGGER `trg_fkTblMeterReadingToTblWorkOrderViaIntWorkOrderID_restrict_del` BEFORE DELETE ON `tblWorkOrder`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMeterReading` WHERE `intWorkOrderID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMeterReading';
    END IF;
END;

-- Constraint: fkTblMiscCostToTblMiscCostTypeViaIntMiscCostTypeID
CREATE TRIGGER `trg_fkTblMiscCostToTblMiscCostTypeViaIntMiscCostTypeID_restrict_del` BEFORE DELETE ON `tblMiscCostType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMiscCost` WHERE `intMiscCostTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMiscCost';
    END IF;
END;

-- Constraint: fkTblMiscCostToTblWorkOrderViaIntWorkOrderID
CREATE TRIGGER `trg_fkTblMiscCostToTblWorkOrderViaIntWorkOrderID_cascade_del` AFTER DELETE ON `tblWorkOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblMiscCost` WHERE `intWorkOrderID` = OLD.`id`;
END;

-- Constraint: fkTblMoveToTblAssetViaIntAssetDestinationIDAndIntTenantID
CREATE TRIGGER `trg_fkTblMoveToTblAssetViaIntAssetDestinationIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblMove` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetDestinationID` = OLD.`id`;
END;

-- Constraint: fkTblMoveToTblAssetViaIntFromSiteIDAndIntTenantID
CREATE TRIGGER `trg_fkTblMoveToTblAssetViaIntFromSiteIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMove` WHERE `intTenantID` = OLD.`intTenantID` AND `intFromSiteID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMove';
    END IF;
END;

-- Constraint: fkTblMoveToTblAssetViaIntSiteIDAndIntTenantID
CREATE TRIGGER `trg_fkTblMoveToTblAssetViaIntSiteIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMove` WHERE `intTenantID` = OLD.`intTenantID` AND `intSiteID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMove';
    END IF;
END;

-- Constraint: fkTblMoveToTblBusinessViaIntBusinessDestinationIDAndIntTenantID
CREATE TRIGGER `trg_fkTblMoveToTblBusinessViaIntBusinessDestinationIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblBusiness`
FOR EACH ROW
BEGIN
    DELETE FROM `tblMove` WHERE `intTenantID` = OLD.`intTenantID` AND `intBusinessDestinationID` = OLD.`id`;
END;

-- Constraint: fkTblMoveToTblMoveStatusViaIntMoveStatusIDAndIntTenantID
CREATE TRIGGER `trg_fkTblMoveToTblMoveStatusViaIntMoveStatusIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblMoveStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMove` WHERE `intTenantID` = OLD.`intTenantID` AND `intMoveStatusID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMove';
    END IF;
END;

-- Constraint: fkTblMoveToTblProjectViaIntProjectDestinationIDAndIntTenantID
CREATE TRIGGER `trg_fkTblMoveToTblProjectViaIntProjectDestinationIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblProject`
FOR EACH ROW
BEGIN
    DELETE FROM `tblMove` WHERE `intTenantID` = OLD.`intTenantID` AND `intProjectDestinationID` = OLD.`id`;
END;

-- Constraint: fkTblMoveToTblUserViaIntConfirmedByID
CREATE TRIGGER `trg_fkTblMoveToTblUserViaIntConfirmedByID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMove` WHERE `intConfirmedByID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMove';
    END IF;
END;

-- Constraint: fkTblMoveToTblUserViaIntMovedByID
CREATE TRIGGER `trg_fkTblMoveToTblUserViaIntMovedByID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMove` WHERE `intMovedByID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMove';
    END IF;
END;

-- Constraint: fkTblMoveToTblUserViaIntRejectedByID
CREATE TRIGGER `trg_fkTblMoveToTblUserViaIntRejectedByID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMove` WHERE `intRejectedByID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMove';
    END IF;
END;

-- Constraint: fkTblMoveToTblUserViaIntRequestedByID
CREATE TRIGGER `trg_fkTblMoveToTblUserViaIntRequestedByID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMove` WHERE `intRequestedByID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMove';
    END IF;
END;

-- Constraint: fkTblMoveToTblUserViaIntUserDestinationID
CREATE TRIGGER `trg_fkTblMoveToTblUserViaIntUserDestinationID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblMove` WHERE `intUserDestinationID` = OLD.`id`;
END;

-- Constraint: fkTblMoveToTblWorkOrderViaIntWorkOrderDestinationIDAn1961401266
CREATE TRIGGER `trg_fkTblMoveToTblWorkOrderViaIntWorkOrderDestinationIDAn1961401266_cascade_del` AFTER DELETE ON `tblWorkOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblMove` WHERE `intTenantID` = OLD.`intTenantID` AND `intWorkOrderDestinationID` = OLD.`id`;
END;

-- Constraint: fkTblMoveAssetToTblAssetViaIntAssetIDAndIntTenantID
CREATE TRIGGER `trg_fkTblMoveAssetToTblAssetViaIntAssetIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblMoveAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblMoveAssetToTblAssetViaIntMovedFromIDAndIntTenantID
CREATE TRIGGER `trg_fkTblMoveAssetToTblAssetViaIntMovedFromIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblMoveAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intMovedFromID` = OLD.`id`;
END;

-- Constraint: fkTblMoveAssetToTblAssetViaIntSiteIDAndIntTenantID
CREATE TRIGGER `trg_fkTblMoveAssetToTblAssetViaIntSiteIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblMoveAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intSiteID` = OLD.`id`;
END;

-- Constraint: fkTblMoveAssetToTblMoveViaIntMoveIDAndIntTenantID
CREATE TRIGGER `trg_fkTblMoveAssetToTblMoveViaIntMoveIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblMove`
FOR EACH ROW
BEGIN
    DELETE FROM `tblMoveAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intMoveID` = OLD.`id`;
END;

-- Constraint: fkTblMoveAssetToTblReasonToSetAssetOfflineViaIntReason357256957
CREATE TRIGGER `trg_fkTblMoveAssetToTblReasonToSetAssetOfflineViaIntReason357256957_restrict_del` BEFORE DELETE ON `tblReasonToSetAssetOffline`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMoveAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intReasonOfflineID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMoveAsset';
    END IF;
END;

-- Constraint: fkTblMoveAssetToTblReasonToSetAssetOnlineViaIntReasonO239358445
CREATE TRIGGER `trg_fkTblMoveAssetToTblReasonToSetAssetOnlineViaIntReasonO239358445_restrict_del` BEFORE DELETE ON `tblReasonToSetAssetOnline`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMoveAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intReasonOnlineID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMoveAsset';
    END IF;
END;

-- Constraint: fkTblMoveBackToTblAssetViaIntFromSiteIDAndIntTenantID
CREATE TRIGGER `trg_fkTblMoveBackToTblAssetViaIntFromSiteIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblMoveBack` WHERE `intTenantID` = OLD.`intTenantID` AND `intFromSiteID` = OLD.`id`;
END;

-- Constraint: fkTblMoveBackToTblAssetViaIntSiteIDAndIntTenantID
CREATE TRIGGER `trg_fkTblMoveBackToTblAssetViaIntSiteIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblMoveBack` WHERE `intTenantID` = OLD.`intTenantID` AND `intSiteID` = OLD.`id`;
END;

-- Constraint: fkTblMoveBackToTblMoveStatusViaIntMoveStatusIDAndIntTenantID
CREATE TRIGGER `trg_fkTblMoveBackToTblMoveStatusViaIntMoveStatusIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblMoveStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMoveBack` WHERE `intTenantID` = OLD.`intTenantID` AND `intMoveStatusID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMoveBack';
    END IF;
END;

-- Constraint: fkTblMoveBackToTblUserViaIntConfirmedByID
CREATE TRIGGER `trg_fkTblMoveBackToTblUserViaIntConfirmedByID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMoveBack` WHERE `intConfirmedByID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMoveBack';
    END IF;
END;

-- Constraint: fkTblMoveBackToTblUserViaIntMovedBackByUserID
CREATE TRIGGER `trg_fkTblMoveBackToTblUserViaIntMovedBackByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMoveBack` WHERE `intMovedBackByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMoveBack';
    END IF;
END;

-- Constraint: fkTblMoveBackToTblUserViaIntRejectedByID
CREATE TRIGGER `trg_fkTblMoveBackToTblUserViaIntRejectedByID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMoveBack` WHERE `intRejectedByID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMoveBack';
    END IF;
END;

-- Constraint: fkTblMoveBackToTblUserViaIntRequestedByID
CREATE TRIGGER `trg_fkTblMoveBackToTblUserViaIntRequestedByID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMoveBack` WHERE `intRequestedByID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMoveBack';
    END IF;
END;

-- Constraint: fkTblMoveBackAssetToTblAssetViaIntAssetIDAndIntTenantID
CREATE TRIGGER `trg_fkTblMoveBackAssetToTblAssetViaIntAssetIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblMoveBackAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblMoveBackAssetToTblAssetViaIntSiteIDAndIntTenantID
CREATE TRIGGER `trg_fkTblMoveBackAssetToTblAssetViaIntSiteIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblMoveBackAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intSiteID` = OLD.`id`;
END;

-- Constraint: fkTblMoveBackAssetToTblMoveAssetViaIntOriginalMoveAss1788617866
CREATE TRIGGER `trg_fkTblMoveBackAssetToTblMoveAssetViaIntOriginalMoveAss1788617866_cascade_del` AFTER DELETE ON `tblMoveAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblMoveBackAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intOriginalMoveAssetID` = OLD.`id`;
END;

-- Constraint: fkTblMoveBackAssetToTblMoveBackViaIntMoveBackIDAndIntTenantID
CREATE TRIGGER `trg_fkTblMoveBackAssetToTblMoveBackViaIntMoveBackIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblMoveBack`
FOR EACH ROW
BEGIN
    DELETE FROM `tblMoveBackAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intMoveBackID` = OLD.`id`;
END;

-- Constraint: fkTblMoveBackAssetToTblReasonToSetAssetOfflineViaIntRe118386812
CREATE TRIGGER `trg_fkTblMoveBackAssetToTblReasonToSetAssetOfflineViaIntRe118386812_restrict_del` BEFORE DELETE ON `tblReasonToSetAssetOffline`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMoveBackAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intReasonOfflineID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMoveBackAsset';
    END IF;
END;

-- Constraint: fkTblMoveBackAssetToTblReasonToSetAssetOnlineViaIntRea440465356
CREATE TRIGGER `trg_fkTblMoveBackAssetToTblReasonToSetAssetOnlineViaIntRea440465356_restrict_del` BEFORE DELETE ON `tblReasonToSetAssetOnline`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblMoveBackAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intReasonOnlineID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblMoveBackAsset';
    END IF;
END;

-- Constraint: fkTblMoveSiteManagerToTblAssetViaIntSiteIDAndIntTenantID
CREATE TRIGGER `trg_fkTblMoveSiteManagerToTblAssetViaIntSiteIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblMoveSiteManager` WHERE `intTenantID` = OLD.`intTenantID` AND `intSiteID` = OLD.`id`;
END;

-- Constraint: fkTblMoveSiteManagerToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblMoveSiteManagerToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblMoveSiteManager` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblOrderToTblPaymentProfileViaIntPaymentProfileID
CREATE TRIGGER `trg_fkTblOrderToTblPaymentProfileViaIntPaymentProfileID_restrict_del` BEFORE DELETE ON `tblPaymentProfile`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblOrder` WHERE `intPaymentProfileID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblOrder';
    END IF;
END;

-- Constraint: fkTblOrderToTblQuoteViaIntQuoteID
CREATE TRIGGER `trg_fkTblOrderToTblQuoteViaIntQuoteID_restrict_del` BEFORE DELETE ON `tblQuote`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblOrder` WHERE `intQuoteID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblOrder';
    END IF;
END;

-- Constraint: fkTblOrderToTblSubscriptionPlanViaIntSubscriptionPlanID
CREATE TRIGGER `trg_fkTblOrderToTblSubscriptionPlanViaIntSubscriptionPlanID_restrict_del` BEFORE DELETE ON `tblSubscriptionPlan`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblOrder` WHERE `intSubscriptionPlanID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblOrder';
    END IF;
END;

-- Constraint: fkTblOrderRefundToTblOrderViaIntOrderID
CREATE TRIGGER `trg_fkTblOrderRefundToTblOrderViaIntOrderID_cascade_del` AFTER DELETE ON `tblOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblOrderRefund` WHERE `intOrderID` = OLD.`id`;
END;

-- Constraint: fkTblOrderRefundToTblUserViaIntCreatedByUserID
CREATE TRIGGER `trg_fkTblOrderRefundToTblUserViaIntCreatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblOrderRefund` WHERE `intCreatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblOrderRefund';
    END IF;
END;

-- Constraint: fkTblOrderSystemPropertyToTblOrderViaIntOrderID
CREATE TRIGGER `trg_fkTblOrderSystemPropertyToTblOrderViaIntOrderID_cascade_del` AFTER DELETE ON `tblOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblOrderSystemProperty` WHERE `intOrderID` = OLD.`id`;
END;

-- Constraint: fkTblPartnerToTblFileContentsViaIntFileContentsID
CREATE TRIGGER `trg_fkTblPartnerToTblFileContentsViaIntFileContentsID_cascade_del` AFTER DELETE ON `tblFileContents`
FOR EACH ROW
BEGIN
    DELETE FROM `tblPartner` WHERE `intFileContentsID` = OLD.`id`;
END;

-- Constraint: fkTblPartnerToTblFileContentsViaIntFileLoginScreenBra1125302094
CREATE TRIGGER `trg_fkTblPartnerToTblFileContentsViaIntFileLoginScreenBra1125302094_cascade_del` AFTER DELETE ON `tblFileContents`
FOR EACH ROW
BEGIN
    DELETE FROM `tblPartner` WHERE `intFileLoginScreenBrandContentsID` = OLD.`id`;
END;

-- Constraint: fkTblPartnerToTblUserViaIntCreatedByUserID
CREATE TRIGGER `trg_fkTblPartnerToTblUserViaIntCreatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPartner` WHERE `intCreatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPartner';
    END IF;
END;

-- Constraint: fkTblPartsSelectionToTblAssetViaIntPartIdAndIntTenantID
CREATE TRIGGER `trg_fkTblPartsSelectionToTblAssetViaIntPartIdAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblPartsSelection` WHERE `intTenantID` = OLD.`intTenantID` AND `intPartId` = OLD.`id`;
END;

-- Constraint: fkTblPaymentProfileToTblAccountAddressViaIntAccountAddressID
CREATE TRIGGER `trg_fkTblPaymentProfileToTblAccountAddressViaIntAccountAddressID_restrict_del` BEFORE DELETE ON `tblAccountAddress`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPaymentProfile` WHERE `intAccountAddressID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPaymentProfile';
    END IF;
END;

-- Constraint: fkTblPaymentProfileToTblUserViaIntCreatedByUserID
CREATE TRIGGER `trg_fkTblPaymentProfileToTblUserViaIntCreatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPaymentProfile` WHERE `intCreatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPaymentProfile';
    END IF;
END;

-- Constraint: fkTblProductTimeTrackingToTblLineItemViaIntOrderLineItemID
CREATE TRIGGER `trg_fkTblProductTimeTrackingToTblLineItemViaIntOrderLineItemID_restrict_del` BEFORE DELETE ON `tblLineItem`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblProductTimeTracking` WHERE `intOrderLineItemID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblProductTimeTracking';
    END IF;
END;

-- Constraint: fkTblProductTimeTrackingToTblUserViaIntTrainerUserID
CREATE TRIGGER `trg_fkTblProductTimeTrackingToTblUserViaIntTrainerUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblProductTimeTracking` WHERE `intTrainerUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblProductTimeTracking';
    END IF;
END;

-- Constraint: fkTblProjectToTblAssetViaIntSiteIDAndIntTenantID
CREATE TRIGGER `trg_fkTblProjectToTblAssetViaIntSiteIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblProject` WHERE `intTenantID` = OLD.`intTenantID` AND `intSiteID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblProject';
    END IF;
END;

-- Constraint: fkTblProjectToTblProjectViaIntParentProjectID
CREATE TRIGGER `trg_fkTblProjectToTblProjectViaIntParentProjectID_cascade_del` AFTER DELETE ON `tblProject`
FOR EACH ROW
BEGIN
    DELETE FROM `tblProject` WHERE `intParentProjectID` = OLD.`id`;
END;

-- Constraint: fkTblProjectUserToTblProjectViaIntProjectID
CREATE TRIGGER `trg_fkTblProjectUserToTblProjectViaIntProjectID_cascade_del` AFTER DELETE ON `tblProject`
FOR EACH ROW
BEGIN
    DELETE FROM `tblProjectUser` WHERE `intProjectID` = OLD.`id`;
END;

-- Constraint: fkTblProjectUserToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblProjectUserToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblProjectUser` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblPurchaseOrderToTblAccountViaIntAccountID
CREATE TRIGGER `trg_fkTblPurchaseOrderToTblAccountViaIntAccountID_restrict_del` BEFORE DELETE ON `tblAccount`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrder` WHERE `intAccountID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrder';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderToTblAssetViaIntAssetID
CREATE TRIGGER `trg_fkTblPurchaseOrderToTblAssetViaIntAssetID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrder` WHERE `intAssetID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrder';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderToTblAssetViaIntBillToID
CREATE TRIGGER `trg_fkTblPurchaseOrderToTblAssetViaIntBillToID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrder` WHERE `intBillToID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrder';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderToTblAssetViaIntLocationID
CREATE TRIGGER `trg_fkTblPurchaseOrderToTblAssetViaIntLocationID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrder` WHERE `intLocationID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrder';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderToTblAssetViaIntShipToID
CREATE TRIGGER `trg_fkTblPurchaseOrderToTblAssetViaIntShipToID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrder` WHERE `intShipToID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrder';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderToTblAssetViaIntSiteIDAndIntTenantID
CREATE TRIGGER `trg_fkTblPurchaseOrderToTblAssetViaIntSiteIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrder` WHERE `intTenantID` = OLD.`intTenantID` AND `intSiteID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrder';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderToTblBillingTermViaIntBillingTermIDA190938202
CREATE TRIGGER `trg_fkTblPurchaseOrderToTblBillingTermViaIntBillingTermIDA190938202_restrict_del` BEFORE DELETE ON `tblBillingTerm`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrder` WHERE `intTenantID` = OLD.`intTenantID` AND `intBillingTermID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrder';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderToTblBusinessViaIntSupplierIDAndIntTenantID
CREATE TRIGGER `trg_fkTblPurchaseOrderToTblBusinessViaIntSupplierIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblBusiness`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrder` WHERE `intTenantID` = OLD.`intTenantID` AND `intSupplierID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrder';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderToTblBusinessViaIntVendorID
CREATE TRIGGER `trg_fkTblPurchaseOrderToTblBusinessViaIntVendorID_restrict_del` BEFORE DELETE ON `tblBusiness`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrder` WHERE `intVendorID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrder';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderToTblChargeDepartmentViaIntChargeDe1001662196
CREATE TRIGGER `trg_fkTblPurchaseOrderToTblChargeDepartmentViaIntChargeDe1001662196_restrict_del` BEFORE DELETE ON `tblChargeDepartment`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrder` WHERE `intTenantID` = OLD.`intTenantID` AND `intChargeDepartmentID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrder';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderToTblPurchaseOrderStatusViaIntPurch1298462554
CREATE TRIGGER `trg_fkTblPurchaseOrderToTblPurchaseOrderStatusViaIntPurch1298462554_restrict_del` BEFORE DELETE ON `tblPurchaseOrderStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrder` WHERE `intTenantID` = OLD.`intTenantID` AND `intPurchaseOrderStatusID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrder';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderToTblUserViaIntCreatedByUserID
CREATE TRIGGER `trg_fkTblPurchaseOrderToTblUserViaIntCreatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrder` WHERE `intCreatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrder';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderToTblUserViaIntLastUpdatedUserID
CREATE TRIGGER `trg_fkTblPurchaseOrderToTblUserViaIntLastUpdatedUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrder` WHERE `intLastUpdatedUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrder';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderToTblWorkOrderViaIntWorkOrderID
CREATE TRIGGER `trg_fkTblPurchaseOrderToTblWorkOrderViaIntWorkOrderID_restrict_del` BEFORE DELETE ON `tblWorkOrder`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrder` WHERE `intWorkOrderID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrder';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderAdditionalCostToTblBusinessViaIntBusinessID
CREATE TRIGGER `trg_fkTblPurchaseOrderAdditionalCostToTblBusinessViaIntBusinessID_restrict_del` BEFORE DELETE ON `tblBusiness`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrderAdditionalCost` WHERE `intBusinessID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrderAdditionalCost';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderAdditionalCostToTblPurchaseOrderAddi831037589
CREATE TRIGGER `trg_fkTblPurchaseOrderAdditionalCostToTblPurchaseOrderAddi831037589_restrict_del` BEFORE DELETE ON `tblPurchaseOrderAdditionalCostType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrderAdditionalCost` WHERE `intPurchaseOrderAdditionalCostTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrderAdditionalCost';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderAdditionalCostToTblPurchaseOrderViaI241590741
CREATE TRIGGER `trg_fkTblPurchaseOrderAdditionalCostToTblPurchaseOrderViaI241590741_restrict_del` BEFORE DELETE ON `tblPurchaseOrder`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrderAdditionalCost` WHERE `intPurchaseOrderID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrderAdditionalCost';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderAdditionalCostToTblShippingTypeViaI1719464281
CREATE TRIGGER `trg_fkTblPurchaseOrderAdditionalCostToTblShippingTypeViaI1719464281_restrict_del` BEFORE DELETE ON `tblShippingType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrderAdditionalCost` WHERE `intShippingTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrderAdditionalCost';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderLineItemToTblAccountViaIntAccountIDA792255745
CREATE TRIGGER `trg_fkTblPurchaseOrderLineItemToTblAccountViaIntAccountIDA792255745_restrict_del` BEFORE DELETE ON `tblAccount`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrderLineItem` WHERE `intTenantID` = OLD.`intTenantID` AND `intAccountID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrderLineItem';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderLineItemToTblAssetViaIntAssetIDAndIntTenantID
CREATE TRIGGER `trg_fkTblPurchaseOrderLineItemToTblAssetViaIntAssetIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblPurchaseOrderLineItem` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblPurchaseOrderLineItemToTblAssetViaIntShipToLocat1860331469
CREATE TRIGGER `trg_fkTblPurchaseOrderLineItemToTblAssetViaIntShipToLocat1860331469_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblPurchaseOrderLineItem` WHERE `intTenantID` = OLD.`intTenantID` AND `intShipToLocationID` = OLD.`id`;
END;

-- Constraint: fkTblPurchaseOrderLineItemToTblAssetViaIntSiteIDAndIntTenantID
CREATE TRIGGER `trg_fkTblPurchaseOrderLineItemToTblAssetViaIntSiteIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrderLineItem` WHERE `intTenantID` = OLD.`intTenantID` AND `intSiteID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrderLineItem';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderLineItemToTblAssetViaIntSourceAssetI466988292
CREATE TRIGGER `trg_fkTblPurchaseOrderLineItemToTblAssetViaIntSourceAssetI466988292_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblPurchaseOrderLineItem` WHERE `intTenantID` = OLD.`intTenantID` AND `intSourceAssetID` = OLD.`id`;
END;

-- Constraint: fkTblPurchaseOrderLineItemToTblBusinessViaIntSupplier1580630541
CREATE TRIGGER `trg_fkTblPurchaseOrderLineItemToTblBusinessViaIntSupplier1580630541_restrict_del` BEFORE DELETE ON `tblBusiness`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrderLineItem` WHERE `intTenantID` = OLD.`intTenantID` AND `intSupplierID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrderLineItem';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderLineItemToTblChargeDepartmentViaInt1427593549
CREATE TRIGGER `trg_fkTblPurchaseOrderLineItemToTblChargeDepartmentViaInt1427593549_restrict_del` BEFORE DELETE ON `tblChargeDepartment`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrderLineItem` WHERE `intTenantID` = OLD.`intTenantID` AND `intChargeDepartmentID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrderLineItem';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderLineItemToTblPurchaseOrderLineItemV1229238728
CREATE TRIGGER `trg_fkTblPurchaseOrderLineItemToTblPurchaseOrderLineItemV1229238728_restrict_del` BEFORE DELETE ON `tblPurchaseOrderLineItem`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrderLineItem` WHERE `intParentPurchaseOrderLineItemID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrderLineItem';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderLineItemToTblPurchaseOrderViaIntPur2133802367
CREATE TRIGGER `trg_fkTblPurchaseOrderLineItemToTblPurchaseOrderViaIntPur2133802367_restrict_del` BEFORE DELETE ON `tblPurchaseOrder`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrderLineItem` WHERE `intTenantID` = OLD.`intTenantID` AND `intPurchaseOrderID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrderLineItem';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderLineItemToTblStockHistoryViaIntStockHistoryID
CREATE TRIGGER `trg_fkTblPurchaseOrderLineItemToTblStockHistoryViaIntStockHistoryID_restrict_del` BEFORE DELETE ON `tblStockHistory`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrderLineItem` WHERE `intStockHistoryID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrderLineItem';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderLineItemToTblStockViaIntStockIDAndIntTenantID
CREATE TRIGGER `trg_fkTblPurchaseOrderLineItemToTblStockViaIntStockIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblStock`
FOR EACH ROW
BEGIN
    DELETE FROM `tblPurchaseOrderLineItem` WHERE `intTenantID` = OLD.`intTenantID` AND `intStockID` = OLD.`id`;
END;

-- Constraint: fkTblPurchaseOrderLineItemToTblUserViaIntRequestedByUserID
CREATE TRIGGER `trg_fkTblPurchaseOrderLineItemToTblUserViaIntRequestedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrderLineItem` WHERE `intRequestedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrderLineItem';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderLineItemToTblWorkOrderViaIntSourceWo825060644
CREATE TRIGGER `trg_fkTblPurchaseOrderLineItemToTblWorkOrderViaIntSourceWo825060644_cascade_del` AFTER DELETE ON `tblWorkOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblPurchaseOrderLineItem` WHERE `intTenantID` = OLD.`intTenantID` AND `intSourceWorkOrderID` = OLD.`id`;
END;

-- Constraint: fkTblPurchaseOrderLineItemRfqToTblPurchaseOrderLineIt1572214171
CREATE TRIGGER `trg_fkTblPurchaseOrderLineItemRfqToTblPurchaseOrderLineIt1572214171_cascade_del` AFTER DELETE ON `tblPurchaseOrderLineItem`
FOR EACH ROW
BEGIN
    DELETE FROM `tblPurchaseOrderLineItemRfq` WHERE `intPurchaseOrderLineItemID` = OLD.`id`;
END;

-- Constraint: fkTblPurchaseOrderLineItemRfqToTblRFQViaIntRFQID
CREATE TRIGGER `trg_fkTblPurchaseOrderLineItemRfqToTblRFQViaIntRFQID_cascade_del` AFTER DELETE ON `tblRFQ`
FOR EACH ROW
BEGIN
    DELETE FROM `tblPurchaseOrderLineItemRfq` WHERE `intRFQID` = OLD.`id`;
END;

-- Constraint: fkTblPurchaseOrderLogToTblPurchaseOrderStatusViaIntFromStatusId
CREATE TRIGGER `trg_fkTblPurchaseOrderLogToTblPurchaseOrderStatusViaIntFromStatusId_restrict_del` BEFORE DELETE ON `tblPurchaseOrderStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrderLog` WHERE `intFromStatusId` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrderLog';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderLogToTblPurchaseOrderStatusViaIntToStatusId
CREATE TRIGGER `trg_fkTblPurchaseOrderLogToTblPurchaseOrderStatusViaIntToStatusId_restrict_del` BEFORE DELETE ON `tblPurchaseOrderStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrderLog` WHERE `intToStatusId` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrderLog';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderLogToTblPurchaseOrderViaIntPurchaseOrderID
CREATE TRIGGER `trg_fkTblPurchaseOrderLogToTblPurchaseOrderViaIntPurchaseOrderID_restrict_del` BEFORE DELETE ON `tblPurchaseOrder`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrderLog` WHERE `intPurchaseOrderID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrderLog';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderLogToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblPurchaseOrderLogToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrderLog` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrderLog';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderStatusTransitionToTblPurchaseOrderS1222334400
CREATE TRIGGER `trg_fkTblPurchaseOrderStatusTransitionToTblPurchaseOrderS1222334400_restrict_del` BEFORE DELETE ON `tblPurchaseOrderStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrderStatusTransition` WHERE `intToStatusID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrderStatusTransition';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderStatusTransitionToTblPurchaseOrderS1405731857
CREATE TRIGGER `trg_fkTblPurchaseOrderStatusTransitionToTblPurchaseOrderS1405731857_restrict_del` BEFORE DELETE ON `tblPurchaseOrderStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrderStatusTransition` WHERE `intFromStatusID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrderStatusTransition';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderStatusTransitionPermissionToTblPurcha97817389
CREATE TRIGGER `trg_fkTblPurchaseOrderStatusTransitionPermissionToTblPurcha97817389_restrict_del` BEFORE DELETE ON `tblPurchaseOrderStatusTransition`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrderStatusTransitionPermission` WHERE `intPurchaseOrderStatusTransitionId` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrderStatusTransitionPermission';
    END IF;
END;

-- Constraint: fkTblPurchaseOrderUserToTblPurchaseOrderViaIntPurchaseOrderID
CREATE TRIGGER `trg_fkTblPurchaseOrderUserToTblPurchaseOrderViaIntPurchaseOrderID_cascade_del` AFTER DELETE ON `tblPurchaseOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblPurchaseOrderUser` WHERE `intPurchaseOrderID` = OLD.`id`;
END;

-- Constraint: fkTblPurchaseOrderUserToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblPurchaseOrderUserToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblPurchaseOrderUser` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblPurchaseOrderUser';
    END IF;
END;

-- Constraint: fkTblQuoteToTblUserViaIntAcceptedByUserID
CREATE TRIGGER `trg_fkTblQuoteToTblUserViaIntAcceptedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblQuote` WHERE `intAcceptedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblQuote';
    END IF;
END;

-- Constraint: fkTblQuoteToTblUserViaIntPreparedByUserID
CREATE TRIGGER `trg_fkTblQuoteToTblUserViaIntPreparedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblQuote` WHERE `intPreparedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblQuote';
    END IF;
END;

-- Constraint: fkTblRCAGroupingToTblAssetCategoryViaIntAssetCategory2144176608
CREATE TRIGGER `trg_fkTblRCAGroupingToTblAssetCategoryViaIntAssetCategory2144176608_restrict_del` BEFORE DELETE ON `tblAssetCategory`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblRCAGrouping` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetCategoryID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblRCAGrouping';
    END IF;
END;

-- Constraint: fkTblRCAGroupingToTblAssetViaIntAssetIDAndIntTenantID
CREATE TRIGGER `trg_fkTblRCAGroupingToTblAssetViaIntAssetIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblRCAGrouping` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblRCAGrouping';
    END IF;
END;

-- Constraint: fkTblRCAGroupingToTblRCAProblemViaIntRCAProblemID
CREATE TRIGGER `trg_fkTblRCAGroupingToTblRCAProblemViaIntRCAProblemID_restrict_del` BEFORE DELETE ON `tblRCAProblem`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblRCAGrouping` WHERE `intRCAProblemID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblRCAGrouping';
    END IF;
END;

-- Constraint: fkTblRCAGroupingActionToTblRCAActionViaIntRCAActionID
CREATE TRIGGER `trg_fkTblRCAGroupingActionToTblRCAActionViaIntRCAActionID_restrict_del` BEFORE DELETE ON `tblRCAAction`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblRCAGroupingAction` WHERE `intRCAActionID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblRCAGroupingAction';
    END IF;
END;

-- Constraint: fkTblRCAGroupingActionToTblRCAGroupingViaIntRCAGroupingID
CREATE TRIGGER `trg_fkTblRCAGroupingActionToTblRCAGroupingViaIntRCAGroupingID_cascade_del` AFTER DELETE ON `tblRCAGrouping`
FOR EACH ROW
BEGIN
    DELETE FROM `tblRCAGroupingAction` WHERE `intRCAGroupingID` = OLD.`id`;
END;

-- Constraint: fkTblRCAGroupingCauseToTblRCACauseViaIntRCACauseID
CREATE TRIGGER `trg_fkTblRCAGroupingCauseToTblRCACauseViaIntRCACauseID_restrict_del` BEFORE DELETE ON `tblRCACause`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblRCAGroupingCause` WHERE `intRCACauseID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblRCAGroupingCause';
    END IF;
END;

-- Constraint: fkTblRCAGroupingCauseToTblRCAGroupingViaIntRCAGroupingID
CREATE TRIGGER `trg_fkTblRCAGroupingCauseToTblRCAGroupingViaIntRCAGroupingID_cascade_del` AFTER DELETE ON `tblRCAGrouping`
FOR EACH ROW
BEGIN
    DELETE FROM `tblRCAGroupingCause` WHERE `intRCAGroupingID` = OLD.`id`;
END;

-- Constraint: fkTblReceiptToTblAssetViaIntSiteIDAndIntTenantID
CREATE TRIGGER `trg_fkTblReceiptToTblAssetViaIntSiteIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblReceipt` WHERE `intTenantID` = OLD.`intTenantID` AND `intSiteID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblReceipt';
    END IF;
END;

-- Constraint: fkTblReceiptToTblBusinessViaIntSupplierIDAndIntTenantID
CREATE TRIGGER `trg_fkTblReceiptToTblBusinessViaIntSupplierIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblBusiness`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblReceipt` WHERE `intTenantID` = OLD.`intTenantID` AND `intSupplierID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblReceipt';
    END IF;
END;

-- Constraint: fkTblReceiptToTblPurchaseOrderViaIntPurchaseOrderIDAn1869914267
CREATE TRIGGER `trg_fkTblReceiptToTblPurchaseOrderViaIntPurchaseOrderIDAn1869914267_restrict_del` BEFORE DELETE ON `tblPurchaseOrder`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblReceipt` WHERE `intTenantID` = OLD.`intTenantID` AND `intPurchaseOrderID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblReceipt';
    END IF;
END;

-- Constraint: fkTblReceiptToTblReceiptStatusViaIntReceiptStatusIDAnd705949051
CREATE TRIGGER `trg_fkTblReceiptToTblReceiptStatusViaIntReceiptStatusIDAnd705949051_restrict_del` BEFORE DELETE ON `tblReceiptStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblReceipt` WHERE `intTenantID` = OLD.`intTenantID` AND `intReceiptStatusID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblReceipt';
    END IF;
END;

-- Constraint: fkTblReceiptToTblUserViaIntReceivedByUserID
CREATE TRIGGER `trg_fkTblReceiptToTblUserViaIntReceivedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblReceipt` WHERE `intReceivedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblReceipt';
    END IF;
END;

-- Constraint: fkTblReceiptLineItemToTblAssetViaIntAssetIDAndIntTenantID
CREATE TRIGGER `trg_fkTblReceiptLineItemToTblAssetViaIntAssetIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblReceiptLineItem` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblReceiptLineItem';
    END IF;
END;

-- Constraint: fkTblReceiptLineItemToTblAssetViaIntReceiveToFacility1859181723
CREATE TRIGGER `trg_fkTblReceiptLineItemToTblAssetViaIntReceiveToFacility1859181723_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblReceiptLineItem` WHERE `intTenantID` = OLD.`intTenantID` AND `intReceiveToFacilityID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblReceiptLineItem';
    END IF;
END;

-- Constraint: fkTblReceiptLineItemToTblPurchaseOrderLineItemViaIntP1716053076
CREATE TRIGGER `trg_fkTblReceiptLineItemToTblPurchaseOrderLineItemViaIntP1716053076_restrict_del` BEFORE DELETE ON `tblPurchaseOrderLineItem`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblReceiptLineItem` WHERE `intTenantID` = OLD.`intTenantID` AND `intPurchaseOrderLineItemID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblReceiptLineItem';
    END IF;
END;

-- Constraint: fkTblReceiptLineItemToTblReceiptLineItemViaIntParentRe726223574
CREATE TRIGGER `trg_fkTblReceiptLineItemToTblReceiptLineItemViaIntParentRe726223574_restrict_del` BEFORE DELETE ON `tblReceiptLineItem`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblReceiptLineItem` WHERE `intTenantID` = OLD.`intTenantID` AND `intParentReceiptLineItemID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblReceiptLineItem';
    END IF;
END;

-- Constraint: fkTblReceiptLineItemToTblReceiptViaIntReceiptIDAndIntTenantID
CREATE TRIGGER `trg_fkTblReceiptLineItemToTblReceiptViaIntReceiptIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblReceipt`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblReceiptLineItem` WHERE `intTenantID` = OLD.`intTenantID` AND `intReceiptID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblReceiptLineItem';
    END IF;
END;

-- Constraint: fkTblReceiptLineItemToTblStockViaIntReceiveToStockIDAn593840726
CREATE TRIGGER `trg_fkTblReceiptLineItemToTblStockViaIntReceiveToStockIDAn593840726_restrict_del` BEFORE DELETE ON `tblStock`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblReceiptLineItem` WHERE `intTenantID` = OLD.`intTenantID` AND `intReceiveToStockID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblReceiptLineItem';
    END IF;
END;

-- Constraint: fkTblReceiptLineItemToTblStockViaIntStockIDAndIntTenantID
CREATE TRIGGER `trg_fkTblReceiptLineItemToTblStockViaIntStockIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblStock`
FOR EACH ROW
BEGIN
    DELETE FROM `tblReceiptLineItem` WHERE `intTenantID` = OLD.`intTenantID` AND `intStockID` = OLD.`id`;
END;

-- Constraint: fkTblReceiptStatusTransitionToTblReceiptStatusViaIntF1439095419
CREATE TRIGGER `trg_fkTblReceiptStatusTransitionToTblReceiptStatusViaIntF1439095419_restrict_del` BEFORE DELETE ON `tblReceiptStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblReceiptStatusTransition` WHERE `intFromStatusID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblReceiptStatusTransition';
    END IF;
END;

-- Constraint: fkTblReceiptStatusTransitionToTblReceiptStatusViaIntToStatusID
CREATE TRIGGER `trg_fkTblReceiptStatusTransitionToTblReceiptStatusViaIntToStatusID_restrict_del` BEFORE DELETE ON `tblReceiptStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblReceiptStatusTransition` WHERE `intToStatusID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblReceiptStatusTransition';
    END IF;
END;

-- Constraint: fkTblReconciliationControlToTblIntegrationViaIntIntegrationID
CREATE TRIGGER `trg_fkTblReconciliationControlToTblIntegrationViaIntIntegrationID_cascade_del` AFTER DELETE ON `tblIntegration`
FOR EACH ROW
BEGIN
    DELETE FROM `tblReconciliationControl` WHERE `intIntegrationID` = OLD.`id`;
END;

-- Constraint: fkTblRegionUserToTblAssetViaIntRegionIDAndIntTenantID
CREATE TRIGGER `trg_fkTblRegionUserToTblAssetViaIntRegionIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblRegionUser` WHERE `intTenantID` = OLD.`intTenantID` AND `intRegionID` = OLD.`id`;
END;

-- Constraint: fkTblRegionUserToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblRegionUserToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblRegionUser` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblRegionUserGroupToTblRegionUserViaIntRegionUserIDA805625715
CREATE TRIGGER `trg_fkTblRegionUserGroupToTblRegionUserViaIntRegionUserIDA805625715_cascade_del` AFTER DELETE ON `tblRegionUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblRegionUserGroup` WHERE `intTenantID` = OLD.`intTenantID` AND `intRegionUserID` = OLD.`id`;
END;

-- Constraint: fkTblRegionUserGroupToTblUserViaIntGroupID
CREATE TRIGGER `trg_fkTblRegionUserGroupToTblUserViaIntGroupID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblRegionUserGroup` WHERE `intGroupID` = OLD.`id`;
END;

-- Constraint: fkTblRememberMeCookieToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblRememberMeCookieToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblRememberMeCookie` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblReportPresetParameterToTblReportPresetViaIntReportPresetID
CREATE TRIGGER `trg_fkTblReportPresetParameterToTblReportPresetViaIntReportPresetID_cascade_del` AFTER DELETE ON `tblReportPreset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblReportPresetParameter` WHERE `intReportPresetID` = OLD.`id`;
END;

-- Constraint: fkTblReportsToResolvedToTblUserViaIntChildID
CREATE TRIGGER `trg_fkTblReportsToResolvedToTblUserViaIntChildID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblReportsToResolved` WHERE `intChildID` = OLD.`id`;
END;

-- Constraint: fkTblReportsToResolvedToTblUserViaIntParentID
CREATE TRIGGER `trg_fkTblReportsToResolvedToTblUserViaIntParentID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblReportsToResolved` WHERE `intParentID` = OLD.`id`;
END;

-- Constraint: fkTblResetPasswordToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblResetPasswordToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblResetPassword` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblRFQToTblAssetViaIntBillToID
CREATE TRIGGER `trg_fkTblRFQToTblAssetViaIntBillToID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblRFQ` WHERE `intBillToID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblRFQ';
    END IF;
END;

-- Constraint: fkTblRFQToTblAssetViaIntShipToID
CREATE TRIGGER `trg_fkTblRFQToTblAssetViaIntShipToID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblRFQ` WHERE `intShipToID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblRFQ';
    END IF;
END;

-- Constraint: fkTblRFQToTblAssetViaIntSiteIDAndIntTenantID
CREATE TRIGGER `trg_fkTblRFQToTblAssetViaIntSiteIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblRFQ` WHERE `intTenantID` = OLD.`intTenantID` AND `intSiteID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblRFQ';
    END IF;
END;

-- Constraint: fkTblRFQToTblBusinessViaIntBusinessID
CREATE TRIGGER `trg_fkTblRFQToTblBusinessViaIntBusinessID_restrict_del` BEFORE DELETE ON `tblBusiness`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblRFQ` WHERE `intBusinessID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblRFQ';
    END IF;
END;

-- Constraint: fkTblRFQToTblBusinessViaIntSupplierID
CREATE TRIGGER `trg_fkTblRFQToTblBusinessViaIntSupplierID_restrict_del` BEFORE DELETE ON `tblBusiness`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblRFQ` WHERE `intSupplierID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblRFQ';
    END IF;
END;

-- Constraint: fkTblRFQToTblRFQStatusViaIntRFQStatusID
CREATE TRIGGER `trg_fkTblRFQToTblRFQStatusViaIntRFQStatusID_restrict_del` BEFORE DELETE ON `tblRFQStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblRFQ` WHERE `intRFQStatusID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblRFQ';
    END IF;
END;

-- Constraint: fkTblRFQToTblUserViaIntCreatedByUserID
CREATE TRIGGER `trg_fkTblRFQToTblUserViaIntCreatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblRFQ` WHERE `intCreatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblRFQ';
    END IF;
END;

-- Constraint: fkTblRFQAssetToTblAssetViaIntAssetID
CREATE TRIGGER `trg_fkTblRFQAssetToTblAssetViaIntAssetID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblRFQAsset` WHERE `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblRFQAssetToTblRFQViaIntRFQID
CREATE TRIGGER `trg_fkTblRFQAssetToTblRFQViaIntRFQID_restrict_del` BEFORE DELETE ON `tblRFQ`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblRFQAsset` WHERE `intRFQID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblRFQAsset';
    END IF;
END;

-- Constraint: fkTblRFQLineItemToTblAssetViaIntAssetID
CREATE TRIGGER `trg_fkTblRFQLineItemToTblAssetViaIntAssetID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblRFQLineItem` WHERE `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblRFQLineItemToTblPurchaseOrderLineItemViaIntPurch1199844306
CREATE TRIGGER `trg_fkTblRFQLineItemToTblPurchaseOrderLineItemViaIntPurch1199844306_restrict_del` BEFORE DELETE ON `tblPurchaseOrderLineItem`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblRFQLineItem` WHERE `intPurchaseOrderLineItemID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblRFQLineItem';
    END IF;
END;

-- Constraint: fkTblRFQLineItemToTblRFQLineItemViaIntParentRFQLineItemID
CREATE TRIGGER `trg_fkTblRFQLineItemToTblRFQLineItemViaIntParentRFQLineItemID_restrict_del` BEFORE DELETE ON `tblRFQLineItem`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblRFQLineItem` WHERE `intParentRFQLineItemID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblRFQLineItem';
    END IF;
END;

-- Constraint: fkTblRFQLineItemToTblRFQViaIntRFQID
CREATE TRIGGER `trg_fkTblRFQLineItemToTblRFQViaIntRFQID_cascade_del` AFTER DELETE ON `tblRFQ`
FOR EACH ROW
BEGIN
    DELETE FROM `tblRFQLineItem` WHERE `intRFQID` = OLD.`id`;
END;

-- Constraint: fkTblRFQQueueToTblAssetViaIntAssetID
CREATE TRIGGER `trg_fkTblRFQQueueToTblAssetViaIntAssetID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblRFQQueue` WHERE `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblRFQStatusTransitionToTblRFQStatusViaIntFromStatusID
CREATE TRIGGER `trg_fkTblRFQStatusTransitionToTblRFQStatusViaIntFromStatusID_restrict_del` BEFORE DELETE ON `tblRFQStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblRFQStatusTransition` WHERE `intFromStatusID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblRFQStatusTransition';
    END IF;
END;

-- Constraint: fkTblRFQStatusTransitionToTblRFQStatusViaIntToStatusID
CREATE TRIGGER `trg_fkTblRFQStatusTransitionToTblRFQStatusViaIntToStatusID_restrict_del` BEFORE DELETE ON `tblRFQStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblRFQStatusTransition` WHERE `intToStatusID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblRFQStatusTransition';
    END IF;
END;

-- Constraint: fkTblRolePermissionToTblRoleViaIntRoleID
CREATE TRIGGER `trg_fkTblRolePermissionToTblRoleViaIntRoleID_restrict_del` BEFORE DELETE ON `tblRole`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblRolePermission` WHERE `intRoleID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblRolePermission';
    END IF;
END;

-- Constraint: fkTblSalesAccountTrackingToTblSalesAccountTrackingVia1405709447
CREATE TRIGGER `trg_fkTblSalesAccountTrackingToTblSalesAccountTrackingVia1405709447_restrict_del` BEFORE DELETE ON `tblSalesAccountTracking`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblSalesAccountTracking` WHERE `intPredecessorID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblSalesAccountTracking';
    END IF;
END;

-- Constraint: fkTblSalesAccountTrackingToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblSalesAccountTrackingToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblSalesAccountTracking` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblSalesAccountTracking';
    END IF;
END;

-- Constraint: fkTblScheduledMaintenanceToTblAccountViaIntAccountID
CREATE TRIGGER `trg_fkTblScheduledMaintenanceToTblAccountViaIntAccountID_restrict_del` BEFORE DELETE ON `tblAccount`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledMaintenance` WHERE `intAccountID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledMaintenance';
    END IF;
END;

-- Constraint: fkTblScheduledMaintenanceToTblAssetViaIntSiteIDAndIntTenantID
CREATE TRIGGER `trg_fkTblScheduledMaintenanceToTblAssetViaIntSiteIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledMaintenance` WHERE `intTenantID` = OLD.`intTenantID` AND `intSiteID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledMaintenance';
    END IF;
END;

-- Constraint: fkTblScheduledMaintenanceToTblChargeDepartmentViaIntC1436194572
CREATE TRIGGER `trg_fkTblScheduledMaintenanceToTblChargeDepartmentViaIntC1436194572_restrict_del` BEFORE DELETE ON `tblChargeDepartment`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledMaintenance` WHERE `intChargeDepartmentID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledMaintenance';
    END IF;
END;

-- Constraint: fkTblScheduledMaintenanceToTblMaintenanceTypeViaIntMai181494491
CREATE TRIGGER `trg_fkTblScheduledMaintenanceToTblMaintenanceTypeViaIntMai181494491_restrict_del` BEFORE DELETE ON `tblMaintenanceType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledMaintenance` WHERE `intTenantID` = OLD.`intTenantID` AND `intMaintenanceTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledMaintenance';
    END IF;
END;

-- Constraint: fkTblScheduledMaintenanceToTblPriorityViaIntPriorityI1275650139
CREATE TRIGGER `trg_fkTblScheduledMaintenanceToTblPriorityViaIntPriorityI1275650139_restrict_del` BEFORE DELETE ON `tblPriority`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledMaintenance` WHERE `intTenantID` = OLD.`intTenantID` AND `intPriorityID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledMaintenance';
    END IF;
END;

-- Constraint: fkTblScheduledMaintenanceToTblProjectViaIntProjectIDA2115077211
CREATE TRIGGER `trg_fkTblScheduledMaintenanceToTblProjectViaIntProjectIDA2115077211_restrict_del` BEFORE DELETE ON `tblProject`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledMaintenance` WHERE `intTenantID` = OLD.`intTenantID` AND `intProjectID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledMaintenance';
    END IF;
END;

-- Constraint: fkTblScheduledMaintenanceToTblUserViaIntRequestorUserID
CREATE TRIGGER `trg_fkTblScheduledMaintenanceToTblUserViaIntRequestorUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledMaintenance` WHERE `intRequestorUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledMaintenance';
    END IF;
END;

-- Constraint: fkTblScheduledMaintenanceToTblWorkOrderStatusViaIntSta685709471
CREATE TRIGGER `trg_fkTblScheduledMaintenanceToTblWorkOrderStatusViaIntSta685709471_restrict_del` BEFORE DELETE ON `tblWorkOrderStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledMaintenance` WHERE `intTenantID` = OLD.`intTenantID` AND `intStartAsWorkOrderStatusID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledMaintenance';
    END IF;
END;

-- Constraint: fkTblScheduledMaintenanceActivityLogToTblActivityLogVi387516583
CREATE TRIGGER `trg_fkTblScheduledMaintenanceActivityLogToTblActivityLogVi387516583_cascade_del` AFTER DELETE ON `tblActivityLog`
FOR EACH ROW
BEGIN
    DELETE FROM `tblScheduledMaintenanceActivityLog` WHERE `intActivityLogID` = OLD.`id`;
END;

-- Constraint: fkTblScheduledMaintenanceActivityLogToTblAssetEventVi1488379715
CREATE TRIGGER `trg_fkTblScheduledMaintenanceActivityLogToTblAssetEventVi1488379715_restrict_del` BEFORE DELETE ON `tblAssetEvent`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledMaintenanceActivityLog` WHERE `intAssetEventID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledMaintenanceActivityLog';
    END IF;
END;

-- Constraint: fkTblScheduledMaintenanceActivityLogToTblMeterReading1382911279
CREATE TRIGGER `trg_fkTblScheduledMaintenanceActivityLogToTblMeterReading1382911279_restrict_del` BEFORE DELETE ON `tblMeterReading`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledMaintenanceActivityLog` WHERE `intMeterReadingID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledMaintenanceActivityLog';
    END IF;
END;

-- Constraint: fkTblScheduledMaintenanceActivityLogToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblScheduledMaintenanceActivityLogToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledMaintenanceActivityLog` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledMaintenanceActivityLog';
    END IF;
END;

-- Constraint: fkTblScheduledMaintenanceActivityLogToTblWorkOrderVia1813118809
CREATE TRIGGER `trg_fkTblScheduledMaintenanceActivityLogToTblWorkOrderVia1813118809_restrict_del` BEFORE DELETE ON `tblWorkOrder`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledMaintenanceActivityLog` WHERE `intWorkOrderID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledMaintenanceActivityLog';
    END IF;
END;

-- Constraint: fkTblScheduledMaintenanceAssetToTblAssetViaIntAssetID1280349577
CREATE TRIGGER `trg_fkTblScheduledMaintenanceAssetToTblAssetViaIntAssetID1280349577_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledMaintenanceAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledMaintenanceAsset';
    END IF;
END;

-- Constraint: fkTblScheduledMaintenanceAssetToTblScheduledMaintenanc293404617
CREATE TRIGGER `trg_fkTblScheduledMaintenanceAssetToTblScheduledMaintenanc293404617_cascade_del` AFTER DELETE ON `tblScheduledMaintenance`
FOR EACH ROW
BEGIN
    DELETE FROM `tblScheduledMaintenanceAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intScheduledMaintenanceID` = OLD.`id`;
END;

-- Constraint: fkTblScheduledMaintenanceBusinessToTblAssetBusinessVia662717954
CREATE TRIGGER `trg_fkTblScheduledMaintenanceBusinessToTblAssetBusinessVia662717954_restrict_del` BEFORE DELETE ON `tblAssetBusiness`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledMaintenanceBusiness` WHERE `intAssetBusinessID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledMaintenanceBusiness';
    END IF;
END;

-- Constraint: fkTblScheduledMaintenanceBusinessToTblAssetViaIntAsse1735728485
CREATE TRIGGER `trg_fkTblScheduledMaintenanceBusinessToTblAssetViaIntAsse1735728485_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblScheduledMaintenanceBusiness` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblScheduledMaintenanceBusinessToTblBusinessGroupVi1245669179
CREATE TRIGGER `trg_fkTblScheduledMaintenanceBusinessToTblBusinessGroupVi1245669179_restrict_del` BEFORE DELETE ON `tblBusinessGroup`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledMaintenanceBusiness` WHERE `intTenantID` = OLD.`intTenantID` AND `intBusinessGroupID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledMaintenanceBusiness';
    END IF;
END;

-- Constraint: fkTblScheduledMaintenanceBusinessToTblBusinessViaIntBu975362557
CREATE TRIGGER `trg_fkTblScheduledMaintenanceBusinessToTblBusinessViaIntBu975362557_cascade_del` AFTER DELETE ON `tblBusiness`
FOR EACH ROW
BEGIN
    DELETE FROM `tblScheduledMaintenanceBusiness` WHERE `intTenantID` = OLD.`intTenantID` AND `intBusinessID` = OLD.`id`;
END;

-- Constraint: fkTblScheduledMaintenanceBusinessToTblScheduledMainten366387657
CREATE TRIGGER `trg_fkTblScheduledMaintenanceBusinessToTblScheduledMainten366387657_cascade_del` AFTER DELETE ON `tblScheduledMaintenance`
FOR EACH ROW
BEGIN
    DELETE FROM `tblScheduledMaintenanceBusiness` WHERE `intTenantID` = OLD.`intTenantID` AND `intScheduledMaintenanceID` = OLD.`id`;
END;

-- Constraint: fkTblScheduledMaintenanceNestingToTblScheduledMainten1167800448
CREATE TRIGGER `trg_fkTblScheduledMaintenanceNestingToTblScheduledMainten1167800448_cascade_del` AFTER DELETE ON `tblScheduledMaintenance`
FOR EACH ROW
BEGIN
    DELETE FROM `tblScheduledMaintenanceNesting` WHERE `intScheduledMaintenanceID` = OLD.`id`;
END;

-- Constraint: fkTblScheduledMaintenanceNestingToTblScheduledMaintena844858350
CREATE TRIGGER `trg_fkTblScheduledMaintenanceNestingToTblScheduledMaintena844858350_restrict_del` BEFORE DELETE ON `tblScheduledMaintenanceNesting`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledMaintenanceNesting` WHERE `intParentId` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledMaintenanceNesting';
    END IF;
END;

-- Constraint: fkTblScheduledMaintenancePartToTblAssetViaIntAssetIDAn196016840
CREATE TRIGGER `trg_fkTblScheduledMaintenancePartToTblAssetViaIntAssetIDAn196016840_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblScheduledMaintenancePart` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblScheduledMaintenancePartToTblAssetViaIntPartIDAn1501216245
CREATE TRIGGER `trg_fkTblScheduledMaintenancePartToTblAssetViaIntPartIDAn1501216245_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblScheduledMaintenancePart` WHERE `intTenantID` = OLD.`intTenantID` AND `intPartID` = OLD.`id`;
END;

-- Constraint: fkTblScheduledMaintenancePartToTblScheduledMaintenance240390858
CREATE TRIGGER `trg_fkTblScheduledMaintenancePartToTblScheduledMaintenance240390858_cascade_del` AFTER DELETE ON `tblScheduledMaintenance`
FOR EACH ROW
BEGIN
    DELETE FROM `tblScheduledMaintenancePart` WHERE `intTenantID` = OLD.`intTenantID` AND `intScheduledMaintenanceID` = OLD.`id`;
END;

-- Constraint: fkTblScheduledMaintenancePartToTblStockViaIntStockIDAn468551432
CREATE TRIGGER `trg_fkTblScheduledMaintenancePartToTblStockViaIntStockIDAn468551432_cascade_del` AFTER DELETE ON `tblStock`
FOR EACH ROW
BEGIN
    DELETE FROM `tblScheduledMaintenancePart` WHERE `intTenantID` = OLD.`intTenantID` AND `intStockID` = OLD.`id`;
END;

-- Constraint: fkTblScheduledMaintenanceUserToTblScheduledMaintenance414386594
CREATE TRIGGER `trg_fkTblScheduledMaintenanceUserToTblScheduledMaintenance414386594_cascade_del` AFTER DELETE ON `tblScheduledMaintenance`
FOR EACH ROW
BEGIN
    DELETE FROM `tblScheduledMaintenanceUser` WHERE `intTenantID` = OLD.`intTenantID` AND `intScheduledMaintenanceID` = OLD.`id`;
END;

-- Constraint: fkTblScheduledMaintenanceUserToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblScheduledMaintenanceUserToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledMaintenanceUser` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledMaintenanceUser';
    END IF;
END;

-- Constraint: fkTblScheduledReportToTblReportPresetViaIntReportPresetID
CREATE TRIGGER `trg_fkTblScheduledReportToTblReportPresetViaIntReportPresetID_cascade_del` AFTER DELETE ON `tblReportPreset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblScheduledReport` WHERE `intReportPresetID` = OLD.`id`;
END;

-- Constraint: fkTblScheduledReportToTblUserViaIntCreatorID
CREATE TRIGGER `trg_fkTblScheduledReportToTblUserViaIntCreatorID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblScheduledReport` WHERE `intCreatorID` = OLD.`id`;
END;

-- Constraint: fkTblScheduledReportUserToTblScheduledReportViaIntSche380863882
CREATE TRIGGER `trg_fkTblScheduledReportUserToTblScheduledReportViaIntSche380863882_cascade_del` AFTER DELETE ON `tblScheduledReport`
FOR EACH ROW
BEGIN
    DELETE FROM `tblScheduledReportUser` WHERE `intScheduledReportID` = OLD.`id`;
END;

-- Constraint: fkTblScheduledReportUserToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblScheduledReportUserToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledReportUser` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledReportUser';
    END IF;
END;

-- Constraint: fkTblScheduledTaskToTblAssetViaIntAssetIDAndIntTenantID
CREATE TRIGGER `trg_fkTblScheduledTaskToTblAssetViaIntAssetIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblScheduledTask` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblScheduledTaskToTblMeterReadingUnitViaIntMeterRea2123827089
CREATE TRIGGER `trg_fkTblScheduledTaskToTblMeterReadingUnitViaIntMeterRea2123827089_restrict_del` BEFORE DELETE ON `tblMeterReadingUnit`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledTask` WHERE `intTenantID` = OLD.`intTenantID` AND `intMeterReadingUnitID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledTask';
    END IF;
END;

-- Constraint: fkTblScheduledTaskToTblScheduledMaintenanceNestingVia1548474820
CREATE TRIGGER `trg_fkTblScheduledTaskToTblScheduledMaintenanceNestingVia1548474820_restrict_del` BEFORE DELETE ON `tblScheduledMaintenanceNesting`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledTask` WHERE `intScheduledMaintenanceNestingID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledTask';
    END IF;
END;

-- Constraint: fkTblScheduledTaskToTblScheduledMaintenanceViaIntSche1314218161
CREATE TRIGGER `trg_fkTblScheduledTaskToTblScheduledMaintenanceViaIntSche1314218161_cascade_del` AFTER DELETE ON `tblScheduledMaintenance`
FOR EACH ROW
BEGIN
    DELETE FROM `tblScheduledTask` WHERE `intTenantID` = OLD.`intTenantID` AND `intScheduledMaintenanceID` = OLD.`id`;
END;

-- Constraint: fkTblScheduledTaskToTblScheduledTaskViaIntParentSched1434415465
CREATE TRIGGER `trg_fkTblScheduledTaskToTblScheduledTaskViaIntParentSched1434415465_cascade_del` AFTER DELETE ON `tblScheduledTask`
FOR EACH ROW
BEGIN
    DELETE FROM `tblScheduledTask` WHERE `intTenantID` = OLD.`intTenantID` AND `intParentScheduledTaskID` = OLD.`id`;
END;

-- Constraint: fkTblScheduledTaskToTblTaskGroupAssetCategoryViaIntTas177913541
CREATE TRIGGER `trg_fkTblScheduledTaskToTblTaskGroupAssetCategoryViaIntTas177913541_restrict_del` BEFORE DELETE ON `tblTaskGroupAssetCategory`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledTask` WHERE `intTaskGroupAssetCategoryControlID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledTask';
    END IF;
END;

-- Constraint: fkTblScheduledTaskToTblTaskGroupViaIntTaskGroupControlID
CREATE TRIGGER `trg_fkTblScheduledTaskToTblTaskGroupViaIntTaskGroupControlID_restrict_del` BEFORE DELETE ON `tblTaskGroup`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledTask` WHERE `intTaskGroupControlID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledTask';
    END IF;
END;

-- Constraint: fkTblScheduledTaskToTblTaskViaIntTaskControlID
CREATE TRIGGER `trg_fkTblScheduledTaskToTblTaskViaIntTaskControlID_restrict_del` BEFORE DELETE ON `tblTask`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledTask` WHERE `intTaskControlID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledTask';
    END IF;
END;

-- Constraint: fkTblScheduledTaskToTblUserViaIntAssignedToUserID
CREATE TRIGGER `trg_fkTblScheduledTaskToTblUserViaIntAssignedToUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledTask` WHERE `intAssignedToUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledTask';
    END IF;
END;

-- Constraint: fkTblScheduledTaskFileToTblFileViaIntFileIDAndIntTenantID
CREATE TRIGGER `trg_fkTblScheduledTaskFileToTblFileViaIntFileIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblFile`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduledTaskFile` WHERE `intTenantID` = OLD.`intTenantID` AND `intFileID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduledTaskFile';
    END IF;
END;

-- Constraint: fkTblScheduledTaskFileToTblScheduledTaskViaIntSchedule960741179
CREATE TRIGGER `trg_fkTblScheduledTaskFileToTblScheduledTaskViaIntSchedule960741179_cascade_del` AFTER DELETE ON `tblScheduledTask`
FOR EACH ROW
BEGIN
    DELETE FROM `tblScheduledTaskFile` WHERE `intTenantID` = OLD.`intTenantID` AND `intScheduledTaskID` = OLD.`id`;
END;

-- Constraint: fkTblScheduleTriggerToTblAssetEventTypeViaIntAssetEventTypeID
CREATE TRIGGER `trg_fkTblScheduleTriggerToTblAssetEventTypeViaIntAssetEventTypeID_restrict_del` BEFORE DELETE ON `tblAssetEventType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduleTrigger` WHERE `intAssetEventTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduleTrigger';
    END IF;
END;

-- Constraint: fkTblScheduleTriggerToTblAssetViaIntAssetID
CREATE TRIGGER `trg_fkTblScheduleTriggerToTblAssetViaIntAssetID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblScheduleTrigger` WHERE `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblScheduleTriggerToTblMeterReadingUnitViaIntRMeter2093417039
CREATE TRIGGER `trg_fkTblScheduleTriggerToTblMeterReadingUnitViaIntRMeter2093417039_restrict_del` BEFORE DELETE ON `tblMeterReadingUnit`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduleTrigger` WHERE `intRMeterReadingUnitID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduleTrigger';
    END IF;
END;

-- Constraint: fkTblScheduleTriggerToTblMeterReadingUnitViaIntROMete1589245054
CREATE TRIGGER `trg_fkTblScheduleTriggerToTblMeterReadingUnitViaIntROMete1589245054_restrict_del` BEFORE DELETE ON `tblMeterReadingUnit`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblScheduleTrigger` WHERE `intROMeterReadingUnitID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblScheduleTrigger';
    END IF;
END;

-- Constraint: fkTblScheduleTriggerToTblScheduledMaintenanceViaIntSch771186307
CREATE TRIGGER `trg_fkTblScheduleTriggerToTblScheduledMaintenanceViaIntSch771186307_cascade_del` AFTER DELETE ON `tblScheduledMaintenance`
FOR EACH ROW
BEGIN
    DELETE FROM `tblScheduleTrigger` WHERE `intScheduledMaintenanceID` = OLD.`id`;
END;

-- Constraint: fkTblSiteAvailabilityToTblAssetViaIntAllowedSiteID
CREATE TRIGGER `trg_fkTblSiteAvailabilityToTblAssetViaIntAllowedSiteID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblSiteAvailability` WHERE `intAllowedSiteID` = OLD.`id`;
END;

-- Constraint: fkTblSiteAvailabilityToTblAssetViaIntOriginSiteID
CREATE TRIGGER `trg_fkTblSiteAvailabilityToTblAssetViaIntOriginSiteID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblSiteAvailability` WHERE `intOriginSiteID` = OLD.`id`;
END;

-- Constraint: fkTblSiteSettingToTblAssetViaIntSiteID
CREATE TRIGGER `trg_fkTblSiteSettingToTblAssetViaIntSiteID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblSiteSetting` WHERE `intSiteID` = OLD.`id`;
END;

-- Constraint: fkTblSiteStockToTblAssetViaIntAssetIDAndIntTenantID
CREATE TRIGGER `trg_fkTblSiteStockToTblAssetViaIntAssetIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblSiteStock` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblSiteStockToTblAssetViaIntFacilityIDAndIntTenantID
CREATE TRIGGER `trg_fkTblSiteStockToTblAssetViaIntFacilityIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblSiteStock` WHERE `intTenantID` = OLD.`intTenantID` AND `intFacilityID` = OLD.`id`;
END;

-- Constraint: fkTblSiteUserToTblAssetViaIntSiteIDAndIntTenantID
CREATE TRIGGER `trg_fkTblSiteUserToTblAssetViaIntSiteIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblSiteUser` WHERE `intTenantID` = OLD.`intTenantID` AND `intSiteID` = OLD.`id`;
END;

-- Constraint: fkTblSiteUserToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblSiteUserToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblSiteUser` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblSiteUserGroupToTblSiteUserViaIntSiteUserIDAndIntTenantID
CREATE TRIGGER `trg_fkTblSiteUserGroupToTblSiteUserViaIntSiteUserIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblSiteUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblSiteUserGroup` WHERE `intTenantID` = OLD.`intTenantID` AND `intSiteUserID` = OLD.`id`;
END;

-- Constraint: fkTblSiteUserGroupToTblUserViaIntGroupID
CREATE TRIGGER `trg_fkTblSiteUserGroupToTblUserViaIntGroupID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblSiteUserGroup` WHERE `intGroupID` = OLD.`id`;
END;

-- Constraint: fkTblStockToTblAssetViaIntAssetIDAndIntTenantID
CREATE TRIGGER `trg_fkTblStockToTblAssetViaIntAssetIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblStock` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblStockToTblAssetViaIntFacilityIDAndIntTenantID
CREATE TRIGGER `trg_fkTblStockToTblAssetViaIntFacilityIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblStock` WHERE `intTenantID` = OLD.`intTenantID` AND `intFacilityID` = OLD.`id`;
END;

-- Constraint: fkTblStockAdjustmentItemToTblStockViaIntStockID
CREATE TRIGGER `trg_fkTblStockAdjustmentItemToTblStockViaIntStockID_cascade_del` AFTER DELETE ON `tblStock`
FOR EACH ROW
BEGIN
    DELETE FROM `tblStockAdjustmentItem` WHERE `intStockID` = OLD.`id`;
END;

-- Constraint: fkTblStockAdjustmentItemToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblStockAdjustmentItemToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblStockAdjustmentItem` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblStockAdjustmentItem';
    END IF;
END;

-- Constraint: fkTblStockCycleCountToTblCycleCountViaIntCycleCountIDA797288248
CREATE TRIGGER `trg_fkTblStockCycleCountToTblCycleCountViaIntCycleCountIDA797288248_cascade_del` AFTER DELETE ON `tblCycleCount`
FOR EACH ROW
BEGIN
    DELETE FROM `tblStockCycleCount` WHERE `intTenantID` = OLD.`intTenantID` AND `intCycleCountID` = OLD.`id`;
END;

-- Constraint: fkTblStockCycleCountToTblStockViaIntStockIDAndIntTenantID
CREATE TRIGGER `trg_fkTblStockCycleCountToTblStockViaIntStockIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblStock`
FOR EACH ROW
BEGIN
    DELETE FROM `tblStockCycleCount` WHERE `intTenantID` = OLD.`intTenantID` AND `intStockID` = OLD.`id`;
END;

-- Constraint: fkTblStockCycleCountToTblUserViaIntCountedBy
CREATE TRIGGER `trg_fkTblStockCycleCountToTblUserViaIntCountedBy_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblStockCycleCount` WHERE `intCountedBy` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblStockCycleCount';
    END IF;
END;

-- Constraint: fkTblStockHistoryToTblStockViaIntStockID
CREATE TRIGGER `trg_fkTblStockHistoryToTblStockViaIntStockID_cascade_del` AFTER DELETE ON `tblStock`
FOR EACH ROW
BEGIN
    DELETE FROM `tblStockHistory` WHERE `intStockID` = OLD.`id`;
END;

-- Constraint: fkTblStockHistoryToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblStockHistoryToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblStockHistory` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblStockHistory';
    END IF;
END;

-- Constraint: fkTblStockPurchaseItemToTblAssetViaIntAssetID
CREATE TRIGGER `trg_fkTblStockPurchaseItemToTblAssetViaIntAssetID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblStockPurchaseItem` WHERE `intAssetID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblStockPurchaseItem';
    END IF;
END;

-- Constraint: fkTblStockPurchaseItemToTblBusinessViaIntBusinessID
CREATE TRIGGER `trg_fkTblStockPurchaseItemToTblBusinessViaIntBusinessID_restrict_del` BEFORE DELETE ON `tblBusiness`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblStockPurchaseItem` WHERE `intBusinessID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblStockPurchaseItem';
    END IF;
END;

-- Constraint: fkTblStockPurchaseItemToTblStockViaIntStockID
CREATE TRIGGER `trg_fkTblStockPurchaseItemToTblStockViaIntStockID_cascade_del` AFTER DELETE ON `tblStock`
FOR EACH ROW
BEGIN
    DELETE FROM `tblStockPurchaseItem` WHERE `intStockID` = OLD.`id`;
END;

-- Constraint: fkTblStockPurchaseItemToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblStockPurchaseItemToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblStockPurchaseItem` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblStockPurchaseItem';
    END IF;
END;

-- Constraint: fkTblSubscriptionPlanToTblQuoteViaIntQuoteID
CREATE TRIGGER `trg_fkTblSubscriptionPlanToTblQuoteViaIntQuoteID_restrict_del` BEFORE DELETE ON `tblQuote`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblSubscriptionPlan` WHERE `intQuoteID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblSubscriptionPlan';
    END IF;
END;

-- Constraint: fkTblSubscriptionPlanToTblSubscriptionPlanViaIntReplac185297517
CREATE TRIGGER `trg_fkTblSubscriptionPlanToTblSubscriptionPlanViaIntReplac185297517_restrict_del` BEFORE DELETE ON `tblSubscriptionPlan`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblSubscriptionPlan` WHERE `intReplacedBySubscriptionPlanID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblSubscriptionPlan';
    END IF;
END;

-- Constraint: fkTblSubscriptionPlanToTblUserViaIntCreatedByUserID
CREATE TRIGGER `trg_fkTblSubscriptionPlanToTblUserViaIntCreatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblSubscriptionPlan` WHERE `intCreatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblSubscriptionPlan';
    END IF;
END;

-- Constraint: fkTblSystemMessageUserToTblMessageViaIntMessageID
CREATE TRIGGER `trg_fkTblSystemMessageUserToTblMessageViaIntMessageID_cascade_del` AFTER DELETE ON `tblMessage`
FOR EACH ROW
BEGIN
    DELETE FROM `tblSystemMessageUser` WHERE `intMessageID` = OLD.`id`;
END;

-- Constraint: fkTblSystemMessageUserToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblSystemMessageUserToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblSystemMessageUser` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblSystemSettingToTblWorkOrderStatusViaIntDefaultWo1393144001
CREATE TRIGGER `trg_fkTblSystemSettingToTblWorkOrderStatusViaIntDefaultWo1393144001_restrict_del` BEFORE DELETE ON `tblWorkOrderStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblSystemSetting` WHERE `intDefaultWorkRequestStatusID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblSystemSetting';
    END IF;
END;

-- Constraint: fkTblSystemSettingToTblWorkOrderStatusViaIntDefaultWork81959358
CREATE TRIGGER `trg_fkTblSystemSettingToTblWorkOrderStatusViaIntDefaultWork81959358_restrict_del` BEFORE DELETE ON `tblWorkOrderStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblSystemSetting` WHERE `intDefaultWorkOrderStatusID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblSystemSetting';
    END IF;
END;

-- Constraint: fkTblTaskToTblMeterReadingUnitViaIntMeterReadingUnitID
CREATE TRIGGER `trg_fkTblTaskToTblMeterReadingUnitViaIntMeterReadingUnitID_restrict_del` BEFORE DELETE ON `tblMeterReadingUnit`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTask` WHERE `intMeterReadingUnitID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTask';
    END IF;
END;

-- Constraint: fkTblTaskToTblTaskGroupViaIntTaskGroupID
CREATE TRIGGER `trg_fkTblTaskToTblTaskGroupViaIntTaskGroupID_restrict_del` BEFORE DELETE ON `tblTaskGroup`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTask` WHERE `intTaskGroupID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTask';
    END IF;
END;

-- Constraint: fkTblTaskFileToTblFileViaIntFileIDAndIntTenantID
CREATE TRIGGER `trg_fkTblTaskFileToTblFileViaIntFileIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblFile`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTaskFile` WHERE `intTenantID` = OLD.`intTenantID` AND `intFileID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTaskFile';
    END IF;
END;

-- Constraint: fkTblTaskFileToTblTaskViaIntTaskID
CREATE TRIGGER `trg_fkTblTaskFileToTblTaskViaIntTaskID_cascade_del` AFTER DELETE ON `tblTask`
FOR EACH ROW
BEGIN
    DELETE FROM `tblTaskFile` WHERE `intTaskID` = OLD.`id`;
END;

-- Constraint: fkTblTaskGroupToTblUserViaIntCreatedByUserID
CREATE TRIGGER `trg_fkTblTaskGroupToTblUserViaIntCreatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTaskGroup` WHERE `intCreatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTaskGroup';
    END IF;
END;

-- Constraint: fkTblTaskGroupToTblUserViaIntLastUpdatedByUserID
CREATE TRIGGER `trg_fkTblTaskGroupToTblUserViaIntLastUpdatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTaskGroup` WHERE `intLastUpdatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTaskGroup';
    END IF;
END;

-- Constraint: fkTblTaskGroupAssetCategoryToTblAssetCategoryViaIntAss845664912
CREATE TRIGGER `trg_fkTblTaskGroupAssetCategoryToTblAssetCategoryViaIntAss845664912_cascade_del` AFTER DELETE ON `tblAssetCategory`
FOR EACH ROW
BEGIN
    DELETE FROM `tblTaskGroupAssetCategory` WHERE `intAssetCategoryID` = OLD.`id`;
END;

-- Constraint: fkTblTaskGroupAssetCategoryToTblTaskGroupViaIntTaskGroupID
CREATE TRIGGER `trg_fkTblTaskGroupAssetCategoryToTblTaskGroupViaIntTaskGroupID_cascade_del` AFTER DELETE ON `tblTaskGroup`
FOR EACH ROW
BEGIN
    DELETE FROM `tblTaskGroupAssetCategory` WHERE `intTaskGroupID` = OLD.`id`;
END;

-- Constraint: fkTblTaskResultConfigurationToTblTaskResultValueViaIn1584196194
CREATE TRIGGER `trg_fkTblTaskResultConfigurationToTblTaskResultValueViaIn1584196194_cascade_del` AFTER DELETE ON `tblTaskResultValue`
FOR EACH ROW
BEGIN
    DELETE FROM `tblTaskResultConfiguration` WHERE `intTaskResultValueID` = OLD.`id`;
END;

-- Constraint: fkTblTaskResultValueToTblScheduledTaskViaIntScheduledTaskID
CREATE TRIGGER `trg_fkTblTaskResultValueToTblScheduledTaskViaIntScheduledTaskID_cascade_del` AFTER DELETE ON `tblScheduledTask`
FOR EACH ROW
BEGIN
    DELETE FROM `tblTaskResultValue` WHERE `intScheduledTaskID` = OLD.`id`;
END;

-- Constraint: fkTblTaskResultValueToTblTaskViaIntTaskID
CREATE TRIGGER `trg_fkTblTaskResultValueToTblTaskViaIntTaskID_cascade_del` AFTER DELETE ON `tblTask`
FOR EACH ROW
BEGIN
    DELETE FROM `tblTaskResultValue` WHERE `intTaskID` = OLD.`id`;
END;

-- Constraint: fkTblTaskResultValueToTblWorkOrderTaskViaIntWorkOrder1013594236
CREATE TRIGGER `trg_fkTblTaskResultValueToTblWorkOrderTaskViaIntWorkOrder1013594236_cascade_del` AFTER DELETE ON `tblWorkOrderTask`
FOR EACH ROW
BEGIN
    DELETE FROM `tblTaskResultValue` WHERE `intTenantID` = OLD.`intTenantID` AND `intWorkOrderTaskID` = OLD.`id`;
END;

-- Constraint: fkTblTemplateToTblTemplateCategoryViaIntTemplateCategoryID
CREATE TRIGGER `trg_fkTblTemplateToTblTemplateCategoryViaIntTemplateCategoryID_restrict_del` BEFORE DELETE ON `tblTemplateCategory`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTemplate` WHERE `intTemplateCategoryID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTemplate';
    END IF;
END;

-- Constraint: fkTblTenantDistributionCampaignToTblDistributionViaIn1248073008
CREATE TRIGGER `trg_fkTblTenantDistributionCampaignToTblDistributionViaIn1248073008_cascade_del` AFTER DELETE ON `tblDistribution`
FOR EACH ROW
BEGIN
    DELETE FROM `tblTenantDistributionCampaign` WHERE `intDistributionID` = OLD.`id`;
END;

-- Constraint: fkTblTenantFeatureToTblUserViaIntCreatedByUserID
CREATE TRIGGER `trg_fkTblTenantFeatureToTblUserViaIntCreatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTenantFeature` WHERE `intCreatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTenantFeature';
    END IF;
END;

-- Constraint: fkTblTenantFeatureToTblUserViaIntUpdatedByUserID
CREATE TRIGGER `trg_fkTblTenantFeatureToTblUserViaIntUpdatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTenantFeature` WHERE `intUpdatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTenantFeature';
    END IF;
END;

-- Constraint: fkTblTenantLineItemToTblOrderViaIntReferenceOrderID
CREATE TRIGGER `trg_fkTblTenantLineItemToTblOrderViaIntReferenceOrderID_cascade_del` AFTER DELETE ON `tblOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblTenantLineItem` WHERE `intReferenceOrderID` = OLD.`id`;
END;

-- Constraint: fkTblTenantLineItemToTblTenantOrderViaIntTenantOrderID
CREATE TRIGGER `trg_fkTblTenantLineItemToTblTenantOrderViaIntTenantOrderID_cascade_del` AFTER DELETE ON `tblTenantOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblTenantLineItem` WHERE `intTenantOrderID` = OLD.`id`;
END;

-- Constraint: fkTblTenantLineItemToTblUserViaIntUpdatedByUserID
CREATE TRIGGER `trg_fkTblTenantLineItemToTblUserViaIntUpdatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTenantLineItem` WHERE `intUpdatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTenantLineItem';
    END IF;
END;

-- Constraint: fkTblTenantOrderToTblPaymentProfileViaIntPaymentProfileID
CREATE TRIGGER `trg_fkTblTenantOrderToTblPaymentProfileViaIntPaymentProfileID_restrict_del` BEFORE DELETE ON `tblPaymentProfile`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTenantOrder` WHERE `intPaymentProfileID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTenantOrder';
    END IF;
END;

-- Constraint: fkTblTenantTransactionToTblPaymentProfileViaIntPaymentProfileID
CREATE TRIGGER `trg_fkTblTenantTransactionToTblPaymentProfileViaIntPaymentProfileID_restrict_del` BEFORE DELETE ON `tblPaymentProfile`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTenantTransaction` WHERE `intPaymentProfileID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTenantTransaction';
    END IF;
END;

-- Constraint: fkTblTenantTransactionToTblTenantOrderViaIntTenantOrderID
CREATE TRIGGER `trg_fkTblTenantTransactionToTblTenantOrderViaIntTenantOrderID_restrict_del` BEFORE DELETE ON `tblTenantOrder`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTenantTransaction` WHERE `intTenantOrderID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTenantTransaction';
    END IF;
END;

-- Constraint: fkTblTenantTransactionToTblUserViaIntPaidByUserID
CREATE TRIGGER `trg_fkTblTenantTransactionToTblUserViaIntPaidByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTenantTransaction` WHERE `intPaidByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTenantTransaction';
    END IF;
END;

-- Constraint: fkTblTestingBlackToTblTestingBlackViaIntBlackCascadeID
CREATE TRIGGER `trg_fkTblTestingBlackToTblTestingBlackViaIntBlackCascadeID_restrict_del` BEFORE DELETE ON `tblTestingBlack`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTestingBlack` WHERE `intBlackCascadeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTestingBlack';
    END IF;
END;

-- Constraint: fkTblTestingBlackToTblTestingBlackViaIntBlackRestrictID
CREATE TRIGGER `trg_fkTblTestingBlackToTblTestingBlackViaIntBlackRestrictID_restrict_del` BEFORE DELETE ON `tblTestingBlack`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTestingBlack` WHERE `intBlackRestrictID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTestingBlack';
    END IF;
END;

-- Constraint: fkTblTestingBlackToTblTestingBlackViaIntBlackSetNullID
CREATE TRIGGER `trg_fkTblTestingBlackToTblTestingBlackViaIntBlackSetNullID_restrict_del` BEFORE DELETE ON `tblTestingBlack`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTestingBlack` WHERE `intBlackSetNullID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTestingBlack';
    END IF;
END;

-- Constraint: fkTblTestingBlackToTblTestingWhiteCViaIntWhiteCascadeID
CREATE TRIGGER `trg_fkTblTestingBlackToTblTestingWhiteCViaIntWhiteCascadeID_restrict_del` BEFORE DELETE ON `tblTestingWhiteC`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTestingBlack` WHERE `intWhiteCascadeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTestingBlack';
    END IF;
END;

-- Constraint: fkTblTestingRedCToTblTestingBlackViaIntBlackCascadeID
CREATE TRIGGER `trg_fkTblTestingRedCToTblTestingBlackViaIntBlackCascadeID_restrict_del` BEFORE DELETE ON `tblTestingBlack`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTestingRedC` WHERE `intBlackCascadeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTestingRedC';
    END IF;
END;

-- Constraint: fkTblTestingRedCToTblTestingBlackViaIntBlackRestrictID
CREATE TRIGGER `trg_fkTblTestingRedCToTblTestingBlackViaIntBlackRestrictID_restrict_del` BEFORE DELETE ON `tblTestingBlack`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTestingRedC` WHERE `intBlackRestrictID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTestingRedC';
    END IF;
END;

-- Constraint: fkTblTestingRedCToTblTestingBlackViaIntBlackSetNullID
CREATE TRIGGER `trg_fkTblTestingRedCToTblTestingBlackViaIntBlackSetNullID_restrict_del` BEFORE DELETE ON `tblTestingBlack`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTestingRedC` WHERE `intBlackSetNullID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTestingRedC';
    END IF;
END;

-- Constraint: fkTblTestingRedCToTblTestingWhiteCViaIntWhiteCCascadeID
CREATE TRIGGER `trg_fkTblTestingRedCToTblTestingWhiteCViaIntWhiteCCascadeID_restrict_del` BEFORE DELETE ON `tblTestingWhiteC`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTestingRedC` WHERE `intWhiteCCascadeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTestingRedC';
    END IF;
END;

-- Constraint: fkTblTestingRedCToTblTestingWhiteCViaIntWhiteCRestrictID
CREATE TRIGGER `trg_fkTblTestingRedCToTblTestingWhiteCViaIntWhiteCRestrictID_restrict_del` BEFORE DELETE ON `tblTestingWhiteC`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTestingRedC` WHERE `intWhiteCRestrictID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTestingRedC';
    END IF;
END;

-- Constraint: fkTblTestingRedCToTblTestingWhiteCViaIntWhiteCSetNullID
CREATE TRIGGER `trg_fkTblTestingRedCToTblTestingWhiteCViaIntWhiteCSetNullID_restrict_del` BEFORE DELETE ON `tblTestingWhiteC`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTestingRedC` WHERE `intWhiteCSetNullID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTestingRedC';
    END IF;
END;

-- Constraint: fkTblTestingWhiteCToTblTestingBlackViaIntBlackCascadeID
CREATE TRIGGER `trg_fkTblTestingWhiteCToTblTestingBlackViaIntBlackCascadeID_restrict_del` BEFORE DELETE ON `tblTestingBlack`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTestingWhiteC` WHERE `intBlackCascadeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTestingWhiteC';
    END IF;
END;

-- Constraint: fkTblTestingYellowToTblTestingBlackViaIntBlackCascadeID
CREATE TRIGGER `trg_fkTblTestingYellowToTblTestingBlackViaIntBlackCascadeID_restrict_del` BEFORE DELETE ON `tblTestingBlack`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTestingYellow` WHERE `intBlackCascadeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTestingYellow';
    END IF;
END;

-- Constraint: fkTblTestingYellowToTblTestingBlackViaIntBlackRestrictID
CREATE TRIGGER `trg_fkTblTestingYellowToTblTestingBlackViaIntBlackRestrictID_restrict_del` BEFORE DELETE ON `tblTestingBlack`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTestingYellow` WHERE `intBlackRestrictID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTestingYellow';
    END IF;
END;

-- Constraint: fkTblTestingYellowToTblTestingBlackViaIntBlackSetNullID
CREATE TRIGGER `trg_fkTblTestingYellowToTblTestingBlackViaIntBlackSetNullID_restrict_del` BEFORE DELETE ON `tblTestingBlack`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTestingYellow` WHERE `intBlackSetNullID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTestingYellow';
    END IF;
END;

-- Constraint: fkTblTestingYellowToTblTestingWhiteCViaIntWhiteCCascadeID
CREATE TRIGGER `trg_fkTblTestingYellowToTblTestingWhiteCViaIntWhiteCCascadeID_restrict_del` BEFORE DELETE ON `tblTestingWhiteC`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTestingYellow` WHERE `intWhiteCCascadeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTestingYellow';
    END IF;
END;

-- Constraint: fkTblTestingYellowToTblTestingWhiteCViaIntWhiteCRestrictID
CREATE TRIGGER `trg_fkTblTestingYellowToTblTestingWhiteCViaIntWhiteCRestrictID_restrict_del` BEFORE DELETE ON `tblTestingWhiteC`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTestingYellow` WHERE `intWhiteCRestrictID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTestingYellow';
    END IF;
END;

-- Constraint: fkTblTestingYellowToTblTestingWhiteCViaIntWhiteCSetNullID
CREATE TRIGGER `trg_fkTblTestingYellowToTblTestingWhiteCViaIntWhiteCSetNullID_restrict_del` BEFORE DELETE ON `tblTestingWhiteC`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblTestingYellow` WHERE `intWhiteCSetNullID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblTestingYellow';
    END IF;
END;

-- Constraint: fkTblTestTableToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblTestTableToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblTestTable` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblUicProfileToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblUicProfileToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblUicProfile` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblUicProfile';
    END IF;
END;

-- Constraint: fkTblUserToTblSSOImplementationViaIntSSOImplementationID
CREATE TRIGGER `trg_fkTblUserToTblSSOImplementationViaIntSSOImplementationID_restrict_del` BEFORE DELETE ON `tblSSOImplementation`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblUser` WHERE `intSSOImplementationID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblUser';
    END IF;
END;

-- Constraint: fkTblUserAnalyticsPermissionToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblUserAnalyticsPermissionToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblUserAnalyticsPermission` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblUserApiConsumerPermissionToTblApiConsumerViaIntA1679822146
CREATE TRIGGER `trg_fkTblUserApiConsumerPermissionToTblApiConsumerViaIntA1679822146_cascade_del` AFTER DELETE ON `tblApiConsumer`
FOR EACH ROW
BEGIN
    DELETE FROM `tblUserApiConsumerPermission` WHERE `intApiConsumerID` = OLD.`id`;
END;

-- Constraint: fkTblUserApiConsumerPermissionToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblUserApiConsumerPermissionToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblUserApiConsumerPermission` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblUserCertificationToTblCertificationViaIntCertificationID
CREATE TRIGGER `trg_fkTblUserCertificationToTblCertificationViaIntCertificationID_restrict_del` BEFORE DELETE ON `tblCertification`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblUserCertification` WHERE `intCertificationID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblUserCertification';
    END IF;
END;

-- Constraint: fkTblUserCertificationToTblFileContentsViaIntFileContentsID
CREATE TRIGGER `trg_fkTblUserCertificationToTblFileContentsViaIntFileContentsID_restrict_del` BEFORE DELETE ON `tblFileContents`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblUserCertification` WHERE `intFileContentsID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblUserCertification';
    END IF;
END;

-- Constraint: fkTblUserCertificationToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblUserCertificationToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblUserCertification` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblUserClockInOutToTblAssetViaIntFacilityID
CREATE TRIGGER `trg_fkTblUserClockInOutToTblAssetViaIntFacilityID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblUserClockInOut` WHERE `intFacilityID` = OLD.`id`;
END;

-- Constraint: fkTblUserClockInOutToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblUserClockInOutToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblUserClockInOut` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblUserEpicFeatureNoticeToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblUserEpicFeatureNoticeToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblUserEpicFeatureNotice` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblUserEpicFeatureNotice';
    END IF;
END;

-- Constraint: fkTblUserGroupDashboardPersonaToTblUserViaIntUserGroupID
CREATE TRIGGER `trg_fkTblUserGroupDashboardPersonaToTblUserViaIntUserGroupID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblUserGroupDashboardPersona` WHERE `intUserGroupID` = OLD.`id`;
END;

-- Constraint: fkTblUserMASourceStartToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblUserMASourceStartToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblUserMASourceStart` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblUserMASourceStart';
    END IF;
END;

-- Constraint: fkTblUserMilestoneToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblUserMilestoneToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblUserMilestone` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblUserPermissionToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblUserPermissionToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblUserPermission` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblUserPermission';
    END IF;
END;

-- Constraint: fkTblUserPurchaseOrderStatusTransitionPermissionToTbl1230136470
CREATE TRIGGER `trg_fkTblUserPurchaseOrderStatusTransitionPermissionToTbl1230136470_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblUserPurchaseOrderStatusTransitionPermission` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblUserPurchaseOrderStatusTransitionPermission';
    END IF;
END;

-- Constraint: fkTblUserPurchaseOrderStatusTransitionPermissionToTblP105693494
CREATE TRIGGER `trg_fkTblUserPurchaseOrderStatusTransitionPermissionToTblP105693494_restrict_del` BEFORE DELETE ON `tblPurchaseOrderStatusTransitionPermission`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblUserPurchaseOrderStatusTransitionPermission` WHERE `intPermissionID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblUserPurchaseOrderStatusTransitionPermission';
    END IF;
END;

-- Constraint: fkTblUserReportsToUserToTblUserViaIntReportsToID
CREATE TRIGGER `trg_fkTblUserReportsToUserToTblUserViaIntReportsToID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblUserReportsToUser` WHERE `intReportsToID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblUserReportsToUser';
    END IF;
END;

-- Constraint: fkTblUserReportsToUserToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblUserReportsToUserToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblUserReportsToUser` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblUserReportsToUser';
    END IF;
END;

-- Constraint: fkTblUserRoleToTblRoleViaIntRoleIDAndIntTenantID
CREATE TRIGGER `trg_fkTblUserRoleToTblRoleViaIntRoleIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblRole`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblUserRole` WHERE `intTenantID` = OLD.`intTenantID` AND `intRoleID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblUserRole';
    END IF;
END;

-- Constraint: fkTblUserRoleToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblUserRoleToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblUserRole` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblUserRole';
    END IF;
END;

-- Constraint: fkTblUserSettingToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblUserSettingToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblUserSetting` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblUserSystemPropertyToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblUserSystemPropertyToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblUserSystemProperty` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblUserSystemPropertyLogToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblUserSystemPropertyLogToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblUserSystemPropertyLog` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblV6ApiApplicationUserMappingToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblV6ApiApplicationUserMappingToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblV6ApiApplicationUserMapping` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblV6UserDeletionTrackingToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblV6UserDeletionTrackingToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblV6UserDeletionTracking` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblWarrantyToTblAssetViaIntAssetID
CREATE TRIGGER `trg_fkTblWarrantyToTblAssetViaIntAssetID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWarranty` WHERE `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblWarrantyToTblBusinessViaIntProvider
CREATE TRIGGER `trg_fkTblWarrantyToTblBusinessViaIntProvider_restrict_del` BEFORE DELETE ON `tblBusiness`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWarranty` WHERE `intProvider` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWarranty';
    END IF;
END;

-- Constraint: fkTblWarrantyToTblMeterReadingUnitViaIntMeterReadingUnitsID
CREATE TRIGGER `trg_fkTblWarrantyToTblMeterReadingUnitViaIntMeterReadingUnitsID_restrict_del` BEFORE DELETE ON `tblMeterReadingUnit`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWarranty` WHERE `intMeterReadingUnitsID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWarranty';
    END IF;
END;

-- Constraint: fkTblWorkflowToTblUserViaIntCreatedByUserID
CREATE TRIGGER `trg_fkTblWorkflowToTblUserViaIntCreatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkflow` WHERE `intCreatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkflow';
    END IF;
END;

-- Constraint: fkTblWorkflowActivityToTblIntegrationActionViaIntInte1606361302
CREATE TRIGGER `trg_fkTblWorkflowActivityToTblIntegrationActionViaIntInte1606361302_restrict_del` BEFORE DELETE ON `tblIntegrationAction`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkflowActivity` WHERE `intIntegrationActionID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkflowActivity';
    END IF;
END;

-- Constraint: fkTblWorkflowActivityToTblIntegrationViaIntIntegrationID
CREATE TRIGGER `trg_fkTblWorkflowActivityToTblIntegrationViaIntIntegrationID_restrict_del` BEFORE DELETE ON `tblIntegration`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkflowActivity` WHERE `intIntegrationID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkflowActivity';
    END IF;
END;

-- Constraint: fkTblWorkflowActivityToTblUserViaIntCreatedByUserID
CREATE TRIGGER `trg_fkTblWorkflowActivityToTblUserViaIntCreatedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkflowActivity` WHERE `intCreatedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkflowActivity';
    END IF;
END;

-- Constraint: fkTblWorkflowActivityToTblWorkflowActivityViaIntParentWo5804382
CREATE TRIGGER `trg_fkTblWorkflowActivityToTblWorkflowActivityViaIntParentWo5804382_restrict_del` BEFORE DELETE ON `tblWorkflowActivity`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkflowActivity` WHERE `intParentWorkflowActivityID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkflowActivity';
    END IF;
END;

-- Constraint: fkTblWorkflowActivityToTblWorkflowViaIntParentWorkflowID
CREATE TRIGGER `trg_fkTblWorkflowActivityToTblWorkflowViaIntParentWorkflowID_restrict_del` BEFORE DELETE ON `tblWorkflow`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkflowActivity` WHERE `intParentWorkflowID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkflowActivity';
    END IF;
END;

-- Constraint: fkTblWorkflowCommentToTblPurchaseOrderLogViaIntPkPoLogId
CREATE TRIGGER `trg_fkTblWorkflowCommentToTblPurchaseOrderLogViaIntPkPoLogId_restrict_del` BEFORE DELETE ON `tblPurchaseOrderLog`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkflowComment` WHERE `intPkPoLogId` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkflowComment';
    END IF;
END;

-- Constraint: fkTblWorkflowCommentToTblPurchaseOrderViaIntPkPurchaseOrderId
CREATE TRIGGER `trg_fkTblWorkflowCommentToTblPurchaseOrderViaIntPkPurchaseOrderId_restrict_del` BEFORE DELETE ON `tblPurchaseOrder`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkflowComment` WHERE `intPkPurchaseOrderId` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkflowComment';
    END IF;
END;

-- Constraint: fkTblWorkflowCommentToTblUserViaIntCommentedByUser
CREATE TRIGGER `trg_fkTblWorkflowCommentToTblUserViaIntCommentedByUser_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkflowComment` WHERE `intCommentedByUser` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkflowComment';
    END IF;
END;

-- Constraint: fkTblWorkflowExecutionToTblWorkflowViaIntWorkflowID
CREATE TRIGGER `trg_fkTblWorkflowExecutionToTblWorkflowViaIntWorkflowID_restrict_del` BEFORE DELETE ON `tblWorkflow`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkflowExecution` WHERE `intWorkflowID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkflowExecution';
    END IF;
END;

-- Constraint: fkTblWorkOrderToTblAccountViaIntAccountID
CREATE TRIGGER `trg_fkTblWorkOrderToTblAccountViaIntAccountID_restrict_del` BEFORE DELETE ON `tblAccount`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrder` WHERE `intAccountID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrder';
    END IF;
END;

-- Constraint: fkTblWorkOrderToTblAssetViaIntSiteID
CREATE TRIGGER `trg_fkTblWorkOrderToTblAssetViaIntSiteID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrder` WHERE `intSiteID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrder';
    END IF;
END;

-- Constraint: fkTblWorkOrderToTblChargeDepartmentViaIntChargeDepartmentID
CREATE TRIGGER `trg_fkTblWorkOrderToTblChargeDepartmentViaIntChargeDepartmentID_restrict_del` BEFORE DELETE ON `tblChargeDepartment`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrder` WHERE `intChargeDepartmentID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrder';
    END IF;
END;

-- Constraint: fkTblWorkOrderToTblMaintenanceTypeViaIntMaintenanceTyp828088054
CREATE TRIGGER `trg_fkTblWorkOrderToTblMaintenanceTypeViaIntMaintenanceTyp828088054_restrict_del` BEFORE DELETE ON `tblMaintenanceType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrder` WHERE `intTenantID` = OLD.`intTenantID` AND `intMaintenanceTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrder';
    END IF;
END;

-- Constraint: fkTblWorkOrderToTblPriorityViaIntPriorityIDAndIntTenantID
CREATE TRIGGER `trg_fkTblWorkOrderToTblPriorityViaIntPriorityIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblPriority`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrder` WHERE `intTenantID` = OLD.`intTenantID` AND `intPriorityID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrder';
    END IF;
END;

-- Constraint: fkTblWorkOrderToTblProjectViaIntProjectID
CREATE TRIGGER `trg_fkTblWorkOrderToTblProjectViaIntProjectID_restrict_del` BEFORE DELETE ON `tblProject`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrder` WHERE `intProjectID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrder';
    END IF;
END;

-- Constraint: fkTblWorkOrderToTblRCAActionViaIntRCAActionID
CREATE TRIGGER `trg_fkTblWorkOrderToTblRCAActionViaIntRCAActionID_restrict_del` BEFORE DELETE ON `tblRCAAction`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrder` WHERE `intRCAActionID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrder';
    END IF;
END;

-- Constraint: fkTblWorkOrderToTblRCACauseViaIntRCACauseID
CREATE TRIGGER `trg_fkTblWorkOrderToTblRCACauseViaIntRCACauseID_restrict_del` BEFORE DELETE ON `tblRCACause`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrder` WHERE `intRCACauseID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrder';
    END IF;
END;

-- Constraint: fkTblWorkOrderToTblRCAProblemViaIntRCAProblemID
CREATE TRIGGER `trg_fkTblWorkOrderToTblRCAProblemViaIntRCAProblemID_restrict_del` BEFORE DELETE ON `tblRCAProblem`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrder` WHERE `intRCAProblemID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrder';
    END IF;
END;

-- Constraint: fkTblWorkOrderToTblScheduledMaintenanceViaIntSchedule1469603623
CREATE TRIGGER `trg_fkTblWorkOrderToTblScheduledMaintenanceViaIntSchedule1469603623_cascade_del` AFTER DELETE ON `tblScheduledMaintenance`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWorkOrder` WHERE `intScheduledMaintenanceID` = OLD.`id`;
END;

-- Constraint: fkTblWorkOrderToTblUserViaIntCompletedByUserID
CREATE TRIGGER `trg_fkTblWorkOrderToTblUserViaIntCompletedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrder` WHERE `intCompletedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrder';
    END IF;
END;

-- Constraint: fkTblWorkOrderToTblUserViaIntLastModifiedByUserID
CREATE TRIGGER `trg_fkTblWorkOrderToTblUserViaIntLastModifiedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrder` WHERE `intLastModifiedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrder';
    END IF;
END;

-- Constraint: fkTblWorkOrderToTblUserViaIntRequestedByUserID
CREATE TRIGGER `trg_fkTblWorkOrderToTblUserViaIntRequestedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrder` WHERE `intRequestedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrder';
    END IF;
END;

-- Constraint: fkTblWorkOrderToTblUserViaIntSignedByUserID
CREATE TRIGGER `trg_fkTblWorkOrderToTblUserViaIntSignedByUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrder` WHERE `intSignedByUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrder';
    END IF;
END;

-- Constraint: fkTblWorkOrderToTblWorkOrderStatusViaIntWorkOrderStat1525344310
CREATE TRIGGER `trg_fkTblWorkOrderToTblWorkOrderStatusViaIntWorkOrderStat1525344310_restrict_del` BEFORE DELETE ON `tblWorkOrderStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrder` WHERE `intTenantID` = OLD.`intTenantID` AND `intWorkOrderStatusID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrder';
    END IF;
END;

-- Constraint: fkTblWorkOrderToTblWorkOrderTaskViaIntOriginWorkOrderT751519152
CREATE TRIGGER `trg_fkTblWorkOrderToTblWorkOrderTaskViaIntOriginWorkOrderT751519152_restrict_del` BEFORE DELETE ON `tblWorkOrderTask`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrder` WHERE `intTenantID` = OLD.`intTenantID` AND `intOriginWorkOrderTaskID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrder';
    END IF;
END;

-- Constraint: fkTblWorkOrderAssetToTblAssetViaIntAssetIDAndIntTenantID
CREATE TRIGGER `trg_fkTblWorkOrderAssetToTblAssetViaIntAssetIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrderAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrderAsset';
    END IF;
END;

-- Constraint: fkTblWorkOrderAssetToTblWorkOrderViaIntWorkOrderIDAnd2120539310
CREATE TRIGGER `trg_fkTblWorkOrderAssetToTblWorkOrderViaIntWorkOrderIDAnd2120539310_cascade_del` AFTER DELETE ON `tblWorkOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWorkOrderAsset` WHERE `intTenantID` = OLD.`intTenantID` AND `intWorkOrderID` = OLD.`id`;
END;

-- Constraint: fkTblWorkOrderBusinessToTblAssetViaIntAssetIDAndIntTenantID
CREATE TRIGGER `trg_fkTblWorkOrderBusinessToTblAssetViaIntAssetIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWorkOrderBusiness` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblWorkOrderBusinessToTblBusinessGroupViaIntBusines1791499734
CREATE TRIGGER `trg_fkTblWorkOrderBusinessToTblBusinessGroupViaIntBusines1791499734_restrict_del` BEFORE DELETE ON `tblBusinessGroup`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrderBusiness` WHERE `intTenantID` = OLD.`intTenantID` AND `intBusinessGroupID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrderBusiness';
    END IF;
END;

-- Constraint: fkTblWorkOrderBusinessToTblBusinessViaIntBusinessIDAnd866584152
CREATE TRIGGER `trg_fkTblWorkOrderBusinessToTblBusinessViaIntBusinessIDAnd866584152_cascade_del` AFTER DELETE ON `tblBusiness`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWorkOrderBusiness` WHERE `intTenantID` = OLD.`intTenantID` AND `intBusinessID` = OLD.`id`;
END;

-- Constraint: fkTblWorkOrderBusinessToTblWorkOrderViaIntWorkOrderIDA680860950
CREATE TRIGGER `trg_fkTblWorkOrderBusinessToTblWorkOrderViaIntWorkOrderIDA680860950_cascade_del` AFTER DELETE ON `tblWorkOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWorkOrderBusiness` WHERE `intTenantID` = OLD.`intTenantID` AND `intWorkOrderID` = OLD.`id`;
END;

-- Constraint: fkTblWorkOrderLogToTblAssetViaIntAssetID
CREATE TRIGGER `trg_fkTblWorkOrderLogToTblAssetViaIntAssetID_restrict_del` BEFORE DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrderLog` WHERE `intAssetID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrderLog';
    END IF;
END;

-- Constraint: fkTblWorkOrderLogToTblMaintenanceTypeViaIntMaintenanceTypeID
CREATE TRIGGER `trg_fkTblWorkOrderLogToTblMaintenanceTypeViaIntMaintenanceTypeID_restrict_del` BEFORE DELETE ON `tblMaintenanceType`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrderLog` WHERE `intMaintenanceTypeID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrderLog';
    END IF;
END;

-- Constraint: fkTblWorkOrderLogToTblStockViaIntStockID
CREATE TRIGGER `trg_fkTblWorkOrderLogToTblStockViaIntStockID_cascade_del` AFTER DELETE ON `tblStock`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWorkOrderLog` WHERE `intStockID` = OLD.`id`;
END;

-- Constraint: fkTblWorkOrderLogToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblWorkOrderLogToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrderLog` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrderLog';
    END IF;
END;

-- Constraint: fkTblWorkOrderLogToTblWorkOrderViaIntWorkOrderID
CREATE TRIGGER `trg_fkTblWorkOrderLogToTblWorkOrderViaIntWorkOrderID_cascade_del` AFTER DELETE ON `tblWorkOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWorkOrderLog` WHERE `intWorkOrderID` = OLD.`id`;
END;

-- Constraint: fkTblWorkOrderPartToTblAssetViaIntAssetIDAndIntTenantID
CREATE TRIGGER `trg_fkTblWorkOrderPartToTblAssetViaIntAssetIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWorkOrderPart` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblWorkOrderPartToTblAssetViaIntPartIDAndIntTenantID
CREATE TRIGGER `trg_fkTblWorkOrderPartToTblAssetViaIntPartIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWorkOrderPart` WHERE `intTenantID` = OLD.`intTenantID` AND `intPartID` = OLD.`id`;
END;

-- Constraint: fkTblWorkOrderPartToTblStockViaIntStockIDAndIntTenantID
CREATE TRIGGER `trg_fkTblWorkOrderPartToTblStockViaIntStockIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblStock`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWorkOrderPart` WHERE `intTenantID` = OLD.`intTenantID` AND `intStockID` = OLD.`id`;
END;

-- Constraint: fkTblWorkOrderPartToTblWorkOrderViaIntWorkOrderIDAndIntTenantID
CREATE TRIGGER `trg_fkTblWorkOrderPartToTblWorkOrderViaIntWorkOrderIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblWorkOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWorkOrderPart` WHERE `intTenantID` = OLD.`intTenantID` AND `intWorkOrderID` = OLD.`id`;
END;

-- Constraint: fkTblWorkOrderStatusTransitionToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblWorkOrderStatusTransitionToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrderStatusTransition` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrderStatusTransition';
    END IF;
END;

-- Constraint: fkTblWorkOrderStatusTransitionToTblWorkOrderStatusVia1218096616
CREATE TRIGGER `trg_fkTblWorkOrderStatusTransitionToTblWorkOrderStatusVia1218096616_restrict_del` BEFORE DELETE ON `tblWorkOrderStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrderStatusTransition` WHERE `intFromWorkOrderStatusID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrderStatusTransition';
    END IF;
END;

-- Constraint: fkTblWorkOrderStatusTransitionToTblWorkOrderStatusVia1530727113
CREATE TRIGGER `trg_fkTblWorkOrderStatusTransitionToTblWorkOrderStatusVia1530727113_restrict_del` BEFORE DELETE ON `tblWorkOrderStatus`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrderStatusTransition` WHERE `intToWorkOrderStatusID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrderStatusTransition';
    END IF;
END;

-- Constraint: fkTblWorkOrderStatusTransitionToTblWorkOrderViaIntWorkOrderID
CREATE TRIGGER `trg_fkTblWorkOrderStatusTransitionToTblWorkOrderViaIntWorkOrderID_cascade_del` AFTER DELETE ON `tblWorkOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWorkOrderStatusTransition` WHERE `intWorkOrderID` = OLD.`id`;
END;

-- Constraint: fkTblWorkOrderTaskToTblAssetViaIntAssetIDAndIntTenantID
CREATE TRIGGER `trg_fkTblWorkOrderTaskToTblAssetViaIntAssetIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblAsset`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWorkOrderTask` WHERE `intTenantID` = OLD.`intTenantID` AND `intAssetID` = OLD.`id`;
END;

-- Constraint: fkTblWorkOrderTaskToTblMeterReadingUnitViaIntMeterRea1040397185
CREATE TRIGGER `trg_fkTblWorkOrderTaskToTblMeterReadingUnitViaIntMeterRea1040397185_restrict_del` BEFORE DELETE ON `tblMeterReadingUnit`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrderTask` WHERE `intTenantID` = OLD.`intTenantID` AND `intMeterReadingUnitID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrderTask';
    END IF;
END;

-- Constraint: fkTblWorkOrderTaskToTblTaskGroupViaIntTaskGroupControlID
CREATE TRIGGER `trg_fkTblWorkOrderTaskToTblTaskGroupViaIntTaskGroupControlID_restrict_del` BEFORE DELETE ON `tblTaskGroup`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrderTask` WHERE `intTaskGroupControlID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrderTask';
    END IF;
END;

-- Constraint: fkTblWorkOrderTaskToTblTaskResultValueViaIntTaskResultValueID
CREATE TRIGGER `trg_fkTblWorkOrderTaskToTblTaskResultValueViaIntTaskResultValueID_restrict_del` BEFORE DELETE ON `tblTaskResultValue`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrderTask` WHERE `intTaskResultValueID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrderTask';
    END IF;
END;

-- Constraint: fkTblWorkOrderTaskToTblWorkOrderTaskViaIntParentWorkOr530918535
CREATE TRIGGER `trg_fkTblWorkOrderTaskToTblWorkOrderTaskViaIntParentWorkOr530918535_cascade_del` AFTER DELETE ON `tblWorkOrderTask`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWorkOrderTask` WHERE `intTenantID` = OLD.`intTenantID` AND `intParentWorkOrderTaskID` = OLD.`id`;
END;

-- Constraint: fkTblWorkOrderTaskToTblWorkOrderViaIntWorkOrderIDAndIntTenantID
CREATE TRIGGER `trg_fkTblWorkOrderTaskToTblWorkOrderViaIntWorkOrderIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblWorkOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWorkOrderTask` WHERE `intTenantID` = OLD.`intTenantID` AND `intWorkOrderID` = OLD.`id`;
END;

-- Constraint: fkTblWorkOrderTaskAdditionalPropertiesToTblWorkOrderTa906842214
CREATE TRIGGER `trg_fkTblWorkOrderTaskAdditionalPropertiesToTblWorkOrderTa906842214_cascade_del` AFTER DELETE ON `tblWorkOrderTask`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWorkOrderTaskAdditionalProperties` WHERE `intWorkOrderTaskID` = OLD.`id`;
END;

-- Constraint: fkTblWorkOrderTaskFileToTblFileViaIntFileIDAndIntTenantID
CREATE TRIGGER `trg_fkTblWorkOrderTaskFileToTblFileViaIntFileIDAndIntTenantID_restrict_del` BEFORE DELETE ON `tblFile`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrderTaskFile` WHERE `intTenantID` = OLD.`intTenantID` AND `intFileID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrderTaskFile';
    END IF;
END;

-- Constraint: fkTblWorkOrderTaskFileToTblWorkOrderTaskViaIntWorkOrd1293168971
CREATE TRIGGER `trg_fkTblWorkOrderTaskFileToTblWorkOrderTaskViaIntWorkOrd1293168971_cascade_del` AFTER DELETE ON `tblWorkOrderTask`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWorkOrderTaskFile` WHERE `intTenantID` = OLD.`intTenantID` AND `intWorkOrderTaskID` = OLD.`id`;
END;

-- Constraint: fkTblWorkOrderTaskUserToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblWorkOrderTaskUserToTblUserViaIntUserID_cascade_del` AFTER DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWorkOrderTaskUser` WHERE `intUserID` = OLD.`id`;
END;

-- Constraint: fkTblWorkOrderTaskUserToTblWorkOrderTaskViaIntWorkOrderTaskID
CREATE TRIGGER `trg_fkTblWorkOrderTaskUserToTblWorkOrderTaskViaIntWorkOrderTaskID_cascade_del` AFTER DELETE ON `tblWorkOrderTask`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWorkOrderTaskUser` WHERE `intWorkOrderTaskID` = OLD.`id`;
END;

-- Constraint: fkTblWorkOrderUserToTblUserViaIntUserID
CREATE TRIGGER `trg_fkTblWorkOrderUserToTblUserViaIntUserID_restrict_del` BEFORE DELETE ON `tblUser`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM `tblWorkOrderUser` WHERE `intUserID` = OLD.`id` LIMIT 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RESTRICT: Child record exists in tblWorkOrderUser';
    END IF;
END;

-- Constraint: fkTblWorkOrderUserToTblWorkOrderViaIntWorkOrderIDAndIntTenantID
CREATE TRIGGER `trg_fkTblWorkOrderUserToTblWorkOrderViaIntWorkOrderIDAndIntTenantID_cascade_del` AFTER DELETE ON `tblWorkOrder`
FOR EACH ROW
BEGIN
    DELETE FROM `tblWorkOrderUser` WHERE `intTenantID` = OLD.`intTenantID` AND `intWorkOrderID` = OLD.`id`;
END;

