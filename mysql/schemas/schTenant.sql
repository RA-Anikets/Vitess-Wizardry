-- MySQL dump 10.13  Distrib 9.4.0, for macos15.4 (arm64)
--
-- Host: localhost    Database: schTenant
-- ------------------------------------------------------
-- Server version	9.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `schTenant`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `schTenant` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `schTenant`;

--
-- Temporary view structure for view `tblaccount`
--

DROP TABLE IF EXISTS `tblaccount`;
/*!50001 DROP VIEW IF EXISTS `tblaccount`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblaccount` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intUpdated`,
 1 AS `strCode`,
 1 AS `strDescription`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblaccountaddress`
--

DROP TABLE IF EXISTS `tblaccountaddress`;
/*!50001 DROP VIEW IF EXISTS `tblaccountaddress`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblaccountaddress` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDateUpdated`,
 1 AS `intAccountAddressTypeID`,
 1 AS `intCountryID`,
 1 AS `strAddress1`,
 1 AS `strAddress2`,
 1 AS `strAttention`,
 1 AS `strCity`,
 1 AS `strPostalCode`,
 1 AS `strState`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblaccountaddresstype`
--

DROP TABLE IF EXISTS `tblaccountaddresstype`;
/*!50001 DROP VIEW IF EXISTS `tblaccountaddresstype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblaccountaddresstype` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblaccountlog`
--

DROP TABLE IF EXISTS `tblaccountlog`;
/*!50001 DROP VIEW IF EXISTS `tblaccountlog`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblaccountlog` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblDiscount`,
 1 AS `dblTotalPrice`,
 1 AS `dblUnitPrice`,
 1 AS `dtmDate`,
 1 AS `intAccountLogStatusID`,
 1 AS `intAccountLogTypeID`,
 1 AS `intClientSessionID`,
 1 AS `intNumberSeats`,
 1 AS `intProductTierId`,
 1 AS `intRecurringTypeId`,
 1 AS `intUserID`,
 1 AS `strException`,
 1 AS `strKey`,
 1 AS `strNotes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblaccountlogdiscount`
--

DROP TABLE IF EXISTS `tblaccountlogdiscount`;
/*!50001 DROP VIEW IF EXISTS `tblaccountlogdiscount`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblaccountlogdiscount` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblTotalDiscount`,
 1 AS `dblUnitDiscount`,
 1 AS `dtmDateEnd`,
 1 AS `dtmDateStart`,
 1 AS `duration`,
 1 AS `intAccountLogID`,
 1 AS `intLineItemID`,
 1 AS `intOrderID`,
 1 AS `intProductAppliedID`,
 1 AS `intPromotionAppliedID`,
 1 AS `intQuantity`,
 1 AS `intSubscriptionPlanID`,
 1 AS `strNotes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblaccountlogorder`
--

DROP TABLE IF EXISTS `tblaccountlogorder`;
/*!50001 DROP VIEW IF EXISTS `tblaccountlogorder`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblaccountlogorder` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `datBillingPeriodEnd`,
 1 AS `datBillingPeriodStart`,
 1 AS `intAccountLogID`,
 1 AS `intOrderID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblaccountlogstatus`
--

DROP TABLE IF EXISTS `tblaccountlogstatus`;
/*!50001 DROP VIEW IF EXISTS `tblaccountlogstatus`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblaccountlogstatus` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblaccountlogtype`
--

DROP TABLE IF EXISTS `tblaccountlogtype`;
/*!50001 DROP VIEW IF EXISTS `tblaccountlogtype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblaccountlogtype` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblaccountnotes`
--

DROP TABLE IF EXISTS `tblaccountnotes`;
/*!50001 DROP VIEW IF EXISTS `tblaccountnotes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblaccountnotes` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolReminderSent`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDateRemind`,
 1 AS `intCreatedByUserID`,
 1 AS `intScheduledJobID`,
 1 AS `strNotes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblactivitylog`
--

DROP TABLE IF EXISTS `tblactivitylog`;
/*!50001 DROP VIEW IF EXISTS `tblactivitylog`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblactivitylog` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDate`,
 1 AS `intActivityLogStatusID`,
 1 AS `intActivityLogTypeID`,
 1 AS `intAssetID`,
 1 AS `intIntegrationActionID`,
 1 AS `intScheduledMaintenanceID`,
 1 AS `intUserID`,
 1 AS `strException`,
 1 AS `strNotes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblactivitylogstatus`
--

DROP TABLE IF EXISTS `tblactivitylogstatus`;
/*!50001 DROP VIEW IF EXISTS `tblactivitylogstatus`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblactivitylogstatus` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblactivitylogtype`
--

DROP TABLE IF EXISTS `tblactivitylogtype`;
/*!50001 DROP VIEW IF EXISTS `tblactivitylogtype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblactivitylogtype` AS SELECT 
 1 AS `id`,
 1 AS `intEntityOwnerId`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblaffiliateprogram`
--

DROP TABLE IF EXISTS `tblaffiliateprogram`;
/*!50001 DROP VIEW IF EXISTS `tblaffiliateprogram`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblaffiliateprogram` AS SELECT 
 1 AS `id`,
 1 AS `strApiKey`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblapiconsumertype`
--

DROP TABLE IF EXISTS `tblapiconsumertype`;
/*!50001 DROP VIEW IF EXISTS `tblapiconsumertype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblapiconsumertype` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblapiconsumerusage`
--

DROP TABLE IF EXISTS `tblapiconsumerusage`;
/*!50001 DROP VIEW IF EXISTS `tblapiconsumerusage`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblapiconsumerusage` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDatePeriodEnd`,
 1 AS `dtmDatePeriodStart`,
 1 AS `intApiConsumerDistributionParentID`,
 1 AS `intApiConsumerID`,
 1 AS `intDay`,
 1 AS `intMonth`,
 1 AS `intRequestCount`,
 1 AS `intYear`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblapiusage`
--

DROP TABLE IF EXISTS `tblapiusage`;
/*!50001 DROP VIEW IF EXISTS `tblapiusage`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblapiusage` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intApiID`,
 1 AS `intAuthorizationTypeID`,
 1 AS `intDay`,
 1 AS `intMonth`,
 1 AS `intRequestCount`,
 1 AS `intYear`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblasset`
--

DROP TABLE IF EXISTS `tblasset`;
/*!50001 DROP VIEW IF EXISTS `tblasset`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblasset` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `bolHasAddress`,
 1 AS `bolImportedPriceFromV2`,
 1 AS `bolIsBillToFacility`,
 1 AS `bolIsCritical`,
 1 AS `bolIsOnline`,
 1 AS `bolIsPool`,
 1 AS `bolIsRegion`,
 1 AS `bolIsShippingOrReceivingFacility`,
 1 AS `bolIsSite`,
 1 AS `bolManageInventory`,
 1 AS `bolNeedsCalibration`,
 1 AS `bolUsersCanClockInOut`,
 1 AS `cBarcode`,
 1 AS `dblLastPrice`,
 1 AS `dblLatitude`,
 1 AS `dblLongitude`,
 1 AS `dblWeightedPrice`,
 1 AS `dtmCreated`,
 1 AS `dtmLastUpdated`,
 1 AS `intAccountID`,
 1 AS `intAssetLocationID`,
 1 AS `intAssetParentID`,
 1 AS `intAssetStatusID`,
 1 AS `intCategoryID`,
 1 AS `intChargeDepartmentID`,
 1 AS `intCountryID`,
 1 AS `intCreatedForPurchaseOrderLineItemID`,
 1 AS `intCreatedFromReceiptLineItemID`,
 1 AS `intKind`,
 1 AS `intLastMeterReadingUnitID`,
 1 AS `intLastPriceCurrencyID`,
 1 AS `intLayoutX`,
 1 AS `intLayoutY`,
 1 AS `intPhysicalLocationID`,
 1 AS `intSiteID`,
 1 AS `intSuperAssetCategoryID`,
 1 AS `intSuperCategoryID`,
 1 AS `intSuperCategorySysCode`,
 1 AS `intUpdated`,
 1 AS `qtyMinStockCount`,
 1 AS `qtyStockCount`,
 1 AS `strAddress`,
 1 AS `strAisle`,
 1 AS `strBarcode`,
 1 AS `strBinNumber`,
 1 AS `strCity`,
 1 AS `strCode`,
 1 AS `strCriticality`,
 1 AS `strCustomerIds`,
 1 AS `strCustomers`,
 1 AS `strDescription`,
 1 AS `strInventoryCode`,
 1 AS `strMASourceProduct`,
 1 AS `strMake`,
 1 AS `strModel`,
 1 AS `strName`,
 1 AS `strNotes`,
 1 AS `strPostalCode`,
 1 AS `strProvince`,
 1 AS `strQuotingTerms`,
 1 AS `strRFQTriggerSiteLevelSetting`,
 1 AS `strRow`,
 1 AS `strSerialNumber`,
 1 AS `strShippingTerms`,
 1 AS `strStockLocation`,
 1 AS `strSysCustomColumnValues`,
 1 AS `strTimezone`,
 1 AS `strUnspcCode`,
 1 AS `strUuid`,
 1 AS `strVendorIds`,
 1 AS `strVendors`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetactivitylog`
--

DROP TABLE IF EXISTS `tblassetactivitylog`;
/*!50001 DROP VIEW IF EXISTS `tblassetactivitylog`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetactivitylog` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDate`,
 1 AS `intActivityLogID`,
 1 AS `intMoveAssetID`,
 1 AS `intMoveBackAssetID`,
 1 AS `intMoveBackID`,
 1 AS `intMoveID`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetbusiness`
--

DROP TABLE IF EXISTS `tblassetbusiness`;
/*!50001 DROP VIEW IF EXISTS `tblassetbusiness`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetbusiness` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolAddShipmentAddressToRFQ`,
 1 AS `bolEnableBusinessTrackingSync`,
 1 AS `bolPreferredVendor`,
 1 AS `bolPrimary`,
 1 AS `bolSendRFQs`,
 1 AS `intAssetID`,
 1 AS `intBusinessGroupID`,
 1 AS `intBusinessID`,
 1 AS `intBusinessRoleTypeID`,
 1 AS `intRFQNumDaysForDelivery`,
 1 AS `qtyEconomicBatchQuantity`,
 1 AS `strBusinessAssetNumber`,
 1 AS `strCatalog`,
 1 AS `strProductURL`,
 1 AS `strSolrID`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetcategory`
--

DROP TABLE IF EXISTS `tblassetcategory`;
/*!50001 DROP VIEW IF EXISTS `tblassetcategory`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetcategory` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `bolOverrideRules`,
 1 AS `intParentID`,
 1 AS `intUpdated`,
 1 AS `strName`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetcategorybarcodeformattype`
--

DROP TABLE IF EXISTS `tblassetcategorybarcodeformattype`;
/*!50001 DROP VIEW IF EXISTS `tblassetcategorybarcodeformattype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetcategorybarcodeformattype` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intAssetCategoryID`,
 1 AS `intBarcodeFormatTypeID`,
 1 AS `intUpdated`,
 1 AS `strBarcodeStartSymbol`,
 1 AS `strBarcodeStopSymbol`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetcategoryresolved`
--

DROP TABLE IF EXISTS `tblassetcategoryresolved`;
/*!50001 DROP VIEW IF EXISTS `tblassetcategoryresolved`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetcategoryresolved` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intChildID`,
 1 AS `intParentID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetclassification`
--

DROP TABLE IF EXISTS `tblassetclassification`;
/*!50001 DROP VIEW IF EXISTS `tblassetclassification`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetclassification` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intAssetID`,
 1 AS `intClassificationID`,
 1 AS `intSiteID`,
 1 AS `qtyAnnualUsage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetclassificationlog`
--

DROP TABLE IF EXISTS `tblassetclassificationlog`;
/*!50001 DROP VIEW IF EXISTS `tblassetclassificationlog`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetclassificationlog` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateApplied`,
 1 AS `intAssetID`,
 1 AS `intClassificationID`,
 1 AS `intSiteID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetconsumingreference`
--

DROP TABLE IF EXISTS `tblassetconsumingreference`;
/*!50001 DROP VIEW IF EXISTS `tblassetconsumingreference`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetconsumingreference` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intAssetID`,
 1 AS `intBOMControlID`,
 1 AS `intBOMPartControlID`,
 1 AS `intConsumesAssetID`,
 1 AS `intUpdated`,
 1 AS `qtyMaxConsumption`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetdepletiontracking`
--

DROP TABLE IF EXISTS `tblassetdepletiontracking`;
/*!50001 DROP VIEW IF EXISTS `tblassetdepletiontracking`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetdepletiontracking` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intAssetPurchaseTrackingID`,
 1 AS `intWorkOrderPartID`,
 1 AS `qtyQuantityUsed`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetevent`
--

DROP TABLE IF EXISTS `tblassetevent`;
/*!50001 DROP VIEW IF EXISTS `tblassetevent`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetevent` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateSubmitted`,
 1 AS `intAssetEventTypeID`,
 1 AS `intAssetID`,
 1 AS `intSubmittedByUserID`,
 1 AS `intWorkOrderID`,
 1 AS `strAdditionalDescription`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblasseteventtype`
--

DROP TABLE IF EXISTS `tblasseteventtype`;
/*!50001 DROP VIEW IF EXISTS `tblasseteventtype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblasseteventtype` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolArchived`,
 1 AS `strEventCode`,
 1 AS `strEventDescription`,
 1 AS `strEventName`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblasseteventtypeasset`
--

DROP TABLE IF EXISTS `tblasseteventtypeasset`;
/*!50001 DROP VIEW IF EXISTS `tblasseteventtypeasset`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblasseteventtypeasset` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intAssetEventTypeID`,
 1 AS `intAssetID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetofflinetracker`
--

DROP TABLE IF EXISTS `tblassetofflinetracker`;
/*!50001 DROP VIEW IF EXISTS `tblassetofflinetracker`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetofflinetracker` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblProductionHoursAffected`,
 1 AS `dtmOffLineTo`,
 1 AS `dtmOfflineFrom`,
 1 AS `intAssetEventTypeID`,
 1 AS `intAssetID`,
 1 AS `intAssetIsLocatedAtAsssetID`,
 1 AS `intAssetIsPartOfAssetID`,
 1 AS `intReasonOfflineID`,
 1 AS `intReasonOnlineID`,
 1 AS `intSendToFacilityID`,
 1 AS `intSetOfflineByUserID`,
 1 AS `intSetOnlineByUserID`,
 1 AS `intStatusChangedByUserID`,
 1 AS `intSwapWithAssetID`,
 1 AS `intUpdated`,
 1 AS `intWorkOrderID`,
 1 AS `strAssetEventDescription`,
 1 AS `strOfflineAdditionalInfo`,
 1 AS `strOnlineAdditionalInfo`,
 1 AS `strRbAssetLocation`,
 1 AS `strRbMovement`,
 1 AS `strSendToAisle`,
 1 AS `strSendToBin`,
 1 AS `strSendToRow`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetproperty`
--

DROP TABLE IF EXISTS `tblassetproperty`;
/*!50001 DROP VIEW IF EXISTS `tblassetproperty`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetproperty` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intAssetID`,
 1 AS `intAssetPropertyTypeID`,
 1 AS `intMeterReadingUnitID`,
 1 AS `strCode`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetpropertydomainelement`
--

DROP TABLE IF EXISTS `tblassetpropertydomainelement`;
/*!50001 DROP VIEW IF EXISTS `tblassetpropertydomainelement`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetpropertydomainelement` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intAssetPropertyID`,
 1 AS `intOrder`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetpropertytype`
--

DROP TABLE IF EXISTS `tblassetpropertytype`;
/*!50001 DROP VIEW IF EXISTS `tblassetpropertytype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetpropertytype` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetpropertyvalue`
--

DROP TABLE IF EXISTS `tblassetpropertyvalue`;
/*!50001 DROP VIEW IF EXISTS `tblassetpropertyvalue`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetpropertyvalue` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblElevation`,
 1 AS `dblLatitude`,
 1 AS `dblLongitude`,
 1 AS `dblValue`,
 1 AS `dtmCreateDate`,
 1 AS `dtmSourceDate`,
 1 AS `intAssetEventTypeId`,
 1 AS `intAssetPropertyDomainElementID`,
 1 AS `intAssetPropertyID`,
 1 AS `intCreatedByApiUserID`,
 1 AS `intCreatedByUserID`,
 1 AS `intSensorOrDeviceID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetpurchasetracking`
--

DROP TABLE IF EXISTS `tblassetpurchasetracking`;
/*!50001 DROP VIEW IF EXISTS `tblassetpurchasetracking`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetpurchasetracking` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolMigrated`,
 1 AS `dblPurchasePricePerUnit`,
 1 AS `dblPurchasePriceTotal`,
 1 AS `dtmDateExpiryOfInventoryItems`,
 1 AS `dtmDateOrdered`,
 1 AS `dtmDateReceived`,
 1 AS `intAssetID`,
 1 AS `intBusinessID`,
 1 AS `intPurchaseCurrencyID`,
 1 AS `intV2ID`,
 1 AS `qtyQuantityLeft`,
 1 AS `qtyQuantityLeftAtTimeOfOrder`,
 1 AS `qtyQuantityPurchased`,
 1 AS `qtyQuantityUsed`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetresolved`
--

DROP TABLE IF EXISTS `tblassetresolved`;
/*!50001 DROP VIEW IF EXISTS `tblassetresolved`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetresolved` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intAncestorID`,
 1 AS `intDescendantID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetselection`
--

DROP TABLE IF EXISTS `tblassetselection`;
/*!50001 DROP VIEW IF EXISTS `tblassetselection`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetselection` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateCreated`,
 1 AS `intAssetId`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetstatus`
--

DROP TABLE IF EXISTS `tblassetstatus`;
/*!50001 DROP VIEW IF EXISTS `tblassetstatus`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetstatus` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetuser`
--

DROP TABLE IF EXISTS `tblassetuser`;
/*!50001 DROP VIEW IF EXISTS `tblassetuser`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetuser` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolCanClockIn`,
 1 AS `dtmDateAdded`,
 1 AS `intAssetID`,
 1 AS `intAssetUserTypeID`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblassetusertype`
--

DROP TABLE IF EXISTS `tblassetusertype`;
/*!50001 DROP VIEW IF EXISTS `tblassetusertype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblassetusertype` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblauditlog`
--

DROP TABLE IF EXISTS `tblauditlog`;
/*!50001 DROP VIEW IF EXISTS `tblauditlog`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblauditlog` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmLogDate`,
 1 AS `intEntityId`,
 1 AS `intUserID`,
 1 AS `strAction`,
 1 AS `strContext`,
 1 AS `strContextShort`,
 1 AS `strEntityName`,
 1 AS `strEntityOp`,
 1 AS `strImpactedFields`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblauditlogarchive`
--

DROP TABLE IF EXISTS `tblauditlogarchive`;
/*!50001 DROP VIEW IF EXISTS `tblauditlogarchive`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblauditlogarchive` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmLogDate`,
 1 AS `intEntityId`,
 1 AS `intUserID`,
 1 AS `strAction`,
 1 AS `strContext`,
 1 AS `strContextShort`,
 1 AS `strEntityName`,
 1 AS `strEntityOp`,
 1 AS `strImpactedFields`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblbarcodeformattype`
--

DROP TABLE IF EXISTS `tblbarcodeformattype`;
/*!50001 DROP VIEW IF EXISTS `tblbarcodeformattype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblbarcodeformattype` AS SELECT 
 1 AS `id`,
 1 AS `bolActive`,
 1 AS `intTotalLength`,
 1 AS `strDescription`,
 1 AS `strExample`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblbillingtaxes`
--

DROP TABLE IF EXISTS `tblbillingtaxes`;
/*!50001 DROP VIEW IF EXISTS `tblbillingtaxes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblbillingtaxes` AS SELECT 
 1 AS `id`,
 1 AS `bolZipCodeBased`,
 1 AS `dblTaxRate`,
 1 AS `intCountryID`,
 1 AS `strStateCode`,
 1 AS `strTaxLabel`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblbillingterm`
--

DROP TABLE IF EXISTS `tblbillingterm`;
/*!50001 DROP VIEW IF EXISTS `tblbillingterm`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblbillingterm` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intUpdated`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblbillingtype`
--

DROP TABLE IF EXISTS `tblbillingtype`;
/*!50001 DROP VIEW IF EXISTS `tblbillingtype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblbillingtype` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblbomgroup`
--

DROP TABLE IF EXISTS `tblbomgroup`;
/*!50001 DROP VIEW IF EXISTS `tblbomgroup`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblbomgroup` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmLastUpdated`,
 1 AS `intCreatedByUserID`,
 1 AS `intLastUpdatedByUserID`,
 1 AS `strName`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblbomgrouppart`
--

DROP TABLE IF EXISTS `tblbomgrouppart`;
/*!50001 DROP VIEW IF EXISTS `tblbomgrouppart`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblbomgrouppart` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intAssetID`,
 1 AS `intBOMGroupID`,
 1 AS `qtyMaxConsumption`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblbranding`
--

DROP TABLE IF EXISTS `tblbranding`;
/*!50001 DROP VIEW IF EXISTS `tblbranding`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblbranding` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intBrandingTypeID`,
 1 AS `intFileContentsID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblbusiness`
--

DROP TABLE IF EXISTS `tblbusiness`;
/*!50001 DROP VIEW IF EXISTS `tblbusiness`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblbusiness` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `bolDefaultCompany`,
 1 AS `bolGroupQuotes`,
 1 AS `bolIsMASourceVendor`,
 1 AS `bolOurBusiness`,
 1 AS `bolPreferredBusiness`,
 1 AS `bolPublicCommunity`,
 1 AS `dtmLastScheduledMaintenanceRunTime`,
 1 AS `intBusinessClassificationID`,
 1 AS `intBusinessTypeID`,
 1 AS `intCohortID`,
 1 AS `intCountryID`,
 1 AS `intMASourceSellerID`,
 1 AS `intPrimaryCurrencyID`,
 1 AS `intRFQTemplateID`,
 1 AS `intUpdated`,
 1 AS `strAddress`,
 1 AS `strBusinessCorpID`,
 1 AS `strCity`,
 1 AS `strCode`,
 1 AS `strCommunityPassword`,
 1 AS `strCommunityPrivateKey`,
 1 AS `strFax`,
 1 AS `strName`,
 1 AS `strNotes`,
 1 AS `strPhone`,
 1 AS `strPhone2`,
 1 AS `strPostalCode`,
 1 AS `strPrimaryContact`,
 1 AS `strPrimaryEmail`,
 1 AS `strProvince`,
 1 AS `strSecondaryEmail`,
 1 AS `strTimezone`,
 1 AS `strUuid`,
 1 AS `strWebSite`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblbusinessclassification`
--

DROP TABLE IF EXISTS `tblbusinessclassification`;
/*!50001 DROP VIEW IF EXISTS `tblbusinessclassification`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblbusinessclassification` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblbusinesscontact`
--

DROP TABLE IF EXISTS `tblbusinesscontact`;
/*!50001 DROP VIEW IF EXISTS `tblbusinesscontact`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblbusinesscontact` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intBusinessID`,
 1 AS `intUserID`,
 1 AS `strDepartment`,
 1 AS `strTitle`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblbusinessgroup`
--

DROP TABLE IF EXISTS `tblbusinessgroup`;
/*!50001 DROP VIEW IF EXISTS `tblbusinessgroup`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblbusinessgroup` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolIsDefaultManufacturer`,
 1 AS `bolIsDefaultSupplier`,
 1 AS `intRelationshipType`,
 1 AS `strName`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblbusinessrole`
--

DROP TABLE IF EXISTS `tblbusinessrole`;
/*!50001 DROP VIEW IF EXISTS `tblbusinessrole`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblbusinessrole` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intBusinessGroupID`,
 1 AS `intBusinessID`,
 1 AS `intBusinessRoleTypeID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblbusinessroletype`
--

DROP TABLE IF EXISTS `tblbusinessroletype`;
/*!50001 DROP VIEW IF EXISTS `tblbusinessroletype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblbusinessroletype` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblbusinesstypedef`
--

DROP TABLE IF EXISTS `tblbusinesstypedef`;
/*!50001 DROP VIEW IF EXISTS `tblbusinesstypedef`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblbusinesstypedef` AS SELECT 
 1 AS `id`,
 1 AS `bolDefinable`,
 1 AS `intDefaultParentID`,
 1 AS `strAllParent`,
 1 AS `strBusinessTypeDefName`,
 1 AS `strBusinessTypeDefShort`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblcalendarevent`
--

DROP TABLE IF EXISTS `tblcalendarevent`;
/*!50001 DROP VIEW IF EXISTS `tblcalendarevent`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblcalendarevent` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblTimeTotalEstimatedHours`,
 1 AS `dtmDate`,
 1 AS `intScheduleTriggerID`,
 1 AS `intScheduledMaintenanceID`,
 1 AS `strScheduledMaintenanceNestingNames`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblcategorysetting`
--

DROP TABLE IF EXISTS `tblcategorysetting`;
/*!50001 DROP VIEW IF EXISTS `tblcategorysetting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblcategorysetting` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolBlockMovingAssetsWithOverdueMaintenance`,
 1 AS `bolBlockMovingBackAssetsWithOverdueMaintenance`,
 1 AS `bolBlockMovingBackOfflineAssets`,
 1 AS `bolBlockMovingOfflineAssets`,
 1 AS `bolEnableCalibration`,
 1 AS `bolEnableCheckInCheckOutQuickActions`,
 1 AS `bolEnableMoveControl`,
 1 AS `bolEnableMoveTracking`,
 1 AS `intCategoryID`,
 1 AS `intDefaultDestinationTypeID`,
 1 AS `intIntervalForUpcomingEventWarning`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblcertification`
--

DROP TABLE IF EXISTS `tblcertification`;
/*!50001 DROP VIEW IF EXISTS `tblcertification`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblcertification` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `strDescription`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblchargedepartment`
--

DROP TABLE IF EXISTS `tblchargedepartment`;
/*!50001 DROP VIEW IF EXISTS `tblchargedepartment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblchargedepartment` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intFacilityID`,
 1 AS `intUpdated`,
 1 AS `strCode`,
 1 AS `strDescription`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblcounter`
--

DROP TABLE IF EXISTS `tblcounter`;
/*!50001 DROP VIEW IF EXISTS `tblcounter`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblcounter` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intNextValue`,
 1 AS `strTableName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblcountry`
--

DROP TABLE IF EXISTS `tblcountry`;
/*!50001 DROP VIEW IF EXISTS `tblcountry`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblcountry` AS SELECT 
 1 AS `id`,
 1 AS `bolIsBlocked`,
 1 AS `strMid`,
 1 AS `strName`,
 1 AS `strNotes`,
 1 AS `strShort`,
 1 AS `strShort2`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblcreditcard`
--

DROP TABLE IF EXISTS `tblcreditcard`;
/*!50001 DROP VIEW IF EXISTS `tblcreditcard`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblcreditcard` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateExpirationNoticeSent`,
 1 AS `intExpireMonth`,
 1 AS `intExpireYear`,
 1 AS `intPaymentProfileID`,
 1 AS `strLastFour`,
 1 AS `strNameOnCard`,
 1 AS `strTokenKey`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblcrmmetricssettings`
--

DROP TABLE IF EXISTS `tblcrmmetricssettings`;
/*!50001 DROP VIEW IF EXISTS `tblcrmmetricssettings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblcrmmetricssettings` AS SELECT 
 1 AS `id`,
 1 AS `dtmInceptionDate`,
 1 AS `dtmStartFullCalculationDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblcrmmetricstype`
--

DROP TABLE IF EXISTS `tblcrmmetricstype`;
/*!50001 DROP VIEW IF EXISTS `tblcrmmetricstype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblcrmmetricstype` AS SELECT 
 1 AS `id`,
 1 AS `bolCalculatedOnly`,
 1 AS `intCrmMetricsTypeFormatID`,
 1 AS `strDescription`,
 1 AS `strMetric`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblcrmmetricstypeformat`
--

DROP TABLE IF EXISTS `tblcrmmetricstypeformat`;
/*!50001 DROP VIEW IF EXISTS `tblcrmmetricstypeformat`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblcrmmetricstypeformat` AS SELECT 
 1 AS `id`,
 1 AS `strFormat`,
 1 AS `strName`,
 1 AS `strSymbol`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblcrmmetricsuser`
--

DROP TABLE IF EXISTS `tblcrmmetricsuser`;
/*!50001 DROP VIEW IF EXISTS `tblcrmmetricsuser`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblcrmmetricsuser` AS SELECT 
 1 AS `id`,
 1 AS `bolMetricsHaveSameUnit`,
 1 AS `intCrmMetric1ID`,
 1 AS `intCrmMetric2ID`,
 1 AS `intUserID`,
 1 AS `strPeriodType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblcurrency`
--

DROP TABLE IF EXISTS `tblcurrency`;
/*!50001 DROP VIEW IF EXISTS `tblcurrency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblcurrency` AS SELECT 
 1 AS `id`,
 1 AS `strDescription`,
 1 AS `strISOCode`,
 1 AS `strName`,
 1 AS `strSymbol`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblcustomfield`
--

DROP TABLE IF EXISTS `tblcustomfield`;
/*!50001 DROP VIEW IF EXISTS `tblcustomfield`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblcustomfield` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolApplyToChildren`,
 1 AS `intAssetCategoryID`,
 1 AS `strBaseTable`,
 1 AS `strName`,
 1 AS `strType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblcustomfieldvalue`
--

DROP TABLE IF EXISTS `tblcustomfieldvalue`;
/*!50001 DROP VIEW IF EXISTS `tblcustomfieldvalue`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblcustomfieldvalue` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `datDateValue`,
 1 AS `dblDoubleValue`,
 1 AS `dtmDateTimeValue`,
 1 AS `intBaseTableID`,
 1 AS `intCustomFieldID`,
 1 AS `intIntValue`,
 1 AS `qtyQuantityValue`,
 1 AS `strBaseTable`,
 1 AS `strClobValue`,
 1 AS `strStringValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblcustomquery`
--

DROP TABLE IF EXISTS `tblcustomquery`;
/*!50001 DROP VIEW IF EXISTS `tblcustomquery`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblcustomquery` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolShared`,
 1 AS `dtmDateCreated`,
 1 AS `intCreatedByUserID`,
 1 AS `strDescription`,
 1 AS `strSerializedform`,
 1 AS `strTableName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblcyclecount`
--

DROP TABLE IF EXISTS `tblcyclecount`;
/*!50001 DROP VIEW IF EXISTS `tblcyclecount`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblcyclecount` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolComplete`,
 1 AS `bolIncludeClassA`,
 1 AS `bolIncludeClassB`,
 1 AS `bolIncludeClassC`,
 1 AS `bolIncludeNotClassified`,
 1 AS `dblGrossVariance`,
 1 AS `dblNetVariance`,
 1 AS `dblTotalValueCounted`,
 1 AS `dblTotalValueExpected`,
 1 AS `dtmCompleted`,
 1 AS `dtmCreated`,
 1 AS `intCompletedBy`,
 1 AS `intCreatedBy`,
 1 AS `intFacilityID`,
 1 AS `intSiteID`,
 1 AS `intUpdated`,
 1 AS `strAisle`,
 1 AS `strBin`,
 1 AS `strRow`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbldashboard`
--

DROP TABLE IF EXISTS `tbldashboard`;
/*!50001 DROP VIEW IF EXISTS `tbldashboard`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbldashboard` AS SELECT 
 1 AS `id`,
 1 AS `intSysCode`,
 1 AS `bolAvailable`,
 1 AS `bolSharedDashboardTemplate`,
 1 AS `intDashboardType`,
 1 AS `intOwnerTenantID`,
 1 AS `intSharedDashboardTemplateID`,
 1 AS `intUserID`,
 1 AS `strDescription`,
 1 AS `strSelectedSites`,
 1 AS `strTitle`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbldashboarddashboardpersona`
--

DROP TABLE IF EXISTS `tbldashboarddashboardpersona`;
/*!50001 DROP VIEW IF EXISTS `tbldashboarddashboardpersona`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbldashboarddashboardpersona` AS SELECT 
 1 AS `id`,
 1 AS `intDashboardID`,
 1 AS `intDashboardPersonaID`,
 1 AS `intOwnerTenantID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbldashboardfeaturenotice`
--

DROP TABLE IF EXISTS `tbldashboardfeaturenotice`;
/*!50001 DROP VIEW IF EXISTS `tbldashboardfeaturenotice`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbldashboardfeaturenotice` AS SELECT 
 1 AS `id`,
 1 AS `bolActive`,
 1 AS `bolDisplayOnTop`,
 1 AS `intOwnerTenantID`,
 1 AS `intProductTierID`,
 1 AS `strDescription`,
 1 AS `strName`,
 1 AS `strStyle`,
 1 AS `strUrlOverride`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbldashboardpersona`
--

DROP TABLE IF EXISTS `tbldashboardpersona`;
/*!50001 DROP VIEW IF EXISTS `tbldashboardpersona`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbldashboardpersona` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSharedDashboardID`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbldashboardwidget`
--

DROP TABLE IF EXISTS `tbldashboardwidget`;
/*!50001 DROP VIEW IF EXISTS `tbldashboardwidget`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbldashboardwidget` AS SELECT 
 1 AS `id`,
 1 AS `intSysCode`,
 1 AS `bolAvailable`,
 1 AS `bolAvailableRestricted`,
 1 AS `bolDisplayAsPercentage`,
 1 AS `bolRestricted`,
 1 AS `intOwnerTenantID`,
 1 AS `intQueryTypeID`,
 1 AS `intResultPrecision`,
 1 AS `intUnitType`,
 1 AS `intWidgetCategoryID`,
 1 AS `strChartType`,
 1 AS `strColorScheme`,
 1 AS `strDescription`,
 1 AS `strFullName`,
 1 AS `strName`,
 1 AS `strUnit`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbldashboardwidgetcategory`
--

DROP TABLE IF EXISTS `tbldashboardwidgetcategory`;
/*!50001 DROP VIEW IF EXISTS `tbldashboardwidgetcategory`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbldashboardwidgetcategory` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbldashboardwidgetdashboardpersona`
--

DROP TABLE IF EXISTS `tbldashboardwidgetdashboardpersona`;
/*!50001 DROP VIEW IF EXISTS `tbldashboardwidgetdashboardpersona`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbldashboardwidgetdashboardpersona` AS SELECT 
 1 AS `id`,
 1 AS `intDashboardPersonaID`,
 1 AS `intOwnerTenantID`,
 1 AS `intWidgetID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbldashboardwidgetparameter`
--

DROP TABLE IF EXISTS `tbldashboardwidgetparameter`;
/*!50001 DROP VIEW IF EXISTS `tbldashboardwidgetparameter`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbldashboardwidgetparameter` AS SELECT 
 1 AS `id`,
 1 AS `bolAllowMultipleValues`,
 1 AS `intDashboardWidgetQueryID`,
 1 AS `intOwnerTenantID`,
 1 AS `intParamValueType`,
 1 AS `strDefaultValueQuery`,
 1 AS `strFullName`,
 1 AS `strParamEntityQuery`,
 1 AS `strParamEntityType`,
 1 AS `strParamLabel`,
 1 AS `strParamName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbldashboardwidgetposition`
--

DROP TABLE IF EXISTS `tbldashboardwidgetposition`;
/*!50001 DROP VIEW IF EXISTS `tbldashboardwidgetposition`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbldashboardwidgetposition` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolLockAspectRatio`,
 1 AS `intDashboardID`,
 1 AS `intHeight`,
 1 AS `intMinHeight`,
 1 AS `intMinWidth`,
 1 AS `intWidgetID`,
 1 AS `intWidth`,
 1 AS `intXPosition`,
 1 AS `intYPosition`,
 1 AS `strTitleOverride`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbldashboardwidgetpositionfilter`
--

DROP TABLE IF EXISTS `tbldashboardwidgetpositionfilter`;
/*!50001 DROP VIEW IF EXISTS `tbldashboardwidgetpositionfilter`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbldashboardwidgetpositionfilter` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolActive`,
 1 AS `intSubQueryID`,
 1 AS `intWidgetPositionID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbldashboardwidgetpositionparameter`
--

DROP TABLE IF EXISTS `tbldashboardwidgetpositionparameter`;
/*!50001 DROP VIEW IF EXISTS `tbldashboardwidgetpositionparameter`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbldashboardwidgetpositionparameter` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intDashboardWidgetParameterID`,
 1 AS `intWidgetPositionID`,
 1 AS `strParamValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbldashboardwidgetquery`
--

DROP TABLE IF EXISTS `tbldashboardwidgetquery`;
/*!50001 DROP VIEW IF EXISTS `tbldashboardwidgetquery`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbldashboardwidgetquery` AS SELECT 
 1 AS `id`,
 1 AS `intDashboardWidgetID`,
 1 AS `intOrder`,
 1 AS `intOwnerTenantID`,
 1 AS `intSubQueryTypeID`,
 1 AS `strFullName`,
 1 AS `strLabel`,
 1 AS `strQuery`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbldatabaseexport`
--

DROP TABLE IF EXISTS `tbldatabaseexport`;
/*!50001 DROP VIEW IF EXISTS `tbldatabaseexport`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbldatabaseexport` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolExcludeFromLimitChecking`,
 1 AS `bolIncludeFiles`,
 1 AS `bolPasswordProtected`,
 1 AS `dtmGenerationFinished`,
 1 AS `dtmGenerationStarted`,
 1 AS `intApplicationID`,
 1 AS `intErrorCode`,
 1 AS `intFileContentsID`,
 1 AS `intGeneratedByUserID`,
 1 AS `intWorkerID`,
 1 AS `strIncludedTenants`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblddcolumn`
--

DROP TABLE IF EXISTS `tblddcolumn`;
/*!50001 DROP VIEW IF EXISTS `tblddcolumn`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblddcolumn` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolCustom`,
 1 AS `bolLegacyApplyToChildren`,
 1 AS `intDdColumnTypeID`,
 1 AS `intDdTableID`,
 1 AS `intImportedFromCustomFieldID`,
 1 AS `intLegacyAssetCategoryID`,
 1 AS `intPkDdTableID`,
 1 AS `strLabel`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblddcolumntype`
--

DROP TABLE IF EXISTS `tblddcolumntype`;
/*!50001 DROP VIEW IF EXISTS `tblddcolumntype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblddcolumntype` AS SELECT 
 1 AS `id`,
 1 AS `strLabel`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblddcustomtablerow`
--

DROP TABLE IF EXISTS `tblddcustomtablerow`;
/*!50001 DROP VIEW IF EXISTS `tblddcustomtablerow`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblddcustomtablerow` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intDdTableID`,
 1 AS `strSysCustomColumnValues`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblddtable`
--

DROP TABLE IF EXISTS `tblddtable`;
/*!50001 DROP VIEW IF EXISTS `tblddtable`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblddtable` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolCustom`,
 1 AS `intDdTableTypeID`,
 1 AS `intLabelDdColumnID`,
 1 AS `strLabel`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblddtabletype`
--

DROP TABLE IF EXISTS `tblddtabletype`;
/*!50001 DROP VIEW IF EXISTS `tblddtabletype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblddtabletype` AS SELECT 
 1 AS `id`,
 1 AS `strLabel`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbldistribution`
--

DROP TABLE IF EXISTS `tbldistribution`;
/*!50001 DROP VIEW IF EXISTS `tbldistribution`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbldistribution` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolActive`,
 1 AS `intDistributionBillingPlanID`,
 1 AS `strNotes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbldistributionbillingplan`
--

DROP TABLE IF EXISTS `tbldistributionbillingplan`;
/*!50001 DROP VIEW IF EXISTS `tbldistributionbillingplan`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbldistributionbillingplan` AS SELECT 
 1 AS `id`,
 1 AS `strDescription`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbldistributionpaymentmethod`
--

DROP TABLE IF EXISTS `tbldistributionpaymentmethod`;
/*!50001 DROP VIEW IF EXISTS `tbldistributionpaymentmethod`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbldistributionpaymentmethod` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intDistributionID`,
 1 AS `intPaymentMethodID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbldistributionpricingtier`
--

DROP TABLE IF EXISTS `tbldistributionpricingtier`;
/*!50001 DROP VIEW IF EXISTS `tbldistributionpricingtier`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbldistributionpricingtier` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolActive`,
 1 AS `bolApplyAutoDiscounts`,
 1 AS `dblDefaultPrice`,
 1 AS `intDistributionID`,
 1 AS `intPricingTierID`,
 1 AS `intQuantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbldistributionrecurringtype`
--

DROP TABLE IF EXISTS `tbldistributionrecurringtype`;
/*!50001 DROP VIEW IF EXISTS `tbldistributionrecurringtype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbldistributionrecurringtype` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intDistributionID`,
 1 AS `intRecurringTypeID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbldistributionunitpricingrule`
--

DROP TABLE IF EXISTS `tbldistributionunitpricingrule`;
/*!50001 DROP VIEW IF EXISTS `tbldistributionunitpricingrule`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbldistributionunitpricingrule` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblPrice`,
 1 AS `intCeilingQuantity`,
 1 AS `intDistributionPricingTierID`,
 1 AS `intFloorQuantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblemailattachment`
--

DROP TABLE IF EXISTS `tblemailattachment`;
/*!50001 DROP VIEW IF EXISTS `tblemailattachment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblemailattachment` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intEmailMessageID`,
 1 AS `intSize`,
 1 AS `strMimeType`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblemailmessage`
--

DROP TABLE IF EXISTS `tblemailmessage`;
/*!50001 DROP VIEW IF EXISTS `tblemailmessage`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblemailmessage` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolIsReady`,
 1 AS `dtmDateAccepted`,
 1 AS `dtmLastSentAttempt`,
 1 AS `intSenderBusinessID`,
 1 AS `strContents`,
 1 AS `strContents2`,
 1 AS `strFrom`,
 1 AS `strRecipients`,
 1 AS `strSubject`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblepicfeaturenotice`
--

DROP TABLE IF EXISTS `tblepicfeaturenotice`;
/*!50001 DROP VIEW IF EXISTS `tblepicfeaturenotice`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblepicfeaturenotice` AS SELECT 
 1 AS `id`,
 1 AS `bolActive`,
 1 AS `intOwnerTenantID`,
 1 AS `strDescription`,
 1 AS `strName`,
 1 AS `strUrlOverride`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblepicfeaturenoticepricingtier`
--

DROP TABLE IF EXISTS `tblepicfeaturenoticepricingtier`;
/*!50001 DROP VIEW IF EXISTS `tblepicfeaturenoticepricingtier`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblepicfeaturenoticepricingtier` AS SELECT 
 1 AS `id`,
 1 AS `intEpicFeatureNoticeID`,
 1 AS `intPricingTierID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblevent`
--

DROP TABLE IF EXISTS `tblevent`;
/*!50001 DROP VIEW IF EXISTS `tblevent`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblevent` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmEventDate`,
 1 AS `intDtoPkId`,
 1 AS `intHandlerVersion`,
 1 AS `intLifecycleLogId`,
 1 AS `intSiteID`,
 1 AS `intUserID`,
 1 AS `strContext`,
 1 AS `strDescOrContent`,
 1 AS `strDtoClass`,
 1 AS `strEventType`,
 1 AS `strLifecycleLogClass`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblfeature`
--

DROP TABLE IF EXISTS `tblfeature`;
/*!50001 DROP VIEW IF EXISTS `tblfeature`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblfeature` AS SELECT 
 1 AS `id`,
 1 AS `intFeatureCategoryID`,
 1 AS `intFeatureValueTypeID`,
 1 AS `intOrder`,
 1 AS `intProductID`,
 1 AS `strDescription`,
 1 AS `strName`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblfeaturecategory`
--

DROP TABLE IF EXISTS `tblfeaturecategory`;
/*!50001 DROP VIEW IF EXISTS `tblfeaturecategory`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblfeaturecategory` AS SELECT 
 1 AS `id`,
 1 AS `strDescription`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblfeaturenoticefilter`
--

DROP TABLE IF EXISTS `tblfeaturenoticefilter`;
/*!50001 DROP VIEW IF EXISTS `tblfeaturenoticefilter`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblfeaturenoticefilter` AS SELECT 
 1 AS `id`,
 1 AS `bolDoNotShowForTenantsWithSuppressMarketing`,
 1 AS `bolTenantIDEven`,
 1 AS `bolTenantIDOdd`,
 1 AS `intBusinessClassificationID`,
 1 AS `intCountryID`,
 1 AS `intDashboardFeatureNoticeID`,
 1 AS `intEpicFeatureNoticeID`,
 1 AS `intNumDaysFromSignup`,
 1 AS `intNumDaysInactive`,
 1 AS `intNumberSeatsMax`,
 1 AS `intNumberSeatsMin`,
 1 AS `intProductTierID`,
 1 AS `intRecurringTypeID`,
 1 AS `intTenantAutomationID`,
 1 AS `intTenantFilterID`,
 1 AS `intTenantIdModuloDivisor`,
 1 AS `intTenantIdModuloRemainder`,
 1 AS `intTenantTypeID`,
 1 AS `intUserGroupID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblfeatureproperty`
--

DROP TABLE IF EXISTS `tblfeatureproperty`;
/*!50001 DROP VIEW IF EXISTS `tblfeatureproperty`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblfeatureproperty` AS SELECT 
 1 AS `id`,
 1 AS `bolBooleanValue`,
 1 AS `bolSeatMultiplier`,
 1 AS `datDateValue`,
 1 AS `dblDoubleValue`,
 1 AS `dtmDateTimeValue`,
 1 AS `dtmDateUpdated`,
 1 AS `intFeatureID`,
 1 AS `intFeatureValuePeriodTypeID`,
 1 AS `intFeatureValueTypeID`,
 1 AS `intLongValue`,
 1 AS `intOwnerTenantID`,
 1 AS `intPricingTierFeatureID`,
 1 AS `intTenantFeatureID`,
 1 AS `intUpdatedByUserID`,
 1 AS `qtyQtyValue`,
 1 AS `strDescription`,
 1 AS `strKey`,
 1 AS `strLongStringValue`,
 1 AS `strName`,
 1 AS `strStringValue`,
 1 AS `strType`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblfeaturevalueoveragecontroltype`
--

DROP TABLE IF EXISTS `tblfeaturevalueoveragecontroltype`;
/*!50001 DROP VIEW IF EXISTS `tblfeaturevalueoveragecontroltype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblfeaturevalueoveragecontroltype` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblfeaturevalueperiodtype`
--

DROP TABLE IF EXISTS `tblfeaturevalueperiodtype`;
/*!50001 DROP VIEW IF EXISTS `tblfeaturevalueperiodtype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblfeaturevalueperiodtype` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblfeaturevaluetype`
--

DROP TABLE IF EXISTS `tblfeaturevaluetype`;
/*!50001 DROP VIEW IF EXISTS `tblfeaturevaluetype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblfeaturevaluetype` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblfile`
--

DROP TABLE IF EXISTS `tblfile`;
/*!50001 DROP VIEW IF EXISTS `tblfile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblfile` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `bolImage`,
 1 AS `intAssetCategoryID`,
 1 AS `intAssetID`,
 1 AS `intBusinessID`,
 1 AS `intFileContentsID`,
 1 AS `intFileTypeID`,
 1 AS `intImageHeight`,
 1 AS `intImageWidth`,
 1 AS `intMASourceListingID`,
 1 AS `intProductTimeTrackingID`,
 1 AS `intProjectID`,
 1 AS `intPurchaseOrderID`,
 1 AS `intReportTemplateID`,
 1 AS `intRfqID`,
 1 AS `intScheduledMaintenanceID`,
 1 AS `intSize`,
 1 AS `intTaskGroupID`,
 1 AS `intThumbnailHeight`,
 1 AS `intThumbnailID`,
 1 AS `intThumbnailWidth`,
 1 AS `intUpdated`,
 1 AS `intUserID`,
 1 AS `intWorkOrderID`,
 1 AS `strLink`,
 1 AS `strName`,
 1 AS `strNotes`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblfilecontents`
--

DROP TABLE IF EXISTS `tblfilecontents`;
/*!50001 DROP VIEW IF EXISTS `tblfilecontents`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblfilecontents` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `intIsShared`,
 1 AS `intSize`,
 1 AS `strContents`,
 1 AS `strMimeType`,
 1 AS `strName`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblfirewall`
--

DROP TABLE IF EXISTS `tblfirewall`;
/*!50001 DROP VIEW IF EXISTS `tblfirewall`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblfirewall` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolActive`,
 1 AS `intActionOnBlockedIP`,
 1 AS `intRuleControlMethod`,
 1 AS `intUserID`,
 1 AS `strAllowedIPs`,
 1 AS `strBlockedMessage`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblfirewalllog`
--

DROP TABLE IF EXISTS `tblfirewalllog`;
/*!50001 DROP VIEW IF EXISTS `tblfirewalllog`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblfirewalllog` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDate`,
 1 AS `intApplicationID`,
 1 AS `intFirewallID`,
 1 AS `intFirewallRuleID`,
 1 AS `intSiteID`,
 1 AS `intUserID`,
 1 AS `strAdditionalInformation`,
 1 AS `strIPAttempted`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblfirewallrule`
--

DROP TABLE IF EXISTS `tblfirewallrule`;
/*!50001 DROP VIEW IF EXISTS `tblfirewallrule`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblfirewallrule` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolActive`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDateExpiry`,
 1 AS `intApplicationID`,
 1 AS `intFirewallID`,
 1 AS `intOrder`,
 1 AS `intRuleControlMethod`,
 1 AS `intSiteID`,
 1 AS `intUserID`,
 1 AS `strAllowedIPs`,
 1 AS `strAllowedSubnets`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblghgcalcasset`
--

DROP TABLE IF EXISTS `tblghgcalcasset`;
/*!50001 DROP VIEW IF EXISTS `tblghgcalcasset`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblghgcalcasset` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolIsStationary`,
 1 AS `dblCO2Total`,
 1 AS `dblCarbonTax`,
 1 AS `dblDistanceAmount`,
 1 AS `dblElectricityAmount`,
 1 AS `dblFuelAmount`,
 1 AS `dblHeatSteamAmount`,
 1 AS `dblResult`,
 1 AS `dtmDateEnd`,
 1 AS `dtmDateStart`,
 1 AS `intAssetID`,
 1 AS `intFuelID`,
 1 AS `intLocationID`,
 1 AS `intSubFuelID`,
 1 AS `intSubLocationID`,
 1 AS `intSubVehicleID`,
 1 AS `intVehicleID`,
 1 AS `strDistanceUnit`,
 1 AS `strElectricityUnit`,
 1 AS `strFuelUnit`,
 1 AS `strHeatSteamUnit`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblghgcalccarbonmarket`
--

DROP TABLE IF EXISTS `tblghgcalccarbonmarket`;
/*!50001 DROP VIEW IF EXISTS `tblghgcalccarbonmarket`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblghgcalccarbonmarket` AS SELECT 
 1 AS `id`,
 1 AS `bolIsActive`,
 1 AS `dblCarbonPrice`,
 1 AS `intResourceID`,
 1 AS `intYear`,
 1 AS `strJurisdiction`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblghgcalcfuel`
--

DROP TABLE IF EXISTS `tblghgcalcfuel`;
/*!50001 DROP VIEW IF EXISTS `tblghgcalcfuel`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblghgcalcfuel` AS SELECT 
 1 AS `id`,
 1 AS `bolIsActive`,
 1 AS `bolIsStationary`,
 1 AS `dblGramsCHFourPerPrimaryUnit`,
 1 AS `dblGramsCHFourPerSecondaryUnit`,
 1 AS `dblGramsNTwoOPerPrimaryUnit`,
 1 AS `dblGramsNTwoOPerSecondaryUnit`,
 1 AS `dblKgCOTwoPerPrimaryUnit`,
 1 AS `dblKgCOTwoPerSecondaryUnit`,
 1 AS `intParentFuelID`,
 1 AS `intResourceID`,
 1 AS `intYear`,
 1 AS `strName`,
 1 AS `strPrimaryUnit`,
 1 AS `strSecondaryUnit`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblghgcalcgwp`
--

DROP TABLE IF EXISTS `tblghgcalcgwp`;
/*!50001 DROP VIEW IF EXISTS `tblghgcalcgwp`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblghgcalcgwp` AS SELECT 
 1 AS `id`,
 1 AS `bolIsActive`,
 1 AS `intHundredYearGWP`,
 1 AS `intResourceID`,
 1 AS `intYear`,
 1 AS `strDescription`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblghgcalclocation`
--

DROP TABLE IF EXISTS `tblghgcalclocation`;
/*!50001 DROP VIEW IF EXISTS `tblghgcalclocation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblghgcalclocation` AS SELECT 
 1 AS `id`,
 1 AS `bolIsActive`,
 1 AS `dblGramsPerkWh`,
 1 AS `intCarbonMarketID`,
 1 AS `intParentLocationID`,
 1 AS `intResourceID`,
 1 AS `intYear`,
 1 AS `strName`,
 1 AS `strRegionLabel`,
 1 AS `strZIPPostalCode`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblghgcalcresource`
--

DROP TABLE IF EXISTS `tblghgcalcresource`;
/*!50001 DROP VIEW IF EXISTS `tblghgcalcresource`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblghgcalcresource` AS SELECT 
 1 AS `id`,
 1 AS `bolIsActive`,
 1 AS `intYear`,
 1 AS `strDescription`,
 1 AS `strLink`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblghgcalcvehicle`
--

DROP TABLE IF EXISTS `tblghgcalcvehicle`;
/*!50001 DROP VIEW IF EXISTS `tblghgcalcvehicle`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblghgcalcvehicle` AS SELECT 
 1 AS `id`,
 1 AS `bolIsActive`,
 1 AS `bolIsOnRoad`,
 1 AS `dblGramsCHFourPerPrimaryUnit`,
 1 AS `dblGramsNTwoOPerPrimaryUnit`,
 1 AS `intParentVehicleID`,
 1 AS `intResourceID`,
 1 AS `intYear`,
 1 AS `strName`,
 1 AS `strSubNameLabel`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblgrouppermissions`
--

DROP TABLE IF EXISTS `tblgrouppermissions`;
/*!50001 DROP VIEW IF EXISTS `tblgrouppermissions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblgrouppermissions` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intGroupID`,
 1 AS `strPermissions`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblguestactions`
--

DROP TABLE IF EXISTS `tblguestactions`;
/*!50001 DROP VIEW IF EXISTS `tblguestactions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblguestactions` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateCreated`,
 1 AS `intClientSessionID`,
 1 AS `intCreatedWorkOrderID`,
 1 AS `strOriginatingIp`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblguestmrformfield`
--

DROP TABLE IF EXISTS `tblguestmrformfield`;
/*!50001 DROP VIEW IF EXISTS `tblguestmrformfield`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblguestmrformfield` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolIsIncludedInNotification`,
 1 AS `bolIsPermanent`,
 1 AS `bolIsReorderable`,
 1 AS `bolIsRequired`,
 1 AS `intDdColumnID`,
 1 AS `intOrder`,
 1 AS `intSystemSettingID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblintegration`
--

DROP TABLE IF EXISTS `tblintegration`;
/*!50001 DROP VIEW IF EXISTS `tblintegration`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblintegration` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolActive`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDateUpdated`,
 1 AS `dtmLastAuthorized`,
 1 AS `intCreatedByUserID`,
 1 AS `intIntegrationEndpointFormatID`,
 1 AS `intIntegrationProtocolID`,
 1 AS `intIntegrationSystemID`,
 1 AS `intIntegrationTemplateID`,
 1 AS `intUpdatedByUserID`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblintegrationaction`
--

DROP TABLE IF EXISTS `tblintegrationaction`;
/*!50001 DROP VIEW IF EXISTS `tblintegrationaction`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblintegrationaction` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolRunOnInit`,
 1 AS `dtmDateLastRun`,
 1 AS `intIntegrationActionAdvancedEndpointID`,
 1 AS `intIntegrationActionTypeID`,
 1 AS `intIntegrationID`,
 1 AS `strDescription`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblintegrationactionadvancedendpoint`
--

DROP TABLE IF EXISTS `tblintegrationactionadvancedendpoint`;
/*!50001 DROP VIEW IF EXISTS `tblintegrationactionadvancedendpoint`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblintegrationactionadvancedendpoint` AS SELECT 
 1 AS `id`,
 1 AS `intIntegrationSystemID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblintegrationactionlog`
--

DROP TABLE IF EXISTS `tblintegrationactionlog`;
/*!50001 DROP VIEW IF EXISTS `tblintegrationactionlog`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblintegrationactionlog` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDate`,
 1 AS `intActivityLogID`,
 1 AS `intCmmsObjectID`,
 1 AS `intParentActivityLogID`,
 1 AS `strCmmsObjectTableName`,
 1 AS `strExternalSystemObjectID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblintegrationactiontype`
--

DROP TABLE IF EXISTS `tblintegrationactiontype`;
/*!50001 DROP VIEW IF EXISTS `tblintegrationactiontype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblintegrationactiontype` AS SELECT 
 1 AS `id`,
 1 AS `strDescription`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblintegrationconfigurableproperty`
--

DROP TABLE IF EXISTS `tblintegrationconfigurableproperty`;
/*!50001 DROP VIEW IF EXISTS `tblintegrationconfigurableproperty`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblintegrationconfigurableproperty` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intIntegrationConfigurationPropertyType`,
 1 AS `intIntegrationConfigurationPropertyValueType`,
 1 AS `intIntegrationDtoType`,
 1 AS `intIntegrationID`,
 1 AS `strName`,
 1 AS `strValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblintegrationendpointformat`
--

DROP TABLE IF EXISTS `tblintegrationendpointformat`;
/*!50001 DROP VIEW IF EXISTS `tblintegrationendpointformat`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblintegrationendpointformat` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblintegrationparameter`
--

DROP TABLE IF EXISTS `tblintegrationparameter`;
/*!50001 DROP VIEW IF EXISTS `tblintegrationparameter`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblintegrationparameter` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intIntegrationID`,
 1 AS `intIntegrationParameterTypeID`,
 1 AS `strName`,
 1 AS `strValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblintegrationparametertype`
--

DROP TABLE IF EXISTS `tblintegrationparametertype`;
/*!50001 DROP VIEW IF EXISTS `tblintegrationparametertype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblintegrationparametertype` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblintegrationprotocol`
--

DROP TABLE IF EXISTS `tblintegrationprotocol`;
/*!50001 DROP VIEW IF EXISTS `tblintegrationprotocol`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblintegrationprotocol` AS SELECT 
 1 AS `id`,
 1 AS `strFormatExample`,
 1 AS `strName`,
 1 AS `strProtocolIdentifier`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblintegrationsystem`
--

DROP TABLE IF EXISTS `tblintegrationsystem`;
/*!50001 DROP VIEW IF EXISTS `tblintegrationsystem`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblintegrationsystem` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblintegrationtemplate`
--

DROP TABLE IF EXISTS `tblintegrationtemplate`;
/*!50001 DROP VIEW IF EXISTS `tblintegrationtemplate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblintegrationtemplate` AS SELECT 
 1 AS `id`,
 1 AS `dtmDateCreated`,
 1 AS `intIntegrationEndpointFormatID`,
 1 AS `intIntegrationProtocolID`,
 1 AS `intIntegrationSystemID`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblinventorytransaction`
--

DROP TABLE IF EXISTS `tblinventorytransaction`;
/*!50001 DROP VIEW IF EXISTS `tblinventorytransaction`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblinventorytransaction` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblCostPerUnit`,
 1 AS `dblTotalCost`,
 1 AS `dtmDate`,
 1 AS `intInventoryChargeID`,
 1 AS `intInventoryChargedForID`,
 1 AS `intInventoryChargedFromID`,
 1 AS `intStockTxTypeID`,
 1 AS `qtyTxQuantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblisoweekcalendar`
--

DROP TABLE IF EXISTS `tblisoweekcalendar`;
/*!50001 DROP VIEW IF EXISTS `tblisoweekcalendar`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblisoweekcalendar` AS SELECT 
 1 AS `id`,
 1 AS `dtmWeekEnd`,
 1 AS `dtmWeekStart`,
 1 AS `intWeek`,
 1 AS `intYear`,
 1 AS `strIsoName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblkpiresult`
--

DROP TABLE IF EXISTS `tblkpiresult`;
/*!50001 DROP VIEW IF EXISTS `tblkpiresult`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblkpiresult` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolBase`,
 1 AS `dblValue`,
 1 AS `dtmTime`,
 1 AS `intErrorCode`,
 1 AS `intQueryHash`,
 1 AS `intWidgetPositionID`,
 1 AS `strQuery`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbllanguage`
--

DROP TABLE IF EXISTS `tbllanguage`;
/*!50001 DROP VIEW IF EXISTS `tbllanguage`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbllanguage` AS SELECT 
 1 AS `id`,
 1 AS `strAlpha2Code`,
 1 AS `strEnglishName`,
 1 AS `strNativeName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbllastmeterreading`
--

DROP TABLE IF EXISTS `tbllastmeterreading`;
/*!50001 DROP VIEW IF EXISTS `tbllastmeterreading`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbllastmeterreading` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateSubmitted`,
 1 AS `intAssetID`,
 1 AS `intMeterReadingID`,
 1 AS `intMeterReadingUnitsID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblleadstate`
--

DROP TABLE IF EXISTS `tblleadstate`;
/*!50001 DROP VIEW IF EXISTS `tblleadstate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblleadstate` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbllineitem`
--

DROP TABLE IF EXISTS `tbllineitem`;
/*!50001 DROP VIEW IF EXISTS `tbllineitem`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbllineitem` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolBlockAutoDiscounting`,
 1 AS `bolUseActiveQuantity`,
 1 AS `dblDiscount`,
 1 AS `dblPrice`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDateUpdated`,
 1 AS `dtmDiscountEnd`,
 1 AS `dtmDiscountStart`,
 1 AS `intBillingTypeID`,
 1 AS `intDuration`,
 1 AS `intLineItemParentID`,
 1 AS `intOrderID`,
 1 AS `intProductID`,
 1 AS `intProductTierID`,
 1 AS `intPromotionalOfferID`,
 1 AS `intQuantity`,
 1 AS `intQuoteID`,
 1 AS `intSubscriptionPlanID`,
 1 AS `intUpdatedByUserID`,
 1 AS `qtyHoursOrdered`,
 1 AS `strDiscountType`,
 1 AS `strName`,
 1 AS `strNotes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbllocalization`
--

DROP TABLE IF EXISTS `tbllocalization`;
/*!50001 DROP VIEW IF EXISTS `tbllocalization`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbllocalization` AS SELECT 
 1 AS `id`,
 1 AS `bolActive`,
 1 AS `bolAvailableToNewSignups`,
 1 AS `dblMobilePercentLocalized`,
 1 AS `dblNativeMobilePercentLocalized`,
 1 AS `dblPercentLocalized`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDateModified`,
 1 AS `intCountryID`,
 1 AS `intCreatedByID`,
 1 AS `intDefaultCurrencyID`,
 1 AS `intLanguageID`,
 1 AS `intLastModifiedByID`,
 1 AS `intLocalizationTypeID`,
 1 AS `intLocalizedKeyCount`,
 1 AS `intMobileLocalizedKeyCount`,
 1 AS `intMobileTotalKeyCount`,
 1 AS `intNativeMobileLocalizedKeyCount`,
 1 AS `intNativeMobileTotalKeyCount`,
 1 AS `intOwnerTenantID`,
 1 AS `intParentLocalizationID`,
 1 AS `intTotalKeyCount`,
 1 AS `strAutoSuggest`,
 1 AS `strDateFormat`,
 1 AS `strDecimalFormat`,
 1 AS `strDecimalSeparator`,
 1 AS `strGroupSeparator`,
 1 AS `strIntegerFormat`,
 1 AS `strMobileProperties`,
 1 AS `strName`,
 1 AS `strNativeMobileProperties`,
 1 AS `strProperties`,
 1 AS `strQuantityFormat`,
 1 AS `strSupportVersion`,
 1 AS `strTimeFormat`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbllocalizationarchive`
--

DROP TABLE IF EXISTS `tbllocalizationarchive`;
/*!50001 DROP VIEW IF EXISTS `tbllocalizationarchive`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbllocalizationarchive` AS SELECT 
 1 AS `id`,
 1 AS `dblMobilePercentLocalized`,
 1 AS `dblNativeMobilePercentLocalized`,
 1 AS `dblPercentLocalized`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDateModified`,
 1 AS `intCountryID`,
 1 AS `intCreatedByID`,
 1 AS `intDefaultCurrencyID`,
 1 AS `intLanguageID`,
 1 AS `intLastModifiedByID`,
 1 AS `intLocalizationID`,
 1 AS `intLocalizedKeyCount`,
 1 AS `intMobileLocalizedKeyCount`,
 1 AS `intMobileTotalKeyCount`,
 1 AS `intNativeMobileLocalizedKeyCount`,
 1 AS `intNativeMobileTotalKeyCount`,
 1 AS `intOwnerTenantID`,
 1 AS `intTotalKeyCount`,
 1 AS `strDateFormat`,
 1 AS `strDecimalFormat`,
 1 AS `strDecimalSeparator`,
 1 AS `strGroupSeparator`,
 1 AS `strIntegerFormat`,
 1 AS `strMobileProperties`,
 1 AS `strName`,
 1 AS `strNativeMobileProperties`,
 1 AS `strProperties`,
 1 AS `strQuantityFormat`,
 1 AS `strSupportVersion`,
 1 AS `strTimeFormat`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbllocalizationpermission`
--

DROP TABLE IF EXISTS `tbllocalizationpermission`;
/*!50001 DROP VIEW IF EXISTS `tbllocalizationpermission`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbllocalizationpermission` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intLocalizationID`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbllocalizationtype`
--

DROP TABLE IF EXISTS `tbllocalizationtype`;
/*!50001 DROP VIEW IF EXISTS `tbllocalizationtype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbllocalizationtype` AS SELECT 
 1 AS `id`,
 1 AS `strDescription`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbllogalert`
--

DROP TABLE IF EXISTS `tbllogalert`;
/*!50001 DROP VIEW IF EXISTS `tbllogalert`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbllogalert` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolAcknowledged`,
 1 AS `bolEmailSent`,
 1 AS `bolSeen`,
 1 AS `dtmDate`,
 1 AS `intLogMonitoringID`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbllogcosttype`
--

DROP TABLE IF EXISTS `tbllogcosttype`;
/*!50001 DROP VIEW IF EXISTS `tbllogcosttype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbllogcosttype` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbllogmonitoring`
--

DROP TABLE IF EXISTS `tbllogmonitoring`;
/*!50001 DROP VIEW IF EXISTS `tbllogmonitoring`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbllogmonitoring` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateFrom`,
 1 AS `dtmDateTo`,
 1 AS `intCount`,
 1 AS `intSavedSearchID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbllogsavedsearch`
--

DROP TABLE IF EXISTS `tbllogsavedsearch`;
/*!50001 DROP VIEW IF EXISTS `tbllogsavedsearch`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbllogsavedsearch` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolDefault`,
 1 AS `bolEnableMonitoring`,
 1 AS `bolSendCriticalMessage`,
 1 AS `dblAlertThreshold`,
 1 AS `dtmLastMonitored`,
 1 AS `intAlertType`,
 1 AS `intCreatedByUserID`,
 1 AS `strMonitoringCronExpression`,
 1 AS `strName`,
 1 AS `strSavedSearch`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbllogsavedsearchuser`
--

DROP TABLE IF EXISTS `tbllogsavedsearchuser`;
/*!50001 DROP VIEW IF EXISTS `tbllogsavedsearchuser`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbllogsavedsearchuser` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolSendAlerts`,
 1 AS `intAlertsInterval`,
 1 AS `intLogSavedSearchID`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbllogtype`
--

DROP TABLE IF EXISTS `tbllogtype`;
/*!50001 DROP VIEW IF EXISTS `tbllogtype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbllogtype` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblloguser`
--

DROP TABLE IF EXISTS `tblloguser`;
/*!50001 DROP VIEW IF EXISTS `tblloguser`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblloguser` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolDeleted`,
 1 AS `bolGroup`,
 1 AS `strFullName`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblmaintenancetype`
--

DROP TABLE IF EXISTS `tblmaintenancetype`;
/*!50001 DROP VIEW IF EXISTS `tblmaintenancetype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblmaintenancetype` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `intUpdated`,
 1 AS `strColor`,
 1 AS `strDescription`,
 1 AS `strName`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblmarketingprogram`
--

DROP TABLE IF EXISTS `tblmarketingprogram`;
/*!50001 DROP VIEW IF EXISTS `tblmarketingprogram`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblmarketingprogram` AS SELECT 
 1 AS `id`,
 1 AS `strCode`,
 1 AS `strName`,
 1 AS `strNotes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblmasourcecounter`
--

DROP TABLE IF EXISTS `tblmasourcecounter`;
/*!50001 DROP VIEW IF EXISTS `tblmasourcecounter`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblmasourcecounter` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intMASourceListingID`,
 1 AS `intNumberViews`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblmasourcelisting`
--

DROP TABLE IF EXISTS `tblmasourcelisting`;
/*!50001 DROP VIEW IF EXISTS `tblmasourcelisting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblmasourcelisting` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolIncludeEvents`,
 1 AS `bolIncludeImages`,
 1 AS `bolIncludeMeterReadings`,
 1 AS `bolIncludeOffline`,
 1 AS `bolIncludeOtherFiles`,
 1 AS `bolIncludeWarranty`,
 1 AS `bolIncludeWorkOrders`,
 1 AS `dblLat`,
 1 AS `dblListingPrice`,
 1 AS `dblLng`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDatePosted`,
 1 AS `dtmDateUpdated`,
 1 AS `intAssetId`,
 1 AS `intCondition`,
 1 AS `intContactID`,
 1 AS `intCurrencyID`,
 1 AS `intDefaultImageID`,
 1 AS `intMASourceSellerID`,
 1 AS `intNumberCompare`,
 1 AS `intNumberContact`,
 1 AS `intNumberSearch`,
 1 AS `intPostedByID`,
 1 AS `intShipFromID`,
 1 AS `intStatus`,
 1 AS `strContactEmail`,
 1 AS `strContactPhone`,
 1 AS `strDescription`,
 1 AS `strMake`,
 1 AS `strModelNo`,
 1 AS `strName`,
 1 AS `strSerialNo`,
 1 AS `strShipAddress`,
 1 AS `strShipCity`,
 1 AS `strShipCountry`,
 1 AS `strShipProvince`,
 1 AS `strUnspcCode`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblmasourceseller`
--

DROP TABLE IF EXISTS `tblmasourceseller`;
/*!50001 DROP VIEW IF EXISTS `tblmasourceseller`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblmasourceseller` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDateUpdated`,
 1 AS `strSellerName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblmasourcewarranty`
--

DROP TABLE IF EXISTS `tblmasourcewarranty`;
/*!50001 DROP VIEW IF EXISTS `tblmasourcewarranty`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblmasourcewarranty` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateAdded`,
 1 AS `dtmExpiryDate`,
 1 AS `intMASourceListingID`,
 1 AS `strDescription`,
 1 AS `strMeterReadingValueLimit`,
 1 AS `strMeterReadingValueUnit`,
 1 AS `strUsageTermType`,
 1 AS `strWarrantyType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblmessage`
--

DROP TABLE IF EXISTS `tblmessage`;
/*!50001 DROP VIEW IF EXISTS `tblmessage`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblmessage` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolOpened`,
 1 AS `bolPopup`,
 1 AS `dtmDateCreated`,
 1 AS `intMessageFolderID`,
 1 AS `intRecipientID`,
 1 AS `intSenderID`,
 1 AS `strContents`,
 1 AS `strRecipients`,
 1 AS `strSubject`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblmessagefolder`
--

DROP TABLE IF EXISTS `tblmessagefolder`;
/*!50001 DROP VIEW IF EXISTS `tblmessagefolder`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblmessagefolder` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblmeterreading`
--

DROP TABLE IF EXISTS `tblmeterreading`;
/*!50001 DROP VIEW IF EXISTS `tblmeterreading`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblmeterreading` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblMeterReading`,
 1 AS `dtmDateSubmitted`,
 1 AS `intAssetID`,
 1 AS `intMeterReadingUnitsID`,
 1 AS `intSubmittedByUserID`,
 1 AS `intUpdated`,
 1 AS `intWorkOrderID`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblmeterreadingunit`
--

DROP TABLE IF EXISTS `tblmeterreadingunit`;
/*!50001 DROP VIEW IF EXISTS `tblmeterreadingunit`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblmeterreadingunit` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intPrecision`,
 1 AS `intSourceSysCode`,
 1 AS `intUpdated`,
 1 AS `strName`,
 1 AS `strSymbol`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblmilestone`
--

DROP TABLE IF EXISTS `tblmilestone`;
/*!50001 DROP VIEW IF EXISTS `tblmilestone`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblmilestone` AS SELECT 
 1 AS `id`,
 1 AS `bolIsActive`,
 1 AS `dblWeight`,
 1 AS `intPriority`,
 1 AS `strExternalHelpUrl`,
 1 AS `strName`,
 1 AS `strVideoHelpUrl`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblmilestonesresetthreshold`
--

DROP TABLE IF EXISTS `tblmilestonesresetthreshold`;
/*!50001 DROP VIEW IF EXISTS `tblmilestonesresetthreshold`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblmilestonesresetthreshold` AS SELECT 
 1 AS `id`,
 1 AS `dblThreshold`,
 1 AS `intDelayInDays`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblmisccost`
--

DROP TABLE IF EXISTS `tblmisccost`;
/*!50001 DROP VIEW IF EXISTS `tblmisccost`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblmisccost` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblActualTotalCost`,
 1 AS `dblActualUnitCost`,
 1 AS `dblEstimatedTotalCost`,
 1 AS `dblEstimatedUnitCost`,
 1 AS `intMiscCostTypeID`,
 1 AS `intUpdated`,
 1 AS `intWorkOrderID`,
 1 AS `qtyEstQuantity`,
 1 AS `qtyQuantity`,
 1 AS `strDescription`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblmisccosttype`
--

DROP TABLE IF EXISTS `tblmisccosttype`;
/*!50001 DROP VIEW IF EXISTS `tblmisccosttype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblmisccosttype` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intUpdated`,
 1 AS `strName`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblmove`
--

DROP TABLE IF EXISTS `tblmove`;
/*!50001 DROP VIEW IF EXISTS `tblmove`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblmove` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateConfirmed`,
 1 AS `dtmDateRejected`,
 1 AS `dtmDateRequested`,
 1 AS `dtmMoveDate`,
 1 AS `intAssetDestinationID`,
 1 AS `intBusinessDestinationID`,
 1 AS `intConfirmedByID`,
 1 AS `intDestinationTypeID`,
 1 AS `intFromSiteID`,
 1 AS `intMoveStatusID`,
 1 AS `intMovedByID`,
 1 AS `intProjectDestinationID`,
 1 AS `intRejectedByID`,
 1 AS `intRequestedByID`,
 1 AS `intSiteID`,
 1 AS `intUserDestinationID`,
 1 AS `intWorkOrderDestinationID`,
 1 AS `strAisle`,
 1 AS `strBin`,
 1 AS `strNotes`,
 1 AS `strRow`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblmoveasset`
--

DROP TABLE IF EXISTS `tblmoveasset`;
/*!50001 DROP VIEW IF EXISTS `tblmoveasset`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblmoveasset` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolAway`,
 1 AS `bolExclude`,
 1 AS `bolPending`,
 1 AS `bolSetOffline`,
 1 AS `bolSetOnline`,
 1 AS `dtmDateReturned`,
 1 AS `dtmReturnDate`,
 1 AS `intAssetID`,
 1 AS `intMoveID`,
 1 AS `intMovedFromID`,
 1 AS `intReasonOfflineID`,
 1 AS `intReasonOnlineID`,
 1 AS `intSiteID`,
 1 AS `strFromAisle`,
 1 AS `strFromBin`,
 1 AS `strFromRow`,
 1 AS `strNotes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblmoveback`
--

DROP TABLE IF EXISTS `tblmoveback`;
/*!50001 DROP VIEW IF EXISTS `tblmoveback`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblmoveback` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateCanceled`,
 1 AS `dtmDateConfirmed`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDateRequested`,
 1 AS `dtmMoveBackDate`,
 1 AS `intConfirmedByID`,
 1 AS `intFromSiteID`,
 1 AS `intMoveStatusID`,
 1 AS `intMovedBackByUserID`,
 1 AS `intRejectedByID`,
 1 AS `intRequestedByID`,
 1 AS `intSiteID`,
 1 AS `strNotes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblmovebackasset`
--

DROP TABLE IF EXISTS `tblmovebackasset`;
/*!50001 DROP VIEW IF EXISTS `tblmovebackasset`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblmovebackasset` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolExclude`,
 1 AS `bolPending`,
 1 AS `bolSetBackOffline`,
 1 AS `bolSetBackOnline`,
 1 AS `intAssetID`,
 1 AS `intMoveBackID`,
 1 AS `intOriginalMoveAssetID`,
 1 AS `intReasonOfflineID`,
 1 AS `intReasonOnlineID`,
 1 AS `intSiteID`,
 1 AS `strNotes`,
 1 AS `strToAisle`,
 1 AS `strToBin`,
 1 AS `strToRow`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblmovesitemanager`
--

DROP TABLE IF EXISTS `tblmovesitemanager`;
/*!50001 DROP VIEW IF EXISTS `tblmovesitemanager`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblmovesitemanager` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSiteID`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblmovestatus`
--

DROP TABLE IF EXISTS `tblmovestatus`;
/*!50001 DROP VIEW IF EXISTS `tblmovestatus`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblmovestatus` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `strDefaultLabel`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblnetworksettings`
--

DROP TABLE IF EXISTS `tblnetworksettings`;
/*!50001 DROP VIEW IF EXISTS `tblnetworksettings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblnetworksettings` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `bolAllowHttp`,
 1 AS `bolAllowHttps`,
 1 AS `bolUseProxyForOutbound`,
 1 AS `intDatabasePort`,
 1 AS `intExternalHttpPort`,
 1 AS `intExternalHttpsPort`,
 1 AS `intInternalHttpPort`,
 1 AS `intInternalHttpsPort`,
 1 AS `intStopPort`,
 1 AS `strExternalServerIPOrDomain`,
 1 AS `strInternalServerIP`,
 1 AS `strProxyPassword`,
 1 AS `strProxyPort`,
 1 AS `strProxyServer`,
 1 AS `strProxyUsername`,
 1 AS `strSSLCertificateFile`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblorder`
--

DROP TABLE IF EXISTS `tblorder`;
/*!50001 DROP VIEW IF EXISTS `tblorder`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblorder` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolExcludeTax`,
 1 AS `bolScheduledPaymentAttempted`,
 1 AS `bolSuppressDelinquencyAutomation`,
 1 AS `dblProrateRate`,
 1 AS `dblSubtotalAmount`,
 1 AS `dblTaxAmount`,
 1 AS `dblTotalAmount`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDateDue`,
 1 AS `dtmDatePaid`,
 1 AS `dtmDateRefunded`,
 1 AS `dtmDateSentOrder`,
 1 AS `dtmDateSentReceipt`,
 1 AS `dtmDateUpdated`,
 1 AS `intIssuedByTenantID`,
 1 AS `intPaymentProfileID`,
 1 AS `intQuoteID`,
 1 AS `intRecurringTypeID`,
 1 AS `intSubscriptionPlanID`,
 1 AS `strOrderKey`,
 1 AS `strPoNumber`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblorderrefund`
--

DROP TABLE IF EXISTS `tblorderrefund`;
/*!50001 DROP VIEW IF EXISTS `tblorderrefund`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblorderrefund` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblRefundAmount`,
 1 AS `dtmTimestamp`,
 1 AS `intCreatedByUserID`,
 1 AS `intOrderID`,
 1 AS `strDescription`,
 1 AS `strKey`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblordersystemproperty`
--

DROP TABLE IF EXISTS `tblordersystemproperty`;
/*!50001 DROP VIEW IF EXISTS `tblordersystemproperty`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblordersystemproperty` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmLastUpdated`,
 1 AS `intOrderID`,
 1 AS `intSystemID`,
 1 AS `strPropertyName`,
 1 AS `strPropertyValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpartner`
--

DROP TABLE IF EXISTS `tblpartner`;
/*!50001 DROP VIEW IF EXISTS `tblpartner`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpartner` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `bolActive`,
 1 AS `bolOptHelpCentre`,
 1 AS `bolOptWhiteLabel`,
 1 AS `bolOptWhiteLabelEmailTemplate`,
 1 AS `bolOptWhiteLabelSmtp`,
 1 AS `bolOptWhiteLabelUrl`,
 1 AS `dtmDateCreated`,
 1 AS `intAffiliateCampaignID`,
 1 AS `intAffiliateID`,
 1 AS `intAffiliateProgramID`,
 1 AS `intCreatedByUserID`,
 1 AS `intFileContentsID`,
 1 AS `intFileLoginScreenBrandContentsID`,
 1 AS `strAffiliateReferenceCode`,
 1 AS `strBaseUrl`,
 1 AS `strHelpCentreUrl`,
 1 AS `strMasterEmailTemplate`,
 1 AS `strSmtpAddress`,
 1 AS `strSmtpPassword`,
 1 AS `strSmtpSentByEmailAddress`,
 1 AS `strSmtpUsername`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpartsselection`
--

DROP TABLE IF EXISTS `tblpartsselection`;
/*!50001 DROP VIEW IF EXISTS `tblpartsselection`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpartsselection` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateCreated`,
 1 AS `intPartId`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpaymentmethod`
--

DROP TABLE IF EXISTS `tblpaymentmethod`;
/*!50001 DROP VIEW IF EXISTS `tblpaymentmethod`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpaymentmethod` AS SELECT 
 1 AS `id`,
 1 AS `strName`,
 1 AS `strSalesforcePaymentMethodKey`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpaymentprofile`
--

DROP TABLE IF EXISTS `tblpaymentprofile`;
/*!50001 DROP VIEW IF EXISTS `tblpaymentprofile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpaymentprofile` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolDefault`,
 1 AS `dtmDateCreated`,
 1 AS `intAccountAddressID`,
 1 AS `intCreatedByUserID`,
 1 AS `intPaymentMethodID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpermission`
--

DROP TABLE IF EXISTS `tblpermission`;
/*!50001 DROP VIEW IF EXISTS `tblpermission`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpermission` AS SELECT 
 1 AS `id`,
 1 AS `intApplicationID`,
 1 AS `strName`,
 1 AS `strObjectName`,
 1 AS `strObjectType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblperrecordvalue`
--

DROP TABLE IF EXISTS `tblperrecordvalue`;
/*!50001 DROP VIEW IF EXISTS `tblperrecordvalue`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblperrecordvalue` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolBooleanValue`,
 1 AS `datDateValue`,
 1 AS `dblDoubleValue`,
 1 AS `dtmDateTimeValue`,
 1 AS `intIntegerValue`,
 1 AS `intLongValue`,
 1 AS `intRecordID`,
 1 AS `intTableResourceID`,
 1 AS `qtyQtyValue`,
 1 AS `strLongStringValue`,
 1 AS `strName`,
 1 AS `strStringValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblplanfeature`
--

DROP TABLE IF EXISTS `tblplanfeature`;
/*!50001 DROP VIEW IF EXISTS `tblplanfeature`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblplanfeature` AS SELECT 
 1 AS `id`,
 1 AS `intPlanFeatureCategoryID`,
 1 AS `intShowOrder`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblplanfeaturecategory`
--

DROP TABLE IF EXISTS `tblplanfeaturecategory`;
/*!50001 DROP VIEW IF EXISTS `tblplanfeaturecategory`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblplanfeaturecategory` AS SELECT 
 1 AS `id`,
 1 AS `intShowOrder`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblplanfeatureproducttier`
--

DROP TABLE IF EXISTS `tblplanfeatureproducttier`;
/*!50001 DROP VIEW IF EXISTS `tblplanfeatureproducttier`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblplanfeatureproducttier` AS SELECT 
 1 AS `id`,
 1 AS `intPlanFeatureID`,
 1 AS `intProductTierID`,
 1 AS `strAdditionalInformation`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblplatformeventtype`
--

DROP TABLE IF EXISTS `tblplatformeventtype`;
/*!50001 DROP VIEW IF EXISTS `tblplatformeventtype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblplatformeventtype` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpricingtier`
--

DROP TABLE IF EXISTS `tblpricingtier`;
/*!50001 DROP VIEW IF EXISTS `tblpricingtier`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpricingtier` AS SELECT 
 1 AS `id`,
 1 AS `bolAvailable`,
 1 AS `dblDefaultDiscount`,
 1 AS `dblDefaultMonthlyPrice`,
 1 AS `dblDefaultPrice`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDateUpdated`,
 1 AS `intDefaultQuantity`,
 1 AS `intLastUpdatedByUserID`,
 1 AS `intMaximumQuantity`,
 1 AS `intMinimumQuantity`,
 1 AS `intProductID`,
 1 AS `intProductOfferingID`,
 1 AS `intProductTierID`,
 1 AS `strEcomDescription`,
 1 AS `strIncludes`,
 1 AS `strKey`,
 1 AS `strSalesforceProductKey`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpricingtierfeature`
--

DROP TABLE IF EXISTS `tblpricingtierfeature`;
/*!50001 DROP VIEW IF EXISTS `tblpricingtierfeature`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpricingtierfeature` AS SELECT 
 1 AS `id`,
 1 AS `bolSeatMultiplier`,
 1 AS `dblOverageUnitCost`,
 1 AS `intFeatureID`,
 1 AS `intFeatureValuePeriodTypeID`,
 1 AS `intFeatureValueTypeID`,
 1 AS `intOverageControlTypeID`,
 1 AS `intOverageUnitCostThresholdTypeID`,
 1 AS `intPricingTierID`,
 1 AS `qtyOverageUnitCostThreshold`,
 1 AS `qtyValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpriority`
--

DROP TABLE IF EXISTS `tblpriority`;
/*!50001 DROP VIEW IF EXISTS `tblpriority`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpriority` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `intOrder`,
 1 AS `intUpdated`,
 1 AS `strName`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblproduct`
--

DROP TABLE IF EXISTS `tblproduct`;
/*!50001 DROP VIEW IF EXISTS `tblproduct`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblproduct` AS SELECT 
 1 AS `id`,
 1 AS `bolAvailable`,
 1 AS `bolTimeTrackingEnabled`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDateUpdated`,
 1 AS `intBillingTypeID`,
 1 AS `intLastUpdatedByUserID`,
 1 AS `intProductParentID`,
 1 AS `intProductUnitID`,
 1 AS `strName`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblproductdiscountcontrol`
--

DROP TABLE IF EXISTS `tblproductdiscountcontrol`;
/*!50001 DROP VIEW IF EXISTS `tblproductdiscountcontrol`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblproductdiscountcontrol` AS SELECT 
 1 AS `id`,
 1 AS `dblMaxDiscount`,
 1 AS `dtmDateUpdated`,
 1 AS `intLastUpdatedByUserID`,
 1 AS `intProductID`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblproductoffering`
--

DROP TABLE IF EXISTS `tblproductoffering`;
/*!50001 DROP VIEW IF EXISTS `tblproductoffering`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblproductoffering` AS SELECT 
 1 AS `id`,
 1 AS `bolAvailable`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDateUpdated`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblproductofferingfeature`
--

DROP TABLE IF EXISTS `tblproductofferingfeature`;
/*!50001 DROP VIEW IF EXISTS `tblproductofferingfeature`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblproductofferingfeature` AS SELECT 
 1 AS `id`,
 1 AS `intFeatureID`,
 1 AS `intProductOfferingID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblproducttier`
--

DROP TABLE IF EXISTS `tblproducttier`;
/*!50001 DROP VIEW IF EXISTS `tblproducttier`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblproducttier` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblproducttimetracking`
--

DROP TABLE IF EXISTS `tblproducttimetracking`;
/*!50001 DROP VIEW IF EXISTS `tblproducttimetracking`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblproducttimetracking` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateCompleted`,
 1 AS `dtmDateScheduled`,
 1 AS `intOrderLineItemID`,
 1 AS `intTrainerUserID`,
 1 AS `qtyHoursConsumed`,
 1 AS `strNotes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblproductunit`
--

DROP TABLE IF EXISTS `tblproductunit`;
/*!50001 DROP VIEW IF EXISTS `tblproductunit`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblproductunit` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblproject`
--

DROP TABLE IF EXISTS `tblproject`;
/*!50001 DROP VIEW IF EXISTS `tblproject`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblproject` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmActualEndDate`,
 1 AS `dtmActualStartDate`,
 1 AS `dtmProjectedEndDate`,
 1 AS `dtmProjectedStartDate`,
 1 AS `intParentProjectID`,
 1 AS `intSiteID`,
 1 AS `strDescription`,
 1 AS `strName`,
 1 AS `strNotes`,
 1 AS `strSysCustomColumnValues`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblprojectuser`
--

DROP TABLE IF EXISTS `tblprojectuser`;
/*!50001 DROP VIEW IF EXISTS `tblprojectuser`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblprojectuser` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateAdded`,
 1 AS `intProjectID`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpromotionaloffer`
--

DROP TABLE IF EXISTS `tblpromotionaloffer`;
/*!50001 DROP VIEW IF EXISTS `tblpromotionaloffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpromotionaloffer` AS SELECT 
 1 AS `id`,
 1 AS `bolApplyToCmmsOnly`,
 1 AS `bolAvailable`,
 1 AS `bolSingleUse`,
 1 AS `dblDiscount`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDateExpiry`,
 1 AS `dtmDateUpdated`,
 1 AS `intDurationMonths`,
 1 AS `intLastUpdatedByUserID`,
 1 AS `intLimit`,
 1 AS `intPromotionType`,
 1 AS `intUsed`,
 1 AS `strDescription`,
 1 AS `strDiscountCode`,
 1 AS `strMessageOnSignup`,
 1 AS `strOfferTitle`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpromotionalofferdetail`
--

DROP TABLE IF EXISTS `tblpromotionalofferdetail`;
/*!50001 DROP VIEW IF EXISTS `tblpromotionalofferdetail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpromotionalofferdetail` AS SELECT 
 1 AS `id`,
 1 AS `intAddProductID`,
 1 AS `intNewSeats`,
 1 AS `intPromotionalOfferID`,
 1 AS `intTypeCode`,
 1 AS `intUpgradeProductTierID`,
 1 AS `intUpgradeRecurringTypeID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpromotionalofferpricingtier`
--

DROP TABLE IF EXISTS `tblpromotionalofferpricingtier`;
/*!50001 DROP VIEW IF EXISTS `tblpromotionalofferpricingtier`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpromotionalofferpricingtier` AS SELECT 
 1 AS `id`,
 1 AS `intPricingTierID`,
 1 AS `intPromotionalOfferID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpurchaseorder`
--

DROP TABLE IF EXISTS `tblpurchaseorder`;
/*!50001 DROP VIEW IF EXISTS `tblpurchaseorder`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpurchaseorder` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblFreight`,
 1 AS `dblSubtotal`,
 1 AS `dblTax1`,
 1 AS `dblTax2`,
 1 AS `dblTotal`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDateExpectedDelivery`,
 1 AS `dtmDateLastUpdated`,
 1 AS `dtmDateReceived`,
 1 AS `dtmDateRequiredBy`,
 1 AS `dtmDateSubmitted`,
 1 AS `intAccountID`,
 1 AS `intAssetID`,
 1 AS `intBillToCountryID`,
 1 AS `intBillToID`,
 1 AS `intBillingTermID`,
 1 AS `intChargeDepartmentID`,
 1 AS `intCode`,
 1 AS `intCreatedByUserID`,
 1 AS `intLastUpdatedUserID`,
 1 AS `intLocationID`,
 1 AS `intPurchaseCurrencyID`,
 1 AS `intPurchaseOrderStatusID`,
 1 AS `intSendToSupplierMethod`,
 1 AS `intShipToCountryID`,
 1 AS `intShipToID`,
 1 AS `intSiteID`,
 1 AS `intSupplierCountryID`,
 1 AS `intSupplierID`,
 1 AS `intUpdated`,
 1 AS `intVendorID`,
 1 AS `intWorkOrderID`,
 1 AS `strBillToAddress`,
 1 AS `strBillToCity`,
 1 AS `strBillToPostalCode`,
 1 AS `strBillToProvince`,
 1 AS `strPurchaseOrderReference`,
 1 AS `strShipToAddress`,
 1 AS `strShipToCity`,
 1 AS `strShipToPostalCode`,
 1 AS `strShipToProvince`,
 1 AS `strSupplierAddress`,
 1 AS `strSupplierCity`,
 1 AS `strSupplierPostalCode`,
 1 AS `strSupplierProvince`,
 1 AS `strTransactionID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpurchaseorderadditionalcost`
--

DROP TABLE IF EXISTS `tblpurchaseorderadditionalcost`;
/*!50001 DROP VIEW IF EXISTS `tblpurchaseorderadditionalcost`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpurchaseorderadditionalcost` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolOverridePoLineItemTax`,
 1 AS `dblPrice`,
 1 AS `dblTaxRate`,
 1 AS `intBusinessID`,
 1 AS `intPurchaseOrderAdditionalCostTypeID`,
 1 AS `intPurchaseOrderID`,
 1 AS `intShippingTypeID`,
 1 AS `strDescription`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpurchaseorderadditionalcosttype`
--

DROP TABLE IF EXISTS `tblpurchaseorderadditionalcosttype`;
/*!50001 DROP VIEW IF EXISTS `tblpurchaseorderadditionalcosttype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpurchaseorderadditionalcosttype` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `bolAlwaysShowOnNewPo`,
 1 AS `intControlID`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpurchaseorderlineitem`
--

DROP TABLE IF EXISTS `tblpurchaseorderlineitem`;
/*!50001 DROP VIEW IF EXISTS `tblpurchaseorderlineitem`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpurchaseorderlineitem` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolAddedDirectlyToPurchaseOrder`,
 1 AS `bolProductionEquipmentDownWhileOnOrder`,
 1 AS `bolSupplierConfirmed`,
 1 AS `dblRemoteOrgUnitPrice`,
 1 AS `dblTaxRate`,
 1 AS `dblTotalPrice`,
 1 AS `dblUnitPrice`,
 1 AS `dtmDateCreated`,
 1 AS `dtmRequiredByDate`,
 1 AS `intAccountID`,
 1 AS `intAssetID`,
 1 AS `intChargeDepartmentID`,
 1 AS `intParentPurchaseOrderLineItemID`,
 1 AS `intPurchaseOrderID`,
 1 AS `intRequestedByUserID`,
 1 AS `intShipToLocationID`,
 1 AS `intSiteID`,
 1 AS `intSourceAssetID`,
 1 AS `intSourceWorkOrderID`,
 1 AS `intStockHistoryID`,
 1 AS `intStockID`,
 1 AS `intSupplierID`,
 1 AS `intUpdated`,
 1 AS `qtyOnOrder`,
 1 AS `qtyRecieved`,
 1 AS `strBusinessAssetNumber`,
 1 AS `strDescription`,
 1 AS `strJSON`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpurchaseorderlineitemrfq`
--

DROP TABLE IF EXISTS `tblpurchaseorderlineitemrfq`;
/*!50001 DROP VIEW IF EXISTS `tblpurchaseorderlineitemrfq`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpurchaseorderlineitemrfq` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intPurchaseOrderLineItemID`,
 1 AS `intRFQID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpurchaseorderlog`
--

DROP TABLE IF EXISTS `tblpurchaseorderlog`;
/*!50001 DROP VIEW IF EXISTS `tblpurchaseorderlog`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpurchaseorderlog` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateLogged`,
 1 AS `intFromStatusId`,
 1 AS `intPurchaseOrderID`,
 1 AS `intToStatusId`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpurchaseorderstatus`
--

DROP TABLE IF EXISTS `tblpurchaseorderstatus`;
/*!50001 DROP VIEW IF EXISTS `tblpurchaseorderstatus`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpurchaseorderstatus` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `intControlID`,
 1 AS `intUpdated`,
 1 AS `strDefaultLabel`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpurchaseorderstatustransition`
--

DROP TABLE IF EXISTS `tblpurchaseorderstatustransition`;
/*!50001 DROP VIEW IF EXISTS `tblpurchaseorderstatustransition`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpurchaseorderstatustransition` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `bolRequireComment`,
 1 AS `bolSendNotification`,
 1 AS `intFromStatusID`,
 1 AS `intToStatusID`,
 1 AS `strDefaultLabel`,
 1 AS `strName`,
 1 AS `strPropertiesFileKey`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpurchaseorderstatustransitionpermission`
--

DROP TABLE IF EXISTS `tblpurchaseorderstatustransitionpermission`;
/*!50001 DROP VIEW IF EXISTS `tblpurchaseorderstatustransitionpermission`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpurchaseorderstatustransitionpermission` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intPurchaseOrderStatusTransitionId`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblpurchaseorderuser`
--

DROP TABLE IF EXISTS `tblpurchaseorderuser`;
/*!50001 DROP VIEW IF EXISTS `tblpurchaseorderuser`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblpurchaseorderuser` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intPurchaseOrderID`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblquote`
--

DROP TABLE IF EXISTS `tblquote`;
/*!50001 DROP VIEW IF EXISTS `tblquote`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblquote` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolCreatedAsInvite`,
 1 AS `bolExcludeTax`,
 1 AS `bolIncludeInForecast`,
 1 AS `bolLockQuoteForUserAccept`,
 1 AS `dblClosingPercent`,
 1 AS `dtmDateClosed`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDateSent`,
 1 AS `dtmDateUpdated`,
 1 AS `dtmForecastedCloseDate`,
 1 AS `intAcceptedByUserID`,
 1 AS `intAccountQuoteStatusID`,
 1 AS `intExpiryDays`,
 1 AS `intForecastedRecurringTypeId`,
 1 AS `intIssuedByTenantID`,
 1 AS `intPreparedByUserID`,
 1 AS `intPromotionalOfferID`,
 1 AS `intRecurringTypeID`,
 1 AS `strPoNumber`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblquotestatus`
--

DROP TABLE IF EXISTS `tblquotestatus`;
/*!50001 DROP VIEW IF EXISTS `tblquotestatus`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblquotestatus` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblrcaaction`
--

DROP TABLE IF EXISTS `tblrcaaction`;
/*!50001 DROP VIEW IF EXISTS `tblrcaaction`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblrcaaction` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolActive`,
 1 AS `intUpdated`,
 1 AS `strCode`,
 1 AS `strDescription`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblrcacause`
--

DROP TABLE IF EXISTS `tblrcacause`;
/*!50001 DROP VIEW IF EXISTS `tblrcacause`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblrcacause` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolActive`,
 1 AS `intUpdated`,
 1 AS `strCode`,
 1 AS `strDescription`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblrcagrouping`
--

DROP TABLE IF EXISTS `tblrcagrouping`;
/*!50001 DROP VIEW IF EXISTS `tblrcagrouping`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblrcagrouping` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intAssetCategoryID`,
 1 AS `intAssetID`,
 1 AS `intRCAProblemID`,
 1 AS `intUpdated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblrcagroupingaction`
--

DROP TABLE IF EXISTS `tblrcagroupingaction`;
/*!50001 DROP VIEW IF EXISTS `tblrcagroupingaction`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblrcagroupingaction` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intRCAActionID`,
 1 AS `intRCAGroupingID`,
 1 AS `intUpdated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblrcagroupingcause`
--

DROP TABLE IF EXISTS `tblrcagroupingcause`;
/*!50001 DROP VIEW IF EXISTS `tblrcagroupingcause`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblrcagroupingcause` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intRCACauseID`,
 1 AS `intRCAGroupingID`,
 1 AS `intUpdated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblrcaproblem`
--

DROP TABLE IF EXISTS `tblrcaproblem`;
/*!50001 DROP VIEW IF EXISTS `tblrcaproblem`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblrcaproblem` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolActive`,
 1 AS `intUpdated`,
 1 AS `strCode`,
 1 AS `strDescription`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblreasontosetassetoffline`
--

DROP TABLE IF EXISTS `tblreasontosetassetoffline`;
/*!50001 DROP VIEW IF EXISTS `tblreasontosetassetoffline`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblreasontosetassetoffline` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSourceSysCode`,
 1 AS `intUpdated`,
 1 AS `strDescription`,
 1 AS `strName`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblreasontosetassetonline`
--

DROP TABLE IF EXISTS `tblreasontosetassetonline`;
/*!50001 DROP VIEW IF EXISTS `tblreasontosetassetonline`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblreasontosetassetonline` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSourceSysCode`,
 1 AS `intUpdated`,
 1 AS `strDescription`,
 1 AS `strName`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblreceipt`
--

DROP TABLE IF EXISTS `tblreceipt`;
/*!50001 DROP VIEW IF EXISTS `tblreceipt`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblreceipt` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateOrdered`,
 1 AS `dtmDateReceived`,
 1 AS `intCode`,
 1 AS `intPurchaseCurrencyID`,
 1 AS `intPurchaseOrderID`,
 1 AS `intReceiptStatusID`,
 1 AS `intReceivedByUserID`,
 1 AS `intSiteID`,
 1 AS `intSupplierID`,
 1 AS `intUpdated`,
 1 AS `strPackingSlip`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblreceiptlineitem`
--

DROP TABLE IF EXISTS `tblreceiptlineitem`;
/*!50001 DROP VIEW IF EXISTS `tblreceiptlineitem`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblreceiptlineitem` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblPurchasePricePerUnit`,
 1 AS `dblPurchasePriceTotal`,
 1 AS `dtmDateExpiryOfInventoryItems`,
 1 AS `intAssetID`,
 1 AS `intParentReceiptLineItemID`,
 1 AS `intPurchaseOrderLineItemID`,
 1 AS `intReceiptID`,
 1 AS `intReceiveToFacilityID`,
 1 AS `intReceiveToStockID`,
 1 AS `intStockID`,
 1 AS `intUpdated`,
 1 AS `intV2ID`,
 1 AS `qtyQuantityOrdered`,
 1 AS `qtyQuantityReceived`,
 1 AS `strDescription`,
 1 AS `strImportedFromTable`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblreceiptstatus`
--

DROP TABLE IF EXISTS `tblreceiptstatus`;
/*!50001 DROP VIEW IF EXISTS `tblreceiptstatus`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblreceiptstatus` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `intControlID`,
 1 AS `intUpdated`,
 1 AS `strDefaultLabel`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblreceiptstatustransition`
--

DROP TABLE IF EXISTS `tblreceiptstatustransition`;
/*!50001 DROP VIEW IF EXISTS `tblreceiptstatustransition`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblreceiptstatustransition` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intFromStatusID`,
 1 AS `intToStatusID`,
 1 AS `strDefaultLabel`,
 1 AS `strName`,
 1 AS `strPropertiesFileKey`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblreconciliationcontrol`
--

DROP TABLE IF EXISTS `tblreconciliationcontrol`;
/*!50001 DROP VIEW IF EXISTS `tblreconciliationcontrol`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblreconciliationcontrol` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolIsCreate`,
 1 AS `bolIsDelete`,
 1 AS `bolIsRead`,
 1 AS `bolIsUpdate`,
 1 AS `intIntegrationID`,
 1 AS `strBaseTable`,
 1 AS `strOwnedByEntity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblrecurringtype`
--

DROP TABLE IF EXISTS `tblrecurringtype`;
/*!50001 DROP VIEW IF EXISTS `tblrecurringtype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblrecurringtype` AS SELECT 
 1 AS `id`,
 1 AS `intDaysInAdvanceCreateOrder`,
 1 AS `intDaysInAdvanceSendOrder`,
 1 AS `intRecurringPeriod`,
 1 AS `strKey`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblregionuser`
--

DROP TABLE IF EXISTS `tblregionuser`;
/*!50001 DROP VIEW IF EXISTS `tblregionuser`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblregionuser` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intRegionID`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblregionusergroup`
--

DROP TABLE IF EXISTS `tblregionusergroup`;
/*!50001 DROP VIEW IF EXISTS `tblregionusergroup`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblregionusergroup` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intGroupID`,
 1 AS `intRegionUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblreportcategory`
--

DROP TABLE IF EXISTS `tblreportcategory`;
/*!50001 DROP VIEW IF EXISTS `tblreportcategory`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblreportcategory` AS SELECT 
 1 AS `id`,
 1 AS `intSysCode`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblreportpreset`
--

DROP TABLE IF EXISTS `tblreportpreset`;
/*!50001 DROP VIEW IF EXISTS `tblreportpreset`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblreportpreset` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intReportTemplateID`,
 1 AS `strDescription`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblreportpresetparameter`
--

DROP TABLE IF EXISTS `tblreportpresetparameter`;
/*!50001 DROP VIEW IF EXISTS `tblreportpresetparameter`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblreportpresetparameter` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `intParamValueType`,
 1 AS `intReportPresetID`,
 1 AS `strParamName`,
 1 AS `strParamValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblreportstoresolved`
--

DROP TABLE IF EXISTS `tblreportstoresolved`;
/*!50001 DROP VIEW IF EXISTS `tblreportstoresolved`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblreportstoresolved` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intChildID`,
 1 AS `intParentID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblreporttemplate`
--

DROP TABLE IF EXISTS `tblreporttemplate`;
/*!50001 DROP VIEW IF EXISTS `tblreporttemplate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblreporttemplate` AS SELECT 
 1 AS `id`,
 1 AS `bolAvailable`,
 1 AS `bolDoNotUseWithEJP`,
 1 AS `bolScheduled`,
 1 AS `intFileContentsID`,
 1 AS `intMawebAddOnID`,
 1 AS `intOwnerTenantID`,
 1 AS `intRenderReportAs`,
 1 AS `intReportCategoryID`,
 1 AS `intReportTypeID`,
 1 AS `strClassification`,
 1 AS `strDefinition`,
 1 AS `strDescription`,
 1 AS `strInstructions`,
 1 AS `strName`,
 1 AS `strReportAsJson`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblreporttype`
--

DROP TABLE IF EXISTS `tblreporttype`;
/*!50001 DROP VIEW IF EXISTS `tblreporttype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblreporttype` AS SELECT 
 1 AS `id`,
 1 AS `intOrder`,
 1 AS `strDescription`,
 1 AS `strName`,
 1 AS `strProviderClassName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblresetpassword`
--

DROP TABLE IF EXISTS `tblresetpassword`;
/*!50001 DROP VIEW IF EXISTS `tblresetpassword`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblresetpassword` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmTokenCreated`,
 1 AS `dtmTokenUsed`,
 1 AS `intUserID`,
 1 AS `strToken`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblresourceconsumertype`
--

DROP TABLE IF EXISTS `tblresourceconsumertype`;
/*!50001 DROP VIEW IF EXISTS `tblresourceconsumertype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblresourceconsumertype` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblresourcenamespace`
--

DROP TABLE IF EXISTS `tblresourcenamespace`;
/*!50001 DROP VIEW IF EXISTS `tblresourcenamespace`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblresourcenamespace` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblresourceservice`
--

DROP TABLE IF EXISTS `tblresourceservice`;
/*!50001 DROP VIEW IF EXISTS `tblresourceservice`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblresourceservice` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblresourcetype`
--

DROP TABLE IF EXISTS `tblresourcetype`;
/*!50001 DROP VIEW IF EXISTS `tblresourcetype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblresourcetype` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblrfq`
--

DROP TABLE IF EXISTS `tblrfq`;
/*!50001 DROP VIEW IF EXISTS `tblrfq`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblrfq` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateExpectedDelivery`,
 1 AS `dtmDateRequiredResponse`,
 1 AS `dtmDateSent`,
 1 AS `intBillToCountryID`,
 1 AS `intBillToID`,
 1 AS `intBusinessID`,
 1 AS `intCode`,
 1 AS `intCreatedByUserID`,
 1 AS `intRFQStatusID`,
 1 AS `intShipToCountryID`,
 1 AS `intShipToID`,
 1 AS `intSiteID`,
 1 AS `intSupplierCountryID`,
 1 AS `intSupplierID`,
 1 AS `strBillToAddress`,
 1 AS `strBillToCity`,
 1 AS `strBillToPostalCode`,
 1 AS `strBillToProvince`,
 1 AS `strMessageContent`,
 1 AS `strMessageSubject`,
 1 AS `strQuoteReferenceNumber`,
 1 AS `strShipToAddress`,
 1 AS `strShipToCity`,
 1 AS `strShipToPostalCode`,
 1 AS `strShipToProvince`,
 1 AS `strSupplierAddress`,
 1 AS `strSupplierCity`,
 1 AS `strSupplierPostalCode`,
 1 AS `strSupplierProvince`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblrfqasset`
--

DROP TABLE IF EXISTS `tblrfqasset`;
/*!50001 DROP VIEW IF EXISTS `tblrfqasset`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblrfqasset` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intAssetID`,
 1 AS `intRFQID`,
 1 AS `qtyQuantityRequested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblrfqlineitem`
--

DROP TABLE IF EXISTS `tblrfqlineitem`;
/*!50001 DROP VIEW IF EXISTS `tblrfqlineitem`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblrfqlineitem` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblQuotedPricePerUnit`,
 1 AS `dblQuotedPriceTotal`,
 1 AS `intAssetID`,
 1 AS `intParentRFQLineItemID`,
 1 AS `intPurchaseOrderLineItemID`,
 1 AS `intRFQID`,
 1 AS `qtyQuoted`,
 1 AS `qtyRequested`,
 1 AS `strBusinessAssetNumber`,
 1 AS `strDescription`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblrfqqueue`
--

DROP TABLE IF EXISTS `tblrfqqueue`;
/*!50001 DROP VIEW IF EXISTS `tblrfqqueue`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblrfqqueue` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateAdded`,
 1 AS `intAssetID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblrfqstatus`
--

DROP TABLE IF EXISTS `tblrfqstatus`;
/*!50001 DROP VIEW IF EXISTS `tblrfqstatus`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblrfqstatus` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `intControlID`,
 1 AS `strDefaultLabel`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblrfqstatustransition`
--

DROP TABLE IF EXISTS `tblrfqstatustransition`;
/*!50001 DROP VIEW IF EXISTS `tblrfqstatustransition`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblrfqstatustransition` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intFromStatusID`,
 1 AS `intToStatusID`,
 1 AS `strDefaultLabel`,
 1 AS `strName`,
 1 AS `strPropertiesFileKey`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblrole`
--

DROP TABLE IF EXISTS `tblrole`;
/*!50001 DROP VIEW IF EXISTS `tblrole`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblrole` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `strRoleSysCode`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblrolepermission`
--

DROP TABLE IF EXISTS `tblrolepermission`;
/*!50001 DROP VIEW IF EXISTS `tblrolepermission`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblrolepermission` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intPermissionID`,
 1 AS `intRoleID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblsalesaccounttracking`
--

DROP TABLE IF EXISTS `tblsalesaccounttracking`;
/*!50001 DROP VIEW IF EXISTS `tblsalesaccounttracking`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblsalesaccounttracking` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmAccountRelationshipEnd`,
 1 AS `dtmAccountRelationshipStart`,
 1 AS `intPredecessorID`,
 1 AS `intSalespersonTypeID`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblsalespersontype`
--

DROP TABLE IF EXISTS `tblsalespersontype`;
/*!50001 DROP VIEW IF EXISTS `tblsalespersontype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblsalespersontype` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblscheduledjob`
--

DROP TABLE IF EXISTS `tblscheduledjob`;
/*!50001 DROP VIEW IF EXISTS `tblscheduledjob`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblscheduledjob` AS SELECT 
 1 AS `id`,
 1 AS `dtmRunTime`,
 1 AS `intRecurrencePeriod`,
 1 AS `intRunDuration`,
 1 AS `intRunLatency`,
 1 AS `strDescription`,
 1 AS `strError`,
 1 AS `strJobData`,
 1 AS `strKey`,
 1 AS `strName`,
 1 AS `strStatus`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblscheduledmaintenance`
--

DROP TABLE IF EXISTS `tblscheduledmaintenance`;
/*!50001 DROP VIEW IF EXISTS `tblscheduledmaintenance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblscheduledmaintenance` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolCanFireSMWithOpenWO`,
 1 AS `bolNotifyCreatorWhenDWOE`,
 1 AS `bolNotifyTechniciansWhenDWOE`,
 1 AS `bolWORequiresSignature`,
 1 AS `dblSuggestedTime`,
 1 AS `dblTimeEstimatedHours`,
 1 AS `dtmCreateDate`,
 1 AS `dtmUpdatedDate`,
 1 AS `intAccountID`,
 1 AS `intChargeDepartmentID`,
 1 AS `intMaintenanceTypeID`,
 1 AS `intPriorityID`,
 1 AS `intProjectID`,
 1 AS `intRequestorUserID`,
 1 AS `intScheduledMaintenanceStatusID`,
 1 AS `intSiteID`,
 1 AS `intStartAsWorkOrderStatusID`,
 1 AS `intSuggestedCompletion`,
 1 AS `intUpdated`,
 1 AS `strAdminNotes`,
 1 AS `strAssetIds`,
 1 AS `strAssets`,
 1 AS `strAssignedUserIds`,
 1 AS `strAssignedUsers`,
 1 AS `strCode`,
 1 AS `strCompletionNotes`,
 1 AS `strCustomerIds`,
 1 AS `strCustomers`,
 1 AS `strDescription`,
 1 AS `strRType`,
 1 AS `strScheduleDescription`,
 1 AS `strUuid`,
 1 AS `strVendorIds`,
 1 AS `strVendors`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblscheduledmaintenanceactivitylog`
--

DROP TABLE IF EXISTS `tblscheduledmaintenanceactivitylog`;
/*!50001 DROP VIEW IF EXISTS `tblscheduledmaintenanceactivitylog`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblscheduledmaintenanceactivitylog` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDate`,
 1 AS `intActivityLogID`,
 1 AS `intAssetEventID`,
 1 AS `intMeterReadingID`,
 1 AS `intUserID`,
 1 AS `intWorkOrderID`,
 1 AS `strTriggerDescription`,
 1 AS `strTriggerThresholdValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblscheduledmaintenanceasset`
--

DROP TABLE IF EXISTS `tblscheduledmaintenanceasset`;
/*!50001 DROP VIEW IF EXISTS `tblscheduledmaintenanceasset`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblscheduledmaintenanceasset` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intAssetID`,
 1 AS `intScheduledMaintenanceID`,
 1 AS `intUpdated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblscheduledmaintenancebusiness`
--

DROP TABLE IF EXISTS `tblscheduledmaintenancebusiness`;
/*!50001 DROP VIEW IF EXISTS `tblscheduledmaintenancebusiness`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblscheduledmaintenancebusiness` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolPrimary`,
 1 AS `intAssetBusinessID`,
 1 AS `intAssetID`,
 1 AS `intBusinessGroupID`,
 1 AS `intBusinessID`,
 1 AS `intScheduledMaintenanceID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblscheduledmaintenancenesting`
--

DROP TABLE IF EXISTS `tblscheduledmaintenancenesting`;
/*!50001 DROP VIEW IF EXISTS `tblscheduledmaintenancenesting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblscheduledmaintenancenesting` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intCurrentIterationCycle`,
 1 AS `intMultiplier`,
 1 AS `intNameIdentifier`,
 1 AS `intParentId`,
 1 AS `intScheduledMaintenanceID`,
 1 AS `strDescription`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblscheduledmaintenancepart`
--

DROP TABLE IF EXISTS `tblscheduledmaintenancepart`;
/*!50001 DROP VIEW IF EXISTS `tblscheduledmaintenancepart`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblscheduledmaintenancepart` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intAssetID`,
 1 AS `intPartID`,
 1 AS `intScheduledMaintenanceID`,
 1 AS `intStockID`,
 1 AS `qtySuggestedQuantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblscheduledmaintenanceuser`
--

DROP TABLE IF EXISTS `tblscheduledmaintenanceuser`;
/*!50001 DROP VIEW IF EXISTS `tblscheduledmaintenanceuser`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblscheduledmaintenanceuser` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolCanUpdateOrClose`,
 1 AS `bolNotifyOnAssignment`,
 1 AS `bolNotifyOnCompletion`,
 1 AS `bolNotifyOnOnlineOffline`,
 1 AS `bolNotifyOnStatusChange`,
 1 AS `bolNotifyOnTaskCompleted`,
 1 AS `bolPrimaryTechnician`,
 1 AS `intScheduledMaintenanceID`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblscheduledreport`
--

DROP TABLE IF EXISTS `tblscheduledreport`;
/*!50001 DROP VIEW IF EXISTS `tblscheduledreport`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblscheduledreport` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolTSWFriday`,
 1 AS `bolTSWMonday`,
 1 AS `bolTSWSaturday`,
 1 AS `bolTSWSunday`,
 1 AS `bolTSWThursday`,
 1 AS `bolTSWTuesday`,
 1 AS `bolTSWWednesday`,
 1 AS `datTREndBy`,
 1 AS `datTRStart`,
 1 AS `dtmLastTriggered`,
 1 AS `intCreatorID`,
 1 AS `intOutputFormat`,
 1 AS `intReportPresetID`,
 1 AS `intStatusID`,
 1 AS `intTREndAfter`,
 1 AS `intTSDEveryDays`,
 1 AS `intTSHEveryHours`,
 1 AS `intTSMDayOfMonth`,
 1 AS `intTSMEveryMonths`,
 1 AS `intTSWEveryWeeks`,
 1 AS `intTSYDayOfMonth`,
 1 AS `intTSYEveryYears`,
 1 AS `intTSYMonthOfYear`,
 1 AS `strTRType`,
 1 AS `strTSType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblscheduledreportuser`
--

DROP TABLE IF EXISTS `tblscheduledreportuser`;
/*!50001 DROP VIEW IF EXISTS `tblscheduledreportuser`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblscheduledreportuser` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intScheduledReportID`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblscheduledtask`
--

DROP TABLE IF EXISTS `tblscheduledtask`;
/*!50001 DROP VIEW IF EXISTS `tblscheduledtask`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblscheduledtask` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblTimeEstimatedHours`,
 1 AS `intAssetID`,
 1 AS `intAssignedToUserID`,
 1 AS `intMeterReadingUnitID`,
 1 AS `intOrder`,
 1 AS `intParentScheduledTaskID`,
 1 AS `intScheduledMaintenanceID`,
 1 AS `intScheduledMaintenanceNestingID`,
 1 AS `intTaskControlID`,
 1 AS `intTaskGroupAssetCategoryControlID`,
 1 AS `intTaskGroupControlID`,
 1 AS `intTaskType`,
 1 AS `intUpdated`,
 1 AS `strDescription`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblscheduledtaskfile`
--

DROP TABLE IF EXISTS `tblscheduledtaskfile`;
/*!50001 DROP VIEW IF EXISTS `tblscheduledtaskfile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblscheduledtaskfile` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intFileID`,
 1 AS `intOrder`,
 1 AS `intScheduledTaskID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblscheduletrigger`
--

DROP TABLE IF EXISTS `tblscheduletrigger`;
/*!50001 DROP VIEW IF EXISTS `tblscheduletrigger`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblscheduletrigger` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolCreateWorkOrderOnStartDate`,
 1 AS `bolMrByWOClosed`,
 1 AS `bolTSWFriday`,
 1 AS `bolTSWMonday`,
 1 AS `bolTSWSaturday`,
 1 AS `bolTSWSunday`,
 1 AS `bolTSWThursday`,
 1 AS `bolTSWTuesday`,
 1 AS `bolTSWWednesday`,
 1 AS `datLastDate`,
 1 AS `datTREndBy`,
 1 AS `datTRStart`,
 1 AS `dblLastMeterReading`,
 1 AS `dblRMeterReading`,
 1 AS `dblROMeterReading`,
 1 AS `dblRREndBy`,
 1 AS `dblRRStart`,
 1 AS `dtmLastTriggered`,
 1 AS `intAssetEventTypeID`,
 1 AS `intAssetID`,
 1 AS `intRMeterReadingUnitID`,
 1 AS `intROMeterReadingUnitID`,
 1 AS `intRREndAfter`,
 1 AS `intScheduledMaintenanceID`,
 1 AS `intTREndAfter`,
 1 AS `intTRTriggerTime`,
 1 AS `intTSDEveryDays`,
 1 AS `intTSHEveryHours`,
 1 AS `intTSMDayOfMonth`,
 1 AS `intTSMEveryMonths`,
 1 AS `intTSWEveryWeeks`,
 1 AS `intTSYDayOfMonth`,
 1 AS `intTSYEveryYears`,
 1 AS `intTSYMonthOfYear`,
 1 AS `intUpdated`,
 1 AS `strDatLogicDaily`,
 1 AS `strDatLogicHourly`,
 1 AS `strDatLogicMonthly`,
 1 AS `strDatLogicYearly`,
 1 AS `strMrLogic`,
 1 AS `strROType`,
 1 AS `strRRType`,
 1 AS `strRType`,
 1 AS `strScheduleDescription`,
 1 AS `strTRType`,
 1 AS `strTSType`,
 1 AS `strType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblserversetting`
--

DROP TABLE IF EXISTS `tblserversetting`;
/*!50001 DROP VIEW IF EXISTS `tblserversetting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblserversetting` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `intAutoUpdateDOW`,
 1 AS `intAutoUpdateHour`,
 1 AS `intAutoUpdateType`,
 1 AS `intCriticalAutoUpdateDelayDays`,
 1 AS `intRegularAutoUpdateDelayDays`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblshippingtype`
--

DROP TABLE IF EXISTS `tblshippingtype`;
/*!50001 DROP VIEW IF EXISTS `tblshippingtype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblshippingtype` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblsiteavailability`
--

DROP TABLE IF EXISTS `tblsiteavailability`;
/*!50001 DROP VIEW IF EXISTS `tblsiteavailability`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblsiteavailability` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolActive`,
 1 AS `intAllowedSiteID`,
 1 AS `intOriginSiteID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblsitesetting`
--

DROP TABLE IF EXISTS `tblsitesetting`;
/*!50001 DROP VIEW IF EXISTS `tblsitesetting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblsitesetting` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolUseSiteSettingsForClassification`,
 1 AS `dtmAnnualUsageFrom`,
 1 AS `dtmAnnualUsageTo`,
 1 AS `dtmLastClassified`,
 1 AS `intClassAOutset`,
 1 AS `intClassBOutset`,
 1 AS `intClassCOutset`,
 1 AS `intSiteID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblsitestock`
--

DROP TABLE IF EXISTS `tblsitestock`;
/*!50001 DROP VIEW IF EXISTS `tblsitestock`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblsitestock` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intAssetID`,
 1 AS `intFacilityID`,
 1 AS `intUpdated`,
 1 AS `qtyMinQty`,
 1 AS `qtyOnHand`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblsiteuser`
--

DROP TABLE IF EXISTS `tblsiteuser`;
/*!50001 DROP VIEW IF EXISTS `tblsiteuser`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblsiteuser` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSiteID`,
 1 AS `intUpdated`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblsiteusergroup`
--

DROP TABLE IF EXISTS `tblsiteusergroup`;
/*!50001 DROP VIEW IF EXISTS `tblsiteusergroup`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblsiteusergroup` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intGroupID`,
 1 AS `intSiteUserID`,
 1 AS `intUpdated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblskin`
--

DROP TABLE IF EXISTS `tblskin`;
/*!50001 DROP VIEW IF EXISTS `tblskin`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblskin` AS SELECT 
 1 AS `id`,
 1 AS `strDirectoryName`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblssoimplementation`
--

DROP TABLE IF EXISTS `tblssoimplementation`;
/*!50001 DROP VIEW IF EXISTS `tblssoimplementation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblssoimplementation` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolAvailable`,
 1 AS `bolFederatedLogout`,
 1 AS `intProviderID`,
 1 AS `strAlgorithm`,
 1 AS `strClientId`,
 1 AS `strConnectionId`,
 1 AS `strIssuerId`,
 1 AS `strLoginLabel`,
 1 AS `strRedirectUri`,
 1 AS `strSecret`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblssoprovider`
--

DROP TABLE IF EXISTS `tblssoprovider`;
/*!50001 DROP VIEW IF EXISTS `tblssoprovider`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblssoprovider` AS SELECT 
 1 AS `id`,
 1 AS `strBackgroundColor`,
 1 AS `strCode`,
 1 AS `strIconUri`,
 1 AS `strLabel`,
 1 AS `strName`,
 1 AS `strProviderType`,
 1 AS `strTextColor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblstock`
--

DROP TABLE IF EXISTS `tblstock`;
/*!50001 DROP VIEW IF EXISTS `tblstock`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblstock` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolDeactivated`,
 1 AS `intAssetID`,
 1 AS `intFacilityID`,
 1 AS `intUpdated`,
 1 AS `qtyMaxQty`,
 1 AS `qtyMinQty`,
 1 AS `qtyOnHand`,
 1 AS `strAisle`,
 1 AS `strBin`,
 1 AS `strRow`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblstockadjustmentitem`
--

DROP TABLE IF EXISTS `tblstockadjustmentitem`;
/*!50001 DROP VIEW IF EXISTS `tblstockadjustmentitem`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblstockadjustmentitem` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDate`,
 1 AS `intStockID`,
 1 AS `intUserID`,
 1 AS `qtyQuantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblstockcyclecount`
--

DROP TABLE IF EXISTS `tblstockcyclecount`;
/*!50001 DROP VIEW IF EXISTS `tblstockcyclecount`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblstockcyclecount` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblPrice`,
 1 AS `dtmDateCounted`,
 1 AS `intCountedBy`,
 1 AS `intCycleCountID`,
 1 AS `intStockID`,
 1 AS `intUpdated`,
 1 AS `qtyExpected`,
 1 AS `qtyStockCount`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblstockhistory`
--

DROP TABLE IF EXISTS `tblstockhistory`;
/*!50001 DROP VIEW IF EXISTS `tblstockhistory`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblstockhistory` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblLastPrice`,
 1 AS `dtmDate`,
 1 AS `intInventoryMethodType`,
 1 AS `intStockID`,
 1 AS `intStockTxID`,
 1 AS `intStockTxTypeID`,
 1 AS `intUpdated`,
 1 AS `intUserID`,
 1 AS `qtyAfter`,
 1 AS `qtyBefore`,
 1 AS `qtyMethodQty`,
 1 AS `qtyQuantity`,
 1 AS `strDescription`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblstockpurchaseitem`
--

DROP TABLE IF EXISTS `tblstockpurchaseitem`;
/*!50001 DROP VIEW IF EXISTS `tblstockpurchaseitem`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblstockpurchaseitem` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolMigrated`,
 1 AS `dblPurchasePricePerUnit`,
 1 AS `dblPurchasePriceTotal`,
 1 AS `dtmDateExpiryOfInventoryItems`,
 1 AS `dtmDateOrdered`,
 1 AS `dtmDateReceived`,
 1 AS `intAssetID`,
 1 AS `intBusinessID`,
 1 AS `intPurchaseCurrencyID`,
 1 AS `intStockID`,
 1 AS `intUserID`,
 1 AS `intV2ID`,
 1 AS `qtyQuantity`,
 1 AS `qtyQuantityLeft`,
 1 AS `qtyQuantityLeftAtTimeOfOrder`,
 1 AS `qtyQuantityOrdered`,
 1 AS `qtyQuantityPurchased`,
 1 AS `qtyQuantityUsed`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblstocktxtype`
--

DROP TABLE IF EXISTS `tblstocktxtype`;
/*!50001 DROP VIEW IF EXISTS `tblstocktxtype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblstocktxtype` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblsubscriptionplan`
--

DROP TABLE IF EXISTS `tblsubscriptionplan`;
/*!50001 DROP VIEW IF EXISTS `tblsubscriptionplan`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblsubscriptionplan` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmActiveFromDate`,
 1 AS `dtmActiveToDate`,
 1 AS `dtmFeaturesProvisioned`,
 1 AS `dtmFeaturesProvisioningDate`,
 1 AS `dtmNextOrderDate`,
 1 AS `dtmScheduledDate`,
 1 AS `dtmSubscriptionCreated`,
 1 AS `intCreatedByUserID`,
 1 AS `intIssuedByTenantID`,
 1 AS `intMarketingProgramID`,
 1 AS `intQuoteID`,
 1 AS `intRecurringTypeID`,
 1 AS `intReplacedBySubscriptionPlanID`,
 1 AS `intSubscriptionStatusID`,
 1 AS `strDelinquentStatus`,
 1 AS `strPoNumber`,
 1 AS `strSubscriptionKey`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblsubscriptionstatus`
--

DROP TABLE IF EXISTS `tblsubscriptionstatus`;
/*!50001 DROP VIEW IF EXISTS `tblsubscriptionstatus`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblsubscriptionstatus` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblsystemmessageuser`
--

DROP TABLE IF EXISTS `tblsystemmessageuser`;
/*!50001 DROP VIEW IF EXISTS `tblsystemmessageuser`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblsystemmessageuser` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolDeleted`,
 1 AS `bolOpened`,
 1 AS `intMessageID`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblsystemsetting`
--

DROP TABLE IF EXISTS `tblsystemsetting`;
/*!50001 DROP VIEW IF EXISTS `tblsystemsetting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblsystemsetting` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `bolAddRequestorToNotificationsOnWorkReq`,
 1 AS `bolDemoDatabase`,
 1 AS `bolDisableBrowserPasswordCaching`,
 1 AS `bolEmailWRPeopleOnCompletion`,
 1 AS `bolEnableAllowNegativeStocks`,
 1 AS `bolEnableAssignedToOnWorkReq`,
 1 AS `bolEnableAuditLogging`,
 1 AS `bolEnableBlockWhenOutOfStock`,
 1 AS `bolEnableBusinessTracking`,
 1 AS `bolEnableBusinessTrackingShowCustomer`,
 1 AS `bolEnableBusinessTrackingShowVendor`,
 1 AS `bolEnableCaptchaGuestWorkReq`,
 1 AS `bolEnableForcePasswordChange`,
 1 AS `bolEnableGoogleTranslate`,
 1 AS `bolEnableInspectionTaskNAOption`,
 1 AS `bolEnableInventoryMethodFifo`,
 1 AS `bolEnableKeepMeLoggedIn`,
 1 AS `bolEnableLabsGhgCalculator`,
 1 AS `bolEnableMoveControl`,
 1 AS `bolEnableMoveTracking`,
 1 AS `bolEnableMultiAttachAction`,
 1 AS `bolEnablePromptUnsaved`,
 1 AS `bolEnablePromptWhenOutOfStock`,
 1 AS `bolEnableStateControl`,
 1 AS `bolEnableStockDisassociationInPOsAndRFQs`,
 1 AS `bolEnableTrackForUserOnWorkReq`,
 1 AS `bolEnableVendorAmazon`,
 1 AS `bolEnableVendorGrainger`,
 1 AS `bolEnableVendorMACMMS`,
 1 AS `bolEnableVendorSolr`,
 1 AS `bolGuestMrAssetScanPermission`,
 1 AS `bolGuestMrEmailRequired`,
 1 AS `bolGuestMrNotificationOnAssigned`,
 1 AS `bolGuestMrNotificationOnCompleted`,
 1 AS `bolGuestMrNotificationOnSubmit`,
 1 AS `bolGuestMrShowCompletionNotes`,
 1 AS `bolOnlyAdministratorCanCustomizeUserInterface`,
 1 AS `bolRequireCompletionNotesForCompletion`,
 1 AS `bolRequireCompletionNotesForCompletionStateControl`,
 1 AS `bolRequiredContactInfo`,
 1 AS `bolTimeGeneratedWO`,
 1 AS `bolToolbarEnableGrainger`,
 1 AS `bolUsersCanEditDashboards`,
 1 AS `bolWOEnableLocking`,
 1 AS `bolWOEnableRCA`,
 1 AS `bolWOEnableRCASearch`,
 1 AS `bolWOEnableRCAStrictMode`,
 1 AS `bolWRAssetInputRequired`,
 1 AS `bolWRAssetInputShow`,
 1 AS `bolWRAutoRouting`,
 1 AS `bolWRMaintenanceTypeShow`,
 1 AS `bolWRPriorityShow`,
 1 AS `bolWRSuggestedTimeShow`,
 1 AS `dtmAnnualUsageFrom`,
 1 AS `dtmAnnualUsageTo`,
 1 AS `dtmLastApplicationNotification`,
 1 AS `dtmLastSMThreadRun`,
 1 AS `dtmLastSyncThreadRun`,
 1 AS `dtmMoveToCloudEndDate`,
 1 AS `dtmMoveToCloudStartDate`,
 1 AS `dtmPartForecasterReportDate`,
 1 AS `intBusinessServersID`,
 1 AS `intClassAOutset`,
 1 AS `intClassBOutset`,
 1 AS `intClassCOutset`,
 1 AS `intCreateBackupEveryHours`,
 1 AS `intDefaultCurrencyID`,
 1 AS `intDefaultLocalizationID`,
 1 AS `intDefaultWorkOrderStatusID`,
 1 AS `intDefaultWorkRequestStatusID`,
 1 AS `intGenerateWOBefore`,
 1 AS `intGenerateWOBeforeTime`,
 1 AS `intKeepBackupForDays`,
 1 AS `intNumDaysForPasswordExpiry`,
 1 AS `intPoolRFQsTime`,
 1 AS `intRFQNumberDaysForQuoteResponse`,
 1 AS `intStartPurchaseOrderNumberingAtValue`,
 1 AS `intUnitPricePrecision`,
 1 AS `strAssetInsightReportDay`,
 1 AS `strAssetInsightSelection`,
 1 AS `strBackupLocation`,
 1 AS `strDatabaseBuildNumber`,
 1 AS `strDatabaseVersion`,
 1 AS `strGenerateWO`,
 1 AS `strGenerateWOBefore`,
 1 AS `strGenerateWOWhen`,
 1 AS `strGraingerAccountNum`,
 1 AS `strGuestMrFeatureLevel`,
 1 AS `strGuestMrListViewType`,
 1 AS `strLockingEnabledWorkOrderStatusIds`,
 1 AS `strPartForecasterReportFrequency`,
 1 AS `strPartForecastorSelection`,
 1 AS `strPoolRFQsAndSendOn`,
 1 AS `strSendRFQImmediately`,
 1 AS `strSettings`,
 1 AS `strShowContactInfoInputs`,
 1 AS `strUserGroupsIdsWithCloseAndReopenWorkOrder`,
 1 AS `strUserGroupsIdsWithCloseWorkOrder`,
 1 AS `strV2SettingsXml`,
 1 AS `strV6ReportingDefaultDashboard`,
 1 AS `strWOCF1`,
 1 AS `strWOCF2`,
 1 AS `strWOCF3`,
 1 AS `strWOCF4`,
 1 AS `strWOCFSeparator`,
 1 AS `strWOCFSeparatorType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltask`
--

DROP TABLE IF EXISTS `tbltask`;
/*!50001 DROP VIEW IF EXISTS `tbltask`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltask` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblTimeEstimatedHours`,
 1 AS `intMasterID`,
 1 AS `intMeterReadingUnitID`,
 1 AS `intOrder`,
 1 AS `intTaskGroupID`,
 1 AS `intTaskType`,
 1 AS `strDescription`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltaskfile`
--

DROP TABLE IF EXISTS `tbltaskfile`;
/*!50001 DROP VIEW IF EXISTS `tbltaskfile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltaskfile` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intFileID`,
 1 AS `intOrder`,
 1 AS `intTaskID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltaskgroup`
--

DROP TABLE IF EXISTS `tbltaskgroup`;
/*!50001 DROP VIEW IF EXISTS `tbltaskgroup`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltaskgroup` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolHasUnConfiguredTasks`,
 1 AS `dtmLastUpdated`,
 1 AS `intCreatedByUserID`,
 1 AS `intLastUpdatedByUserID`,
 1 AS `intMasterID`,
 1 AS `intUpdated`,
 1 AS `strName`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltaskgroupassetcategory`
--

DROP TABLE IF EXISTS `tbltaskgroupassetcategory`;
/*!50001 DROP VIEW IF EXISTS `tbltaskgroupassetcategory`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltaskgroupassetcategory` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolIncludeChildCategories`,
 1 AS `intAssetCategoryID`,
 1 AS `intTaskGroupID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltaskresultconfiguration`
--

DROP TABLE IF EXISTS `tbltaskresultconfiguration`;
/*!50001 DROP VIEW IF EXISTS `tbltaskresultconfiguration`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltaskresultconfiguration` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intTaskResultValueID`,
 1 AS `strAction`,
 1 AS `strParamValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltaskresultvalue`
--

DROP TABLE IF EXISTS `tbltaskresultvalue`;
/*!50001 DROP VIEW IF EXISTS `tbltaskresultvalue`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltaskresultvalue` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intScheduledTaskID`,
 1 AS `intTaskID`,
 1 AS `intWorkOrderTaskID`,
 1 AS `strLabel`,
 1 AS `strTaskResult`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltemplate`
--

DROP TABLE IF EXISTS `tbltemplate`;
/*!50001 DROP VIEW IF EXISTS `tbltemplate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltemplate` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `intTemplateCategoryID`,
 1 AS `strContents`,
 1 AS `strName`,
 1 AS `strPushNotification`,
 1 AS `strSubject`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltemplatecategory`
--

DROP TABLE IF EXISTS `tbltemplatecategory`;
/*!50001 DROP VIEW IF EXISTS `tbltemplatecategory`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltemplatecategory` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltenantdashboard`
--

DROP TABLE IF EXISTS `tbltenantdashboard`;
/*!50001 DROP VIEW IF EXISTS `tbltenantdashboard`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltenantdashboard` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intDashboardID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltenantdistributioncampaign`
--

DROP TABLE IF EXISTS `tbltenantdistributioncampaign`;
/*!50001 DROP VIEW IF EXISTS `tbltenantdistributioncampaign`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltenantdistributioncampaign` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolActive`,
 1 AS `dtmDateCreated`,
 1 AS `intDistributionID`,
 1 AS `strCampaignCode`,
 1 AS `strCampaignName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltenantfeature`
--

DROP TABLE IF EXISTS `tbltenantfeature`;
/*!50001 DROP VIEW IF EXISTS `tbltenantfeature`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltenantfeature` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolAvailable`,
 1 AS `bolSeatMultiplier`,
 1 AS `dblOverageUnitCost`,
 1 AS `dtmDateUpdated`,
 1 AS `intAddedFromPricingTierFeatureID`,
 1 AS `intCreatedByUserID`,
 1 AS `intFeatureID`,
 1 AS `intFeatureValuePeriodTypeID`,
 1 AS `intFeatureValueTypeID`,
 1 AS `intOverageControlTypeID`,
 1 AS `intOverageUnitCostThresholdTypeID`,
 1 AS `intUpdatedByUserID`,
 1 AS `qtyOverageUnitCostThreshold`,
 1 AS `qtyValue`,
 1 AS `strNotes`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltenantlineitem`
--

DROP TABLE IF EXISTS `tbltenantlineitem`;
/*!50001 DROP VIEW IF EXISTS `tbltenantlineitem`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltenantlineitem` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblDiscount`,
 1 AS `dblPrice`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDateUpdated`,
 1 AS `intQuantity`,
 1 AS `intReferenceOrderID`,
 1 AS `intTenantOrderID`,
 1 AS `intUpdatedByUserID`,
 1 AS `strName`,
 1 AS `strNotes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltenantorder`
--

DROP TABLE IF EXISTS `tbltenantorder`;
/*!50001 DROP VIEW IF EXISTS `tbltenantorder`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltenantorder` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblSubtotalAmount`,
 1 AS `dblTaxAmount`,
 1 AS `dblTotalAmount`,
 1 AS `dtmDateClose`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDateOpen`,
 1 AS `dtmDatePaid`,
 1 AS `dtmDateRefunded`,
 1 AS `dtmDateSentOrder`,
 1 AS `dtmDateSentReceipt`,
 1 AS `dtmDateUpdated`,
 1 AS `intPaymentProfileID`,
 1 AS `intTenantOrderTypeID`,
 1 AS `strNotes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltenantordertype`
--

DROP TABLE IF EXISTS `tbltenantordertype`;
/*!50001 DROP VIEW IF EXISTS `tbltenantordertype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltenantordertype` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltenantrelationship`
--

DROP TABLE IF EXISTS `tbltenantrelationship`;
/*!50001 DROP VIEW IF EXISTS `tbltenantrelationship`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltenantrelationship` AS SELECT 
 1 AS `id`,
 1 AS `dtmActiveFromDate`,
 1 AS `dtmActiveToDate`,
 1 AS `intDistributionId`,
 1 AS `intMasterTenantID`,
 1 AS `intSlaveTenantID`,
 1 AS `intTenantDistributionCampaignId`,
 1 AS `intTenantRelationshipTypeID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltenantrelationshiptype`
--

DROP TABLE IF EXISTS `tbltenantrelationshiptype`;
/*!50001 DROP VIEW IF EXISTS `tbltenantrelationshiptype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltenantrelationshiptype` AS SELECT 
 1 AS `id`,
 1 AS `strDescription`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltenantreport`
--

DROP TABLE IF EXISTS `tbltenantreport`;
/*!50001 DROP VIEW IF EXISTS `tbltenantreport`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltenantreport` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intReportTemplateID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltenantsystemproperty`
--

DROP TABLE IF EXISTS `tbltenantsystemproperty`;
/*!50001 DROP VIEW IF EXISTS `tbltenantsystemproperty`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltenantsystemproperty` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmLastUpdated`,
 1 AS `intSystemID`,
 1 AS `strPropertyName`,
 1 AS `strPropertyValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltenantsystempropertylog`
--

DROP TABLE IF EXISTS `tbltenantsystempropertylog`;
/*!50001 DROP VIEW IF EXISTS `tbltenantsystempropertylog`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltenantsystempropertylog` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmUpdated`,
 1 AS `intSystemID`,
 1 AS `strPropertyName`,
 1 AS `strPropertyValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltenanttransaction`
--

DROP TABLE IF EXISTS `tbltenanttransaction`;
/*!50001 DROP VIEW IF EXISTS `tbltenanttransaction`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltenanttransaction` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblTotalAmount`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDatePaid`,
 1 AS `intPaidByUserID`,
 1 AS `intPaymentProfileID`,
 1 AS `intTenantOrderID`,
 1 AS `strNotes`,
 1 AS `strTransactionReference`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltenantwidget`
--

DROP TABLE IF EXISTS `tbltenantwidget`;
/*!50001 DROP VIEW IF EXISTS `tbltenantwidget`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltenantwidget` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intWidgetID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltestingblack`
--

DROP TABLE IF EXISTS `tbltestingblack`;
/*!50001 DROP VIEW IF EXISTS `tbltestingblack`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltestingblack` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `intBlackCascadeID`,
 1 AS `intBlackRestrictID`,
 1 AS `intBlackSetNullID`,
 1 AS `intLongValue`,
 1 AS `intWhiteCascadeID`,
 1 AS `qtyQuantityValue`,
 1 AS `strCode`,
 1 AS `strStringValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltestingredc`
--

DROP TABLE IF EXISTS `tbltestingredc`;
/*!50001 DROP VIEW IF EXISTS `tbltestingredc`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltestingredc` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolRareBooleanIndexed`,
 1 AS `intBlackCascadeID`,
 1 AS `intBlackRestrictID`,
 1 AS `intBlackSetNullID`,
 1 AS `intLongValueIndexed`,
 1 AS `intLongValueNotIndexed`,
 1 AS `intWhiteCCascadeID`,
 1 AS `intWhiteCRestrictID`,
 1 AS `intWhiteCSetNullID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltestingwhitec`
--

DROP TABLE IF EXISTS `tbltestingwhitec`;
/*!50001 DROP VIEW IF EXISTS `tbltestingwhitec`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltestingwhitec` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `intBlackCascadeID`,
 1 AS `intLongValue`,
 1 AS `intLongValueIndexed`,
 1 AS `qtyQuantityValue`,
 1 AS `strCode`,
 1 AS `strStringValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltestingyellow`
--

DROP TABLE IF EXISTS `tbltestingyellow`;
/*!50001 DROP VIEW IF EXISTS `tbltestingyellow`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltestingyellow` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intBlackCascadeID`,
 1 AS `intBlackRestrictID`,
 1 AS `intBlackSetNullID`,
 1 AS `intLongValue`,
 1 AS `intWhiteCCascadeID`,
 1 AS `intWhiteCRestrictID`,
 1 AS `intWhiteCSetNullID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbltesttable`
--

DROP TABLE IF EXISTS `tbltesttable`;
/*!50001 DROP VIEW IF EXISTS `tbltesttable`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbltesttable` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolYo`,
 1 AS `datYo`,
 1 AS `dblYo`,
 1 AS `dtmYo`,
 1 AS `intUserID`,
 1 AS `intYo`,
 1 AS `intYoInteger`,
 1 AS `qtyYo`,
 1 AS `strYo`,
 1 AS `strYoLong`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbluicprofile`
--

DROP TABLE IF EXISTS `tbluicprofile`;
/*!50001 DROP VIEW IF EXISTS `tbluicprofile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbluicprofile` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intUserID`,
 1 AS `strUics`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
/*!50001 DROP VIEW IF EXISTS `tbluser`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbluser` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `bolApiApplicationUser`,
 1 AS `bolApiManaged`,
 1 AS `bolEmailAllAlerts`,
 1 AS `bolEmailAllMessages`,
 1 AS `bolEmailSystemErrors`,
 1 AS `bolForceResetPassword`,
 1 AS `bolGroup`,
 1 AS `bolInternalMailAllMessages`,
 1 AS `bolIsCrmAccountOwner`,
 1 AS `bolIsLocalizing`,
 1 AS `bolIsVirtuallyDeleted`,
 1 AS `bolNotifyOnDWOE`,
 1 AS `bolNotifyOnWOAssigned`,
 1 AS `bolNotifyOnWOCompleted`,
 1 AS `bolNotifyOnWODraft`,
 1 AS `bolNotifyOnWOOnHold`,
 1 AS `bolNotifyOnWOOpen`,
 1 AS `bolNotifyOnWORequested`,
 1 AS `bolNotifyOnWOWithNoAsset`,
 1 AS `bolNotifyOnWOWorkInProgress`,
 1 AS `bolProgressMeterNoticeDisplayed`,
 1 AS `bolPushNotificationMessages`,
 1 AS `bolSendEmailOnExpire`,
 1 AS `bolShowHoverWindows`,
 1 AS `bolSystemLevelUser`,
 1 AS `bolWebInterfaceContact`,
 1 AS `bolWelcomeEmailSent`,
 1 AS `dblHourlyRate`,
 1 AS `dtmBusinessApprove`,
 1 AS `dtmDateAccountExpire`,
 1 AS `dtmDateActivated`,
 1 AS `dtmDateApprovalExpire`,
 1 AS `dtmDateCreated`,
 1 AS `dtmDateDeactivated`,
 1 AS `dtmDateRequest`,
 1 AS `dtmLastLogin`,
 1 AS `dtmLastNagScreenTime`,
 1 AS `dtmLastPasswordChange`,
 1 AS `dtmUserApprove`,
 1 AS `dtmV6LastLogin`,
 1 AS `intBgImageFileID`,
 1 AS `intBusinessApproveStatus`,
 1 AS `intCountryID`,
 1 AS `intCurrencyID`,
 1 AS `intLocalizationID`,
 1 AS `intMenuType`,
 1 AS `intNotifyExpireDaysBefore`,
 1 AS `intRecordsPerPage`,
 1 AS `intSSOImplementationID`,
 1 AS `intSessionTimeoutSeconds`,
 1 AS `intSkinID`,
 1 AS `intUpdated`,
 1 AS `intUserApproveStatus`,
 1 AS `intUserStatusID`,
 1 AS `strAddress1`,
 1 AS `strAddress2`,
 1 AS `strBusinessIds`,
 1 AS `strBusinessUserPrivateKey`,
 1 AS `strBusinesses`,
 1 AS `strCity`,
 1 AS `strDefaultLoginLocation`,
 1 AS `strEmailAddress`,
 1 AS `strFormLayoutType`,
 1 AS `strFullName`,
 1 AS `strNotes`,
 1 AS `strNotifyOnWOAsset`,
 1 AS `strOneSignalPlayerIDs`,
 1 AS `strPassword`,
 1 AS `strPersonnelCode`,
 1 AS `strPlayerID`,
 1 AS `strPostalCode`,
 1 AS `strPreferences`,
 1 AS `strRequestNotes`,
 1 AS `strRoleUuid`,
 1 AS `strState`,
 1 AS `strSubmenuType`,
 1 AS `strTelephone`,
 1 AS `strTelephone2`,
 1 AS `strUserName`,
 1 AS `strUserTitle`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbluseranalyticspermission`
--

DROP TABLE IF EXISTS `tbluseranalyticspermission`;
/*!50001 DROP VIEW IF EXISTS `tbluseranalyticspermission`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbluseranalyticspermission` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmFirstAssignedDate`,
 1 AS `dtmLastUpdatedDate`,
 1 AS `intUserID`,
 1 AS `strPermissionLevel`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbluserapiconsumerpermission`
--

DROP TABLE IF EXISTS `tbluserapiconsumerpermission`;
/*!50001 DROP VIEW IF EXISTS `tbluserapiconsumerpermission`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbluserapiconsumerpermission` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intApiConsumerID`,
 1 AS `intUserID`,
 1 AS `strPermissionName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblusercertification`
--

DROP TABLE IF EXISTS `tblusercertification`;
/*!50001 DROP VIEW IF EXISTS `tblusercertification`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblusercertification` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `datValidFrom`,
 1 AS `datValidTo`,
 1 AS `dtmExpiryNotificationSent`,
 1 AS `intCertificationID`,
 1 AS `intFileContentsID`,
 1 AS `intUserID`,
 1 AS `strDescription`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbluserclockinout`
--

DROP TABLE IF EXISTS `tbluserclockinout`;
/*!50001 DROP VIEW IF EXISTS `tbluserclockinout`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbluserclockinout` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmClockInTime`,
 1 AS `dtmClockOutTime`,
 1 AS `intFacilityID`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbluserepicfeaturenotice`
--

DROP TABLE IF EXISTS `tbluserepicfeaturenotice`;
/*!50001 DROP VIEW IF EXISTS `tbluserepicfeaturenotice`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbluserepicfeaturenotice` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolDontShowAgain`,
 1 AS `dtmDateViewed`,
 1 AS `intDashboardFeatureNoticeID`,
 1 AS `intEpicFeatureNoticeID`,
 1 AS `intNumberViews`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblusergroupdashboardpersona`
--

DROP TABLE IF EXISTS `tblusergroupdashboardpersona`;
/*!50001 DROP VIEW IF EXISTS `tblusergroupdashboardpersona`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblusergroupdashboardpersona` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intDashboardPersonaID`,
 1 AS `intUserGroupID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblusermasourcestart`
--

DROP TABLE IF EXISTS `tblusermasourcestart`;
/*!50001 DROP VIEW IF EXISTS `tblusermasourcestart`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblusermasourcestart` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolDontShowAgain`,
 1 AS `dtmDateViewed`,
 1 AS `intNumberViews`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblusermilestone`
--

DROP TABLE IF EXISTS `tblusermilestone`;
/*!50001 DROP VIEW IF EXISTS `tblusermilestone`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblusermilestone` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolCompleted`,
 1 AS `bolIgnored`,
 1 AS `dtmCompleted`,
 1 AS `dtmIgnored`,
 1 AS `intMilestoneID`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbluserpermission`
--

DROP TABLE IF EXISTS `tbluserpermission`;
/*!50001 DROP VIEW IF EXISTS `tbluserpermission`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbluserpermission` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intPermissionID`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbluserpurchaseorderstatustransitionpermission`
--

DROP TABLE IF EXISTS `tbluserpurchaseorderstatustransitionpermission`;
/*!50001 DROP VIEW IF EXISTS `tbluserpurchaseorderstatustransitionpermission`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbluserpurchaseorderstatustransitionpermission` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intPermissionID`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbluserreportstouser`
--

DROP TABLE IF EXISTS `tbluserreportstouser`;
/*!50001 DROP VIEW IF EXISTS `tbluserreportstouser`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbluserreportstouser` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmCreatedOnDate`,
 1 AS `intReportsToID`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tbluserrole`
--

DROP TABLE IF EXISTS `tbluserrole`;
/*!50001 DROP VIEW IF EXISTS `tbluserrole`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tbluserrole` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intRoleID`,
 1 AS `intUpdated`,
 1 AS `intUserID`,
 1 AS `strRoleUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblusersetting`
--

DROP TABLE IF EXISTS `tblusersetting`;
/*!50001 DROP VIEW IF EXISTS `tblusersetting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblusersetting` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intUserID`,
 1 AS `strName`,
 1 AS `strValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblusersystemproperty`
--

DROP TABLE IF EXISTS `tblusersystemproperty`;
/*!50001 DROP VIEW IF EXISTS `tblusersystemproperty`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblusersystemproperty` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmLastUpdated`,
 1 AS `intSystemID`,
 1 AS `intUserID`,
 1 AS `strPropertyName`,
 1 AS `strPropertyValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblusersystempropertylog`
--

DROP TABLE IF EXISTS `tblusersystempropertylog`;
/*!50001 DROP VIEW IF EXISTS `tblusersystempropertylog`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblusersystempropertylog` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmUpdated`,
 1 AS `intSystemID`,
 1 AS `intUserID`,
 1 AS `strPropertyName`,
 1 AS `strPropertyValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblv6apiapplicationusermapping`
--

DROP TABLE IF EXISTS `tblv6apiapplicationusermapping`;
/*!50001 DROP VIEW IF EXISTS `tblv6apiapplicationusermapping`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblv6apiapplicationusermapping` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intUpdated`,
 1 AS `intUserID`,
 1 AS `strApiApplicationClientId`,
 1 AS `strApiApplicationUuid`,
 1 AS `strTenantUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblv6rolepermissionlookup`
--

DROP TABLE IF EXISTS `tblv6rolepermissionlookup`;
/*!50001 DROP VIEW IF EXISTS `tblv6rolepermissionlookup`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblv6rolepermissionlookup` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intRoleID`,
 1 AS `strPermission`,
 1 AS `strRoleUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblv6tenantuserinactivitytimeout`
--

DROP TABLE IF EXISTS `tblv6tenantuserinactivitytimeout`;
/*!50001 DROP VIEW IF EXISTS `tblv6tenantuserinactivitytimeout`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblv6tenantuserinactivitytimeout` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSessionTimeoutSeconds`,
 1 AS `intUpdated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblv6userdeletiontracking`
--

DROP TABLE IF EXISTS `tblv6userdeletiontracking`;
/*!50001 DROP VIEW IF EXISTS `tblv6userdeletiontracking`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblv6userdeletiontracking` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDeletionDate`,
 1 AS `intUserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblwarranty`
--

DROP TABLE IF EXISTS `tblwarranty`;
/*!50001 DROP VIEW IF EXISTS `tblwarranty`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblwarranty` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateAdded`,
 1 AS `dtmExpiryDate`,
 1 AS `intAssetID`,
 1 AS `intMeterReadingUnitsID`,
 1 AS `intProvider`,
 1 AS `intWarrantyTypeID`,
 1 AS `intWarrantyUsageTermTypeID`,
 1 AS `strCertificateNumber`,
 1 AS `strDescription`,
 1 AS `strMeterReadingValueLimit`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblwarrantytype`
--

DROP TABLE IF EXISTS `tblwarrantytype`;
/*!50001 DROP VIEW IF EXISTS `tblwarrantytype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblwarrantytype` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblwarrantyusagetermtype`
--

DROP TABLE IF EXISTS `tblwarrantyusagetermtype`;
/*!50001 DROP VIEW IF EXISTS `tblwarrantyusagetermtype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblwarrantyusagetermtype` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblworkflow`
--

DROP TABLE IF EXISTS `tblworkflow`;
/*!50001 DROP VIEW IF EXISTS `tblworkflow`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblworkflow` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolActive`,
 1 AS `bolSystem`,
 1 AS `dtmDateCreated`,
 1 AS `dtmTbeLastTriggerDate`,
 1 AS `intCreatedByUserID`,
 1 AS `intDeResourceID`,
 1 AS `intTbeEveryXxxSeconds`,
 1 AS `intWorkflowTriggerTypeID`,
 1 AS `strDeExtraInfo`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblworkflowactivity`
--

DROP TABLE IF EXISTS `tblworkflowactivity`;
/*!50001 DROP VIEW IF EXISTS `tblworkflowactivity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblworkflowactivity` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateCreated`,
 1 AS `intCreatedByUserID`,
 1 AS `intIntegrationActionID`,
 1 AS `intIntegrationID`,
 1 AS `intIntegrationTemplateID`,
 1 AS `intOrder`,
 1 AS `intParentWorkflowActivityID`,
 1 AS `intParentWorkflowID`,
 1 AS `intWorkflowActivityTypeGroupID`,
 1 AS `intWorkflowActivityTypeID`,
 1 AS `strName`,
 1 AS `strRole`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblworkflowactivitytype`
--

DROP TABLE IF EXISTS `tblworkflowactivitytype`;
/*!50001 DROP VIEW IF EXISTS `tblworkflowactivitytype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblworkflowactivitytype` AS SELECT 
 1 AS `id`,
 1 AS `intWorkflowActivityTypeGroupID`,
 1 AS `strDescription`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblworkflowactivitytypegroup`
--

DROP TABLE IF EXISTS `tblworkflowactivitytypegroup`;
/*!50001 DROP VIEW IF EXISTS `tblworkflowactivitytypegroup`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblworkflowactivitytypegroup` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblworkflowcomment`
--

DROP TABLE IF EXISTS `tblworkflowcomment`;
/*!50001 DROP VIEW IF EXISTS `tblworkflowcomment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblworkflowcomment` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDateCreated`,
 1 AS `intCommentedByUser`,
 1 AS `intPkPoLogId`,
 1 AS `intPkPurchaseOrderId`,
 1 AS `strComment`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblworkflowexecution`
--

DROP TABLE IF EXISTS `tblworkflowexecution`;
/*!50001 DROP VIEW IF EXISTS `tblworkflowexecution`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblworkflowexecution` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolSuccess`,
 1 AS `dtmEndTime`,
 1 AS `dtmStartTime`,
 1 AS `intWorkflowID`,
 1 AS `strLog`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblworkflowtriggertype`
--

DROP TABLE IF EXISTS `tblworkflowtriggertype`;
/*!50001 DROP VIEW IF EXISTS `tblworkflowtriggertype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblworkflowtriggertype` AS SELECT 
 1 AS `id`,
 1 AS `intWorkflowTriggerTypeGroupID`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblworkflowtriggertypegroup`
--

DROP TABLE IF EXISTS `tblworkflowtriggertypegroup`;
/*!50001 DROP VIEW IF EXISTS `tblworkflowtriggertypegroup`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblworkflowtriggertypegroup` AS SELECT 
 1 AS `id`,
 1 AS `strName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblworkorder`
--

DROP TABLE IF EXISTS `tblworkorder`;
/*!50001 DROP VIEW IF EXISTS `tblworkorder`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblworkorder` AS SELECT 
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
 1 AS `strVendors`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblworkorderasset`
--

DROP TABLE IF EXISTS `tblworkorderasset`;
/*!50001 DROP VIEW IF EXISTS `tblworkorderasset`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblworkorderasset` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intAssetID`,
 1 AS `intUpdated`,
 1 AS `intWorkOrderID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblworkorderbusiness`
--

DROP TABLE IF EXISTS `tblworkorderbusiness`;
/*!50001 DROP VIEW IF EXISTS `tblworkorderbusiness`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblworkorderbusiness` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolPrimary`,
 1 AS `intAssetID`,
 1 AS `intBusinessGroupID`,
 1 AS `intBusinessID`,
 1 AS `intUpdated`,
 1 AS `intWorkOrderID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblworkorderlog`
--

DROP TABLE IF EXISTS `tblworkorderlog`;
/*!50001 DROP VIEW IF EXISTS `tblworkorderlog`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblworkorderlog` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dblHoursTaken`,
 1 AS `dblInventoryCost`,
 1 AS `dblPricePerUnit`,
 1 AS `dtmLogDate`,
 1 AS `intAssetID`,
 1 AS `intCostTypeID`,
 1 AS `intCurrencyID`,
 1 AS `intLogTypeID`,
 1 AS `intMaintenanceTypeID`,
 1 AS `intStockID`,
 1 AS `intUserID`,
 1 AS `intWorkOrderID`,
 1 AS `qtyQuantityUsed`,
 1 AS `strCompletionNotes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblworkorderpart`
--

DROP TABLE IF EXISTS `tblworkorderpart`;
/*!50001 DROP VIEW IF EXISTS `tblworkorderpart`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblworkorderpart` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intAssetID`,
 1 AS `intPartID`,
 1 AS `intStockID`,
 1 AS `intUpdated`,
 1 AS `intWorkOrderID`,
 1 AS `qtyActualQuantityUsed`,
 1 AS `qtySuggestedQuantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblworkorderstatus`
--

DROP TABLE IF EXISTS `tblworkorderstatus`;
/*!50001 DROP VIEW IF EXISTS `tblworkorderstatus`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblworkorderstatus` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intSysCode`,
 1 AS `intControlID`,
 1 AS `intUpdated`,
 1 AS `strName`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblworkorderstatustransition`
--

DROP TABLE IF EXISTS `tblworkorderstatustransition`;
/*!50001 DROP VIEW IF EXISTS `tblworkorderstatustransition`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblworkorderstatustransition` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `dtmDate`,
 1 AS `intFromWorkOrderStatusID`,
 1 AS `intToWorkOrderStatusID`,
 1 AS `intUserID`,
 1 AS `intWorkOrderID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblworkordertask`
--

DROP TABLE IF EXISTS `tblworkordertask`;
/*!50001 DROP VIEW IF EXISTS `tblworkordertask`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblworkordertask` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolHasWorkOrderInfo`,
 1 AS `dblTimeEstimatedHours`,
 1 AS `dblTimeSpentHours`,
 1 AS `dtmDateCompleted`,
 1 AS `dtmStartDate`,
 1 AS `intAssetID`,
 1 AS `intAssignedToUserID`,
 1 AS `intCompletedByUserID`,
 1 AS `intMeterReadingUnitID`,
 1 AS `intOrder`,
 1 AS `intParentWorkOrderTaskID`,
 1 AS `intTaskGroupControlID`,
 1 AS `intTaskResultValueID`,
 1 AS `intTaskType`,
 1 AS `intUpdated`,
 1 AS `intWorkOrderID`,
 1 AS `strDescription`,
 1 AS `strResult`,
 1 AS `strTaskNotesCompletion`,
 1 AS `strUuid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblworkordertaskadditionalproperties`
--

DROP TABLE IF EXISTS `tblworkordertaskadditionalproperties`;
/*!50001 DROP VIEW IF EXISTS `tblworkordertaskadditionalproperties`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblworkordertaskadditionalproperties` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolIsCompletable`,
 1 AS `intWorkOrderTaskID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblworkordertaskfile`
--

DROP TABLE IF EXISTS `tblworkordertaskfile`;
/*!50001 DROP VIEW IF EXISTS `tblworkordertaskfile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblworkordertaskfile` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intFileID`,
 1 AS `intOrder`,
 1 AS `intWorkOrderTaskID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblworkordertaskuser`
--

DROP TABLE IF EXISTS `tblworkordertaskuser`;
/*!50001 DROP VIEW IF EXISTS `tblworkordertaskuser`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblworkordertaskuser` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `intPriority`,
 1 AS `intUserID`,
 1 AS `intWorkOrderTaskID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblworkorderuser`
--

DROP TABLE IF EXISTS `tblworkorderuser`;
/*!50001 DROP VIEW IF EXISTS `tblworkorderuser`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblworkorderuser` AS SELECT 
 1 AS `id`,
 1 AS `intTenantID`,
 1 AS `bolCanUpdateOrClose`,
 1 AS `bolNotifyOnAssignment`,
 1 AS `bolNotifyOnCompletion`,
 1 AS `bolNotifyOnOnlineOffline`,
 1 AS `bolNotifyOnStatusChange`,
 1 AS `bolNotifyOnTaskCompleted`,
 1 AS `bolPrimaryTechnician`,
 1 AS `intUserID`,
 1 AS `intWorkOrderID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tblyemo`
--

DROP TABLE IF EXISTS `tblyemo`;
/*!50001 DROP VIEW IF EXISTS `tblyemo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tblyemo` AS SELECT 
 1 AS `id`,
 1 AS `Date`,
 1 AS `month`,
 1 AS `monthName`,
 1 AS `year`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vworkorder`
--

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

--
-- Current Database: `schTenant`
--

USE `schTenant`;

--
-- Final view structure for view `tblaccount`
--

/*!50001 DROP VIEW IF EXISTS `tblaccount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblaccount` AS select `schshared`.`tblaccount`.`id` AS `id`,`schshared`.`tblaccount`.`intTenantID` AS `intTenantID`,`schshared`.`tblaccount`.`intUpdated` AS `intUpdated`,`schshared`.`tblaccount`.`strCode` AS `strCode`,`schshared`.`tblaccount`.`strDescription` AS `strDescription`,`schshared`.`tblaccount`.`strUuid` AS `strUuid` from `schshared`.`tblaccount` where (`schshared`.`tblaccount`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblaccountaddress`
--

/*!50001 DROP VIEW IF EXISTS `tblaccountaddress`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblaccountaddress` AS select `schshared`.`tblaccountaddress`.`id` AS `id`,`schshared`.`tblaccountaddress`.`intTenantID` AS `intTenantID`,`schshared`.`tblaccountaddress`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblaccountaddress`.`dtmDateUpdated` AS `dtmDateUpdated`,`schshared`.`tblaccountaddress`.`intAccountAddressTypeID` AS `intAccountAddressTypeID`,`schshared`.`tblaccountaddress`.`intCountryID` AS `intCountryID`,`schshared`.`tblaccountaddress`.`strAddress1` AS `strAddress1`,`schshared`.`tblaccountaddress`.`strAddress2` AS `strAddress2`,`schshared`.`tblaccountaddress`.`strAttention` AS `strAttention`,`schshared`.`tblaccountaddress`.`strCity` AS `strCity`,`schshared`.`tblaccountaddress`.`strPostalCode` AS `strPostalCode`,`schshared`.`tblaccountaddress`.`strState` AS `strState` from `schshared`.`tblaccountaddress` where (`schshared`.`tblaccountaddress`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblaccountaddresstype`
--

/*!50001 DROP VIEW IF EXISTS `tblaccountaddresstype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblaccountaddresstype` AS select `schshared`.`tblaccountaddresstype`.`id` AS `id`,`schshared`.`tblaccountaddresstype`.`strName` AS `strName` from `schshared`.`tblaccountaddresstype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblaccountlog`
--

/*!50001 DROP VIEW IF EXISTS `tblaccountlog`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblaccountlog` AS select `schshared`.`tblaccountlog`.`id` AS `id`,`schshared`.`tblaccountlog`.`intTenantID` AS `intTenantID`,`schshared`.`tblaccountlog`.`dblDiscount` AS `dblDiscount`,`schshared`.`tblaccountlog`.`dblTotalPrice` AS `dblTotalPrice`,`schshared`.`tblaccountlog`.`dblUnitPrice` AS `dblUnitPrice`,`schshared`.`tblaccountlog`.`dtmDate` AS `dtmDate`,`schshared`.`tblaccountlog`.`intAccountLogStatusID` AS `intAccountLogStatusID`,`schshared`.`tblaccountlog`.`intAccountLogTypeID` AS `intAccountLogTypeID`,`schshared`.`tblaccountlog`.`intClientSessionID` AS `intClientSessionID`,`schshared`.`tblaccountlog`.`intNumberSeats` AS `intNumberSeats`,`schshared`.`tblaccountlog`.`intProductTierId` AS `intProductTierId`,`schshared`.`tblaccountlog`.`intRecurringTypeId` AS `intRecurringTypeId`,`schshared`.`tblaccountlog`.`intUserID` AS `intUserID`,`schshared`.`tblaccountlog`.`strException` AS `strException`,`schshared`.`tblaccountlog`.`strKey` AS `strKey`,`schshared`.`tblaccountlog`.`strNotes` AS `strNotes` from `schshared`.`tblaccountlog` where (`schshared`.`tblaccountlog`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblaccountlogdiscount`
--

/*!50001 DROP VIEW IF EXISTS `tblaccountlogdiscount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblaccountlogdiscount` AS select `schshared`.`tblaccountlogdiscount`.`id` AS `id`,`schshared`.`tblaccountlogdiscount`.`intTenantID` AS `intTenantID`,`schshared`.`tblaccountlogdiscount`.`dblTotalDiscount` AS `dblTotalDiscount`,`schshared`.`tblaccountlogdiscount`.`dblUnitDiscount` AS `dblUnitDiscount`,`schshared`.`tblaccountlogdiscount`.`dtmDateEnd` AS `dtmDateEnd`,`schshared`.`tblaccountlogdiscount`.`dtmDateStart` AS `dtmDateStart`,`schshared`.`tblaccountlogdiscount`.`duration` AS `duration`,`schshared`.`tblaccountlogdiscount`.`intAccountLogID` AS `intAccountLogID`,`schshared`.`tblaccountlogdiscount`.`intLineItemID` AS `intLineItemID`,`schshared`.`tblaccountlogdiscount`.`intOrderID` AS `intOrderID`,`schshared`.`tblaccountlogdiscount`.`intProductAppliedID` AS `intProductAppliedID`,`schshared`.`tblaccountlogdiscount`.`intPromotionAppliedID` AS `intPromotionAppliedID`,`schshared`.`tblaccountlogdiscount`.`intQuantity` AS `intQuantity`,`schshared`.`tblaccountlogdiscount`.`intSubscriptionPlanID` AS `intSubscriptionPlanID`,`schshared`.`tblaccountlogdiscount`.`strNotes` AS `strNotes` from `schshared`.`tblaccountlogdiscount` where (`schshared`.`tblaccountlogdiscount`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblaccountlogorder`
--

/*!50001 DROP VIEW IF EXISTS `tblaccountlogorder`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblaccountlogorder` AS select `schshared`.`tblaccountlogorder`.`id` AS `id`,`schshared`.`tblaccountlogorder`.`intTenantID` AS `intTenantID`,`schshared`.`tblaccountlogorder`.`datBillingPeriodEnd` AS `datBillingPeriodEnd`,`schshared`.`tblaccountlogorder`.`datBillingPeriodStart` AS `datBillingPeriodStart`,`schshared`.`tblaccountlogorder`.`intAccountLogID` AS `intAccountLogID`,`schshared`.`tblaccountlogorder`.`intOrderID` AS `intOrderID` from `schshared`.`tblaccountlogorder` where (`schshared`.`tblaccountlogorder`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblaccountlogstatus`
--

/*!50001 DROP VIEW IF EXISTS `tblaccountlogstatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblaccountlogstatus` AS select `schshared`.`tblaccountlogstatus`.`id` AS `id`,`schshared`.`tblaccountlogstatus`.`strName` AS `strName` from `schshared`.`tblaccountlogstatus` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblaccountlogtype`
--

/*!50001 DROP VIEW IF EXISTS `tblaccountlogtype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblaccountlogtype` AS select `schshared`.`tblaccountlogtype`.`id` AS `id`,`schshared`.`tblaccountlogtype`.`strName` AS `strName` from `schshared`.`tblaccountlogtype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblaccountnotes`
--

/*!50001 DROP VIEW IF EXISTS `tblaccountnotes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblaccountnotes` AS select `schshared`.`tblaccountnotes`.`id` AS `id`,`schshared`.`tblaccountnotes`.`intTenantID` AS `intTenantID`,`schshared`.`tblaccountnotes`.`bolReminderSent` AS `bolReminderSent`,`schshared`.`tblaccountnotes`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblaccountnotes`.`dtmDateRemind` AS `dtmDateRemind`,`schshared`.`tblaccountnotes`.`intCreatedByUserID` AS `intCreatedByUserID`,`schshared`.`tblaccountnotes`.`intScheduledJobID` AS `intScheduledJobID`,`schshared`.`tblaccountnotes`.`strNotes` AS `strNotes` from `schshared`.`tblaccountnotes` where (`schshared`.`tblaccountnotes`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblactivitylog`
--

/*!50001 DROP VIEW IF EXISTS `tblactivitylog`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblactivitylog` AS select `schshared`.`tblactivitylog`.`id` AS `id`,`schshared`.`tblactivitylog`.`intTenantID` AS `intTenantID`,`schshared`.`tblactivitylog`.`dtmDate` AS `dtmDate`,`schshared`.`tblactivitylog`.`intActivityLogStatusID` AS `intActivityLogStatusID`,`schshared`.`tblactivitylog`.`intActivityLogTypeID` AS `intActivityLogTypeID`,`schshared`.`tblactivitylog`.`intAssetID` AS `intAssetID`,`schshared`.`tblactivitylog`.`intIntegrationActionID` AS `intIntegrationActionID`,`schshared`.`tblactivitylog`.`intScheduledMaintenanceID` AS `intScheduledMaintenanceID`,`schshared`.`tblactivitylog`.`intUserID` AS `intUserID`,`schshared`.`tblactivitylog`.`strException` AS `strException`,`schshared`.`tblactivitylog`.`strNotes` AS `strNotes` from `schshared`.`tblactivitylog` where (`schshared`.`tblactivitylog`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblactivitylogstatus`
--

/*!50001 DROP VIEW IF EXISTS `tblactivitylogstatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblactivitylogstatus` AS select `schshared`.`tblactivitylogstatus`.`id` AS `id`,`schshared`.`tblactivitylogstatus`.`strName` AS `strName` from `schshared`.`tblactivitylogstatus` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblactivitylogtype`
--

/*!50001 DROP VIEW IF EXISTS `tblactivitylogtype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblactivitylogtype` AS select `schshared`.`tblactivitylogtype`.`id` AS `id`,`schshared`.`tblactivitylogtype`.`intEntityOwnerId` AS `intEntityOwnerId`,`schshared`.`tblactivitylogtype`.`strName` AS `strName` from `schshared`.`tblactivitylogtype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblaffiliateprogram`
--

/*!50001 DROP VIEW IF EXISTS `tblaffiliateprogram`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblaffiliateprogram` AS select `schshared`.`tblaffiliateprogram`.`id` AS `id`,`schshared`.`tblaffiliateprogram`.`strApiKey` AS `strApiKey`,`schshared`.`tblaffiliateprogram`.`strName` AS `strName` from `schshared`.`tblaffiliateprogram` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblapiconsumertype`
--

/*!50001 DROP VIEW IF EXISTS `tblapiconsumertype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblapiconsumertype` AS select `schshared`.`tblapiconsumertype`.`id` AS `id`,`schshared`.`tblapiconsumertype`.`strName` AS `strName` from `schshared`.`tblapiconsumertype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblapiconsumerusage`
--

/*!50001 DROP VIEW IF EXISTS `tblapiconsumerusage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblapiconsumerusage` AS select `schshared`.`tblapiconsumerusage`.`id` AS `id`,`schshared`.`tblapiconsumerusage`.`intTenantID` AS `intTenantID`,`schshared`.`tblapiconsumerusage`.`dtmDatePeriodEnd` AS `dtmDatePeriodEnd`,`schshared`.`tblapiconsumerusage`.`dtmDatePeriodStart` AS `dtmDatePeriodStart`,`schshared`.`tblapiconsumerusage`.`intApiConsumerDistributionParentID` AS `intApiConsumerDistributionParentID`,`schshared`.`tblapiconsumerusage`.`intApiConsumerID` AS `intApiConsumerID`,`schshared`.`tblapiconsumerusage`.`intDay` AS `intDay`,`schshared`.`tblapiconsumerusage`.`intMonth` AS `intMonth`,`schshared`.`tblapiconsumerusage`.`intRequestCount` AS `intRequestCount`,`schshared`.`tblapiconsumerusage`.`intYear` AS `intYear` from `schshared`.`tblapiconsumerusage` where (`schshared`.`tblapiconsumerusage`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblapiusage`
--

/*!50001 DROP VIEW IF EXISTS `tblapiusage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblapiusage` AS select `schshared`.`tblapiusage`.`id` AS `id`,`schshared`.`tblapiusage`.`intTenantID` AS `intTenantID`,`schshared`.`tblapiusage`.`intApiID` AS `intApiID`,`schshared`.`tblapiusage`.`intAuthorizationTypeID` AS `intAuthorizationTypeID`,`schshared`.`tblapiusage`.`intDay` AS `intDay`,`schshared`.`tblapiusage`.`intMonth` AS `intMonth`,`schshared`.`tblapiusage`.`intRequestCount` AS `intRequestCount`,`schshared`.`tblapiusage`.`intYear` AS `intYear` from `schshared`.`tblapiusage` where (`schshared`.`tblapiusage`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblasset`
--

/*!50001 DROP VIEW IF EXISTS `tblasset`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblasset` AS select `schshared`.`tblasset`.`id` AS `id`,`schshared`.`tblasset`.`intTenantID` AS `intTenantID`,`schshared`.`tblasset`.`intSysCode` AS `intSysCode`,`schshared`.`tblasset`.`bolHasAddress` AS `bolHasAddress`,`schshared`.`tblasset`.`bolImportedPriceFromV2` AS `bolImportedPriceFromV2`,`schshared`.`tblasset`.`bolIsBillToFacility` AS `bolIsBillToFacility`,`schshared`.`tblasset`.`bolIsCritical` AS `bolIsCritical`,`schshared`.`tblasset`.`bolIsOnline` AS `bolIsOnline`,`schshared`.`tblasset`.`bolIsPool` AS `bolIsPool`,`schshared`.`tblasset`.`bolIsRegion` AS `bolIsRegion`,`schshared`.`tblasset`.`bolIsShippingOrReceivingFacility` AS `bolIsShippingOrReceivingFacility`,`schshared`.`tblasset`.`bolIsSite` AS `bolIsSite`,`schshared`.`tblasset`.`bolManageInventory` AS `bolManageInventory`,`schshared`.`tblasset`.`bolNeedsCalibration` AS `bolNeedsCalibration`,`schshared`.`tblasset`.`bolUsersCanClockInOut` AS `bolUsersCanClockInOut`,`schshared`.`tblasset`.`cBarcode` AS `cBarcode`,`schshared`.`tblasset`.`dblLastPrice` AS `dblLastPrice`,`schshared`.`tblasset`.`dblLatitude` AS `dblLatitude`,`schshared`.`tblasset`.`dblLongitude` AS `dblLongitude`,`schshared`.`tblasset`.`dblWeightedPrice` AS `dblWeightedPrice`,`schshared`.`tblasset`.`dtmCreated` AS `dtmCreated`,`schshared`.`tblasset`.`dtmLastUpdated` AS `dtmLastUpdated`,`schshared`.`tblasset`.`intAccountID` AS `intAccountID`,`schshared`.`tblasset`.`intAssetLocationID` AS `intAssetLocationID`,`schshared`.`tblasset`.`intAssetParentID` AS `intAssetParentID`,`schshared`.`tblasset`.`intAssetStatusID` AS `intAssetStatusID`,`schshared`.`tblasset`.`intCategoryID` AS `intCategoryID`,`schshared`.`tblasset`.`intChargeDepartmentID` AS `intChargeDepartmentID`,`schshared`.`tblasset`.`intCountryID` AS `intCountryID`,`schshared`.`tblasset`.`intCreatedForPurchaseOrderLineItemID` AS `intCreatedForPurchaseOrderLineItemID`,`schshared`.`tblasset`.`intCreatedFromReceiptLineItemID` AS `intCreatedFromReceiptLineItemID`,`schshared`.`tblasset`.`intKind` AS `intKind`,`schshared`.`tblasset`.`intLastMeterReadingUnitID` AS `intLastMeterReadingUnitID`,`schshared`.`tblasset`.`intLastPriceCurrencyID` AS `intLastPriceCurrencyID`,`schshared`.`tblasset`.`intLayoutX` AS `intLayoutX`,`schshared`.`tblasset`.`intLayoutY` AS `intLayoutY`,`schshared`.`tblasset`.`intPhysicalLocationID` AS `intPhysicalLocationID`,`schshared`.`tblasset`.`intSiteID` AS `intSiteID`,`schshared`.`tblasset`.`intSuperAssetCategoryID` AS `intSuperAssetCategoryID`,`schshared`.`tblasset`.`intSuperCategoryID` AS `intSuperCategoryID`,`schshared`.`tblasset`.`intSuperCategorySysCode` AS `intSuperCategorySysCode`,`schshared`.`tblasset`.`intUpdated` AS `intUpdated`,`schshared`.`tblasset`.`qtyMinStockCount` AS `qtyMinStockCount`,`schshared`.`tblasset`.`qtyStockCount` AS `qtyStockCount`,`schshared`.`tblasset`.`strAddress` AS `strAddress`,`schshared`.`tblasset`.`strAisle` AS `strAisle`,`schshared`.`tblasset`.`strBarcode` AS `strBarcode`,`schshared`.`tblasset`.`strBinNumber` AS `strBinNumber`,`schshared`.`tblasset`.`strCity` AS `strCity`,`schshared`.`tblasset`.`strCode` AS `strCode`,`schshared`.`tblasset`.`strCriticality` AS `strCriticality`,`schshared`.`tblasset`.`strCustomerIds` AS `strCustomerIds`,`schshared`.`tblasset`.`strCustomers` AS `strCustomers`,`schshared`.`tblasset`.`strDescription` AS `strDescription`,`schshared`.`tblasset`.`strInventoryCode` AS `strInventoryCode`,`schshared`.`tblasset`.`strMASourceProduct` AS `strMASourceProduct`,`schshared`.`tblasset`.`strMake` AS `strMake`,`schshared`.`tblasset`.`strModel` AS `strModel`,`schshared`.`tblasset`.`strName` AS `strName`,`schshared`.`tblasset`.`strNotes` AS `strNotes`,`schshared`.`tblasset`.`strPostalCode` AS `strPostalCode`,`schshared`.`tblasset`.`strProvince` AS `strProvince`,`schshared`.`tblasset`.`strQuotingTerms` AS `strQuotingTerms`,`schshared`.`tblasset`.`strRFQTriggerSiteLevelSetting` AS `strRFQTriggerSiteLevelSetting`,`schshared`.`tblasset`.`strRow` AS `strRow`,`schshared`.`tblasset`.`strSerialNumber` AS `strSerialNumber`,`schshared`.`tblasset`.`strShippingTerms` AS `strShippingTerms`,`schshared`.`tblasset`.`strStockLocation` AS `strStockLocation`,`schshared`.`tblasset`.`strSysCustomColumnValues` AS `strSysCustomColumnValues`,`schshared`.`tblasset`.`strTimezone` AS `strTimezone`,`schshared`.`tblasset`.`strUnspcCode` AS `strUnspcCode`,`schshared`.`tblasset`.`strUuid` AS `strUuid`,`schshared`.`tblasset`.`strVendorIds` AS `strVendorIds`,`schshared`.`tblasset`.`strVendors` AS `strVendors` from `schshared`.`tblasset` where (`schshared`.`tblasset`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetactivitylog`
--

/*!50001 DROP VIEW IF EXISTS `tblassetactivitylog`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetactivitylog` AS select `schshared`.`tblassetactivitylog`.`id` AS `id`,`schshared`.`tblassetactivitylog`.`intTenantID` AS `intTenantID`,`schshared`.`tblassetactivitylog`.`dtmDate` AS `dtmDate`,`schshared`.`tblassetactivitylog`.`intActivityLogID` AS `intActivityLogID`,`schshared`.`tblassetactivitylog`.`intMoveAssetID` AS `intMoveAssetID`,`schshared`.`tblassetactivitylog`.`intMoveBackAssetID` AS `intMoveBackAssetID`,`schshared`.`tblassetactivitylog`.`intMoveBackID` AS `intMoveBackID`,`schshared`.`tblassetactivitylog`.`intMoveID` AS `intMoveID`,`schshared`.`tblassetactivitylog`.`intUserID` AS `intUserID` from `schshared`.`tblassetactivitylog` where (`schshared`.`tblassetactivitylog`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetbusiness`
--

/*!50001 DROP VIEW IF EXISTS `tblassetbusiness`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetbusiness` AS select `schshared`.`tblassetbusiness`.`id` AS `id`,`schshared`.`tblassetbusiness`.`intTenantID` AS `intTenantID`,`schshared`.`tblassetbusiness`.`bolAddShipmentAddressToRFQ` AS `bolAddShipmentAddressToRFQ`,`schshared`.`tblassetbusiness`.`bolEnableBusinessTrackingSync` AS `bolEnableBusinessTrackingSync`,`schshared`.`tblassetbusiness`.`bolPreferredVendor` AS `bolPreferredVendor`,`schshared`.`tblassetbusiness`.`bolPrimary` AS `bolPrimary`,`schshared`.`tblassetbusiness`.`bolSendRFQs` AS `bolSendRFQs`,`schshared`.`tblassetbusiness`.`intAssetID` AS `intAssetID`,`schshared`.`tblassetbusiness`.`intBusinessGroupID` AS `intBusinessGroupID`,`schshared`.`tblassetbusiness`.`intBusinessID` AS `intBusinessID`,`schshared`.`tblassetbusiness`.`intBusinessRoleTypeID` AS `intBusinessRoleTypeID`,`schshared`.`tblassetbusiness`.`intRFQNumDaysForDelivery` AS `intRFQNumDaysForDelivery`,`schshared`.`tblassetbusiness`.`qtyEconomicBatchQuantity` AS `qtyEconomicBatchQuantity`,`schshared`.`tblassetbusiness`.`strBusinessAssetNumber` AS `strBusinessAssetNumber`,`schshared`.`tblassetbusiness`.`strCatalog` AS `strCatalog`,`schshared`.`tblassetbusiness`.`strProductURL` AS `strProductURL`,`schshared`.`tblassetbusiness`.`strSolrID` AS `strSolrID`,`schshared`.`tblassetbusiness`.`strUuid` AS `strUuid` from `schshared`.`tblassetbusiness` where (`schshared`.`tblassetbusiness`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetcategory`
--

/*!50001 DROP VIEW IF EXISTS `tblassetcategory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetcategory` AS select `schshared`.`tblassetcategory`.`id` AS `id`,`schshared`.`tblassetcategory`.`intTenantID` AS `intTenantID`,`schshared`.`tblassetcategory`.`intSysCode` AS `intSysCode`,`schshared`.`tblassetcategory`.`bolOverrideRules` AS `bolOverrideRules`,`schshared`.`tblassetcategory`.`intParentID` AS `intParentID`,`schshared`.`tblassetcategory`.`intUpdated` AS `intUpdated`,`schshared`.`tblassetcategory`.`strName` AS `strName`,`schshared`.`tblassetcategory`.`strUuid` AS `strUuid` from `schshared`.`tblassetcategory` where (`schshared`.`tblassetcategory`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetcategorybarcodeformattype`
--

/*!50001 DROP VIEW IF EXISTS `tblassetcategorybarcodeformattype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetcategorybarcodeformattype` AS select `schshared`.`tblassetcategorybarcodeformattype`.`id` AS `id`,`schshared`.`tblassetcategorybarcodeformattype`.`intTenantID` AS `intTenantID`,`schshared`.`tblassetcategorybarcodeformattype`.`intAssetCategoryID` AS `intAssetCategoryID`,`schshared`.`tblassetcategorybarcodeformattype`.`intBarcodeFormatTypeID` AS `intBarcodeFormatTypeID`,`schshared`.`tblassetcategorybarcodeformattype`.`intUpdated` AS `intUpdated`,`schshared`.`tblassetcategorybarcodeformattype`.`strBarcodeStartSymbol` AS `strBarcodeStartSymbol`,`schshared`.`tblassetcategorybarcodeformattype`.`strBarcodeStopSymbol` AS `strBarcodeStopSymbol` from `schshared`.`tblassetcategorybarcodeformattype` where (`schshared`.`tblassetcategorybarcodeformattype`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetcategoryresolved`
--

/*!50001 DROP VIEW IF EXISTS `tblassetcategoryresolved`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetcategoryresolved` AS select `schshared`.`tblassetcategoryresolved`.`id` AS `id`,`schshared`.`tblassetcategoryresolved`.`intTenantID` AS `intTenantID`,`schshared`.`tblassetcategoryresolved`.`intChildID` AS `intChildID`,`schshared`.`tblassetcategoryresolved`.`intParentID` AS `intParentID` from `schshared`.`tblassetcategoryresolved` where (`schshared`.`tblassetcategoryresolved`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetclassification`
--

/*!50001 DROP VIEW IF EXISTS `tblassetclassification`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetclassification` AS select `schshared`.`tblassetclassification`.`id` AS `id`,`schshared`.`tblassetclassification`.`intTenantID` AS `intTenantID`,`schshared`.`tblassetclassification`.`intAssetID` AS `intAssetID`,`schshared`.`tblassetclassification`.`intClassificationID` AS `intClassificationID`,`schshared`.`tblassetclassification`.`intSiteID` AS `intSiteID`,`schshared`.`tblassetclassification`.`qtyAnnualUsage` AS `qtyAnnualUsage` from `schshared`.`tblassetclassification` where (`schshared`.`tblassetclassification`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetclassificationlog`
--

/*!50001 DROP VIEW IF EXISTS `tblassetclassificationlog`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetclassificationlog` AS select `schshared`.`tblassetclassificationlog`.`id` AS `id`,`schshared`.`tblassetclassificationlog`.`intTenantID` AS `intTenantID`,`schshared`.`tblassetclassificationlog`.`dtmDateApplied` AS `dtmDateApplied`,`schshared`.`tblassetclassificationlog`.`intAssetID` AS `intAssetID`,`schshared`.`tblassetclassificationlog`.`intClassificationID` AS `intClassificationID`,`schshared`.`tblassetclassificationlog`.`intSiteID` AS `intSiteID` from `schshared`.`tblassetclassificationlog` where (`schshared`.`tblassetclassificationlog`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetconsumingreference`
--

/*!50001 DROP VIEW IF EXISTS `tblassetconsumingreference`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetconsumingreference` AS select `schshared`.`tblassetconsumingreference`.`id` AS `id`,`schshared`.`tblassetconsumingreference`.`intTenantID` AS `intTenantID`,`schshared`.`tblassetconsumingreference`.`intAssetID` AS `intAssetID`,`schshared`.`tblassetconsumingreference`.`intBOMControlID` AS `intBOMControlID`,`schshared`.`tblassetconsumingreference`.`intBOMPartControlID` AS `intBOMPartControlID`,`schshared`.`tblassetconsumingreference`.`intConsumesAssetID` AS `intConsumesAssetID`,`schshared`.`tblassetconsumingreference`.`intUpdated` AS `intUpdated`,`schshared`.`tblassetconsumingreference`.`qtyMaxConsumption` AS `qtyMaxConsumption`,`schshared`.`tblassetconsumingreference`.`strUuid` AS `strUuid` from `schshared`.`tblassetconsumingreference` where (`schshared`.`tblassetconsumingreference`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetdepletiontracking`
--

/*!50001 DROP VIEW IF EXISTS `tblassetdepletiontracking`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetdepletiontracking` AS select `schshared`.`tblassetdepletiontracking`.`id` AS `id`,`schshared`.`tblassetdepletiontracking`.`intTenantID` AS `intTenantID`,`schshared`.`tblassetdepletiontracking`.`intAssetPurchaseTrackingID` AS `intAssetPurchaseTrackingID`,`schshared`.`tblassetdepletiontracking`.`intWorkOrderPartID` AS `intWorkOrderPartID`,`schshared`.`tblassetdepletiontracking`.`qtyQuantityUsed` AS `qtyQuantityUsed` from `schshared`.`tblassetdepletiontracking` where (`schshared`.`tblassetdepletiontracking`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetevent`
--

/*!50001 DROP VIEW IF EXISTS `tblassetevent`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetevent` AS select `schshared`.`tblassetevent`.`id` AS `id`,`schshared`.`tblassetevent`.`intTenantID` AS `intTenantID`,`schshared`.`tblassetevent`.`dtmDateSubmitted` AS `dtmDateSubmitted`,`schshared`.`tblassetevent`.`intAssetEventTypeID` AS `intAssetEventTypeID`,`schshared`.`tblassetevent`.`intAssetID` AS `intAssetID`,`schshared`.`tblassetevent`.`intSubmittedByUserID` AS `intSubmittedByUserID`,`schshared`.`tblassetevent`.`intWorkOrderID` AS `intWorkOrderID`,`schshared`.`tblassetevent`.`strAdditionalDescription` AS `strAdditionalDescription` from `schshared`.`tblassetevent` where (`schshared`.`tblassetevent`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblasseteventtype`
--

/*!50001 DROP VIEW IF EXISTS `tblasseteventtype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblasseteventtype` AS select `schshared`.`tblasseteventtype`.`id` AS `id`,`schshared`.`tblasseteventtype`.`intTenantID` AS `intTenantID`,`schshared`.`tblasseteventtype`.`bolArchived` AS `bolArchived`,`schshared`.`tblasseteventtype`.`strEventCode` AS `strEventCode`,`schshared`.`tblasseteventtype`.`strEventDescription` AS `strEventDescription`,`schshared`.`tblasseteventtype`.`strEventName` AS `strEventName`,`schshared`.`tblasseteventtype`.`strUuid` AS `strUuid` from `schshared`.`tblasseteventtype` where (`schshared`.`tblasseteventtype`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblasseteventtypeasset`
--

/*!50001 DROP VIEW IF EXISTS `tblasseteventtypeasset`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblasseteventtypeasset` AS select `schshared`.`tblasseteventtypeasset`.`id` AS `id`,`schshared`.`tblasseteventtypeasset`.`intTenantID` AS `intTenantID`,`schshared`.`tblasseteventtypeasset`.`intAssetEventTypeID` AS `intAssetEventTypeID`,`schshared`.`tblasseteventtypeasset`.`intAssetID` AS `intAssetID` from `schshared`.`tblasseteventtypeasset` where (`schshared`.`tblasseteventtypeasset`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetofflinetracker`
--

/*!50001 DROP VIEW IF EXISTS `tblassetofflinetracker`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetofflinetracker` AS select `schshared`.`tblassetofflinetracker`.`id` AS `id`,`schshared`.`tblassetofflinetracker`.`intTenantID` AS `intTenantID`,`schshared`.`tblassetofflinetracker`.`dblProductionHoursAffected` AS `dblProductionHoursAffected`,`schshared`.`tblassetofflinetracker`.`dtmOffLineTo` AS `dtmOffLineTo`,`schshared`.`tblassetofflinetracker`.`dtmOfflineFrom` AS `dtmOfflineFrom`,`schshared`.`tblassetofflinetracker`.`intAssetEventTypeID` AS `intAssetEventTypeID`,`schshared`.`tblassetofflinetracker`.`intAssetID` AS `intAssetID`,`schshared`.`tblassetofflinetracker`.`intAssetIsLocatedAtAsssetID` AS `intAssetIsLocatedAtAsssetID`,`schshared`.`tblassetofflinetracker`.`intAssetIsPartOfAssetID` AS `intAssetIsPartOfAssetID`,`schshared`.`tblassetofflinetracker`.`intReasonOfflineID` AS `intReasonOfflineID`,`schshared`.`tblassetofflinetracker`.`intReasonOnlineID` AS `intReasonOnlineID`,`schshared`.`tblassetofflinetracker`.`intSendToFacilityID` AS `intSendToFacilityID`,`schshared`.`tblassetofflinetracker`.`intSetOfflineByUserID` AS `intSetOfflineByUserID`,`schshared`.`tblassetofflinetracker`.`intSetOnlineByUserID` AS `intSetOnlineByUserID`,`schshared`.`tblassetofflinetracker`.`intStatusChangedByUserID` AS `intStatusChangedByUserID`,`schshared`.`tblassetofflinetracker`.`intSwapWithAssetID` AS `intSwapWithAssetID`,`schshared`.`tblassetofflinetracker`.`intUpdated` AS `intUpdated`,`schshared`.`tblassetofflinetracker`.`intWorkOrderID` AS `intWorkOrderID`,`schshared`.`tblassetofflinetracker`.`strAssetEventDescription` AS `strAssetEventDescription`,`schshared`.`tblassetofflinetracker`.`strOfflineAdditionalInfo` AS `strOfflineAdditionalInfo`,`schshared`.`tblassetofflinetracker`.`strOnlineAdditionalInfo` AS `strOnlineAdditionalInfo`,`schshared`.`tblassetofflinetracker`.`strRbAssetLocation` AS `strRbAssetLocation`,`schshared`.`tblassetofflinetracker`.`strRbMovement` AS `strRbMovement`,`schshared`.`tblassetofflinetracker`.`strSendToAisle` AS `strSendToAisle`,`schshared`.`tblassetofflinetracker`.`strSendToBin` AS `strSendToBin`,`schshared`.`tblassetofflinetracker`.`strSendToRow` AS `strSendToRow`,`schshared`.`tblassetofflinetracker`.`strUuid` AS `strUuid` from `schshared`.`tblassetofflinetracker` where (`schshared`.`tblassetofflinetracker`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetproperty`
--

/*!50001 DROP VIEW IF EXISTS `tblassetproperty`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetproperty` AS select `schshared`.`tblassetproperty`.`id` AS `id`,`schshared`.`tblassetproperty`.`intTenantID` AS `intTenantID`,`schshared`.`tblassetproperty`.`intAssetID` AS `intAssetID`,`schshared`.`tblassetproperty`.`intAssetPropertyTypeID` AS `intAssetPropertyTypeID`,`schshared`.`tblassetproperty`.`intMeterReadingUnitID` AS `intMeterReadingUnitID`,`schshared`.`tblassetproperty`.`strCode` AS `strCode`,`schshared`.`tblassetproperty`.`strName` AS `strName` from `schshared`.`tblassetproperty` where (`schshared`.`tblassetproperty`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetpropertydomainelement`
--

/*!50001 DROP VIEW IF EXISTS `tblassetpropertydomainelement`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetpropertydomainelement` AS select `schshared`.`tblassetpropertydomainelement`.`id` AS `id`,`schshared`.`tblassetpropertydomainelement`.`intTenantID` AS `intTenantID`,`schshared`.`tblassetpropertydomainelement`.`intAssetPropertyID` AS `intAssetPropertyID`,`schshared`.`tblassetpropertydomainelement`.`intOrder` AS `intOrder`,`schshared`.`tblassetpropertydomainelement`.`strName` AS `strName` from `schshared`.`tblassetpropertydomainelement` where (`schshared`.`tblassetpropertydomainelement`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetpropertytype`
--

/*!50001 DROP VIEW IF EXISTS `tblassetpropertytype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetpropertytype` AS select `schshared`.`tblassetpropertytype`.`id` AS `id`,`schshared`.`tblassetpropertytype`.`strName` AS `strName` from `schshared`.`tblassetpropertytype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetpropertyvalue`
--

/*!50001 DROP VIEW IF EXISTS `tblassetpropertyvalue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetpropertyvalue` AS select `schshared`.`tblassetpropertyvalue`.`id` AS `id`,`schshared`.`tblassetpropertyvalue`.`intTenantID` AS `intTenantID`,`schshared`.`tblassetpropertyvalue`.`dblElevation` AS `dblElevation`,`schshared`.`tblassetpropertyvalue`.`dblLatitude` AS `dblLatitude`,`schshared`.`tblassetpropertyvalue`.`dblLongitude` AS `dblLongitude`,`schshared`.`tblassetpropertyvalue`.`dblValue` AS `dblValue`,`schshared`.`tblassetpropertyvalue`.`dtmCreateDate` AS `dtmCreateDate`,`schshared`.`tblassetpropertyvalue`.`dtmSourceDate` AS `dtmSourceDate`,`schshared`.`tblassetpropertyvalue`.`intAssetEventTypeId` AS `intAssetEventTypeId`,`schshared`.`tblassetpropertyvalue`.`intAssetPropertyDomainElementID` AS `intAssetPropertyDomainElementID`,`schshared`.`tblassetpropertyvalue`.`intAssetPropertyID` AS `intAssetPropertyID`,`schshared`.`tblassetpropertyvalue`.`intCreatedByApiUserID` AS `intCreatedByApiUserID`,`schshared`.`tblassetpropertyvalue`.`intCreatedByUserID` AS `intCreatedByUserID`,`schshared`.`tblassetpropertyvalue`.`intSensorOrDeviceID` AS `intSensorOrDeviceID` from `schshared`.`tblassetpropertyvalue` where (`schshared`.`tblassetpropertyvalue`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetpurchasetracking`
--

/*!50001 DROP VIEW IF EXISTS `tblassetpurchasetracking`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetpurchasetracking` AS select `schshared`.`tblassetpurchasetracking`.`id` AS `id`,`schshared`.`tblassetpurchasetracking`.`intTenantID` AS `intTenantID`,`schshared`.`tblassetpurchasetracking`.`bolMigrated` AS `bolMigrated`,`schshared`.`tblassetpurchasetracking`.`dblPurchasePricePerUnit` AS `dblPurchasePricePerUnit`,`schshared`.`tblassetpurchasetracking`.`dblPurchasePriceTotal` AS `dblPurchasePriceTotal`,`schshared`.`tblassetpurchasetracking`.`dtmDateExpiryOfInventoryItems` AS `dtmDateExpiryOfInventoryItems`,`schshared`.`tblassetpurchasetracking`.`dtmDateOrdered` AS `dtmDateOrdered`,`schshared`.`tblassetpurchasetracking`.`dtmDateReceived` AS `dtmDateReceived`,`schshared`.`tblassetpurchasetracking`.`intAssetID` AS `intAssetID`,`schshared`.`tblassetpurchasetracking`.`intBusinessID` AS `intBusinessID`,`schshared`.`tblassetpurchasetracking`.`intPurchaseCurrencyID` AS `intPurchaseCurrencyID`,`schshared`.`tblassetpurchasetracking`.`intV2ID` AS `intV2ID`,`schshared`.`tblassetpurchasetracking`.`qtyQuantityLeft` AS `qtyQuantityLeft`,`schshared`.`tblassetpurchasetracking`.`qtyQuantityLeftAtTimeOfOrder` AS `qtyQuantityLeftAtTimeOfOrder`,`schshared`.`tblassetpurchasetracking`.`qtyQuantityPurchased` AS `qtyQuantityPurchased`,`schshared`.`tblassetpurchasetracking`.`qtyQuantityUsed` AS `qtyQuantityUsed` from `schshared`.`tblassetpurchasetracking` where (`schshared`.`tblassetpurchasetracking`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetresolved`
--

/*!50001 DROP VIEW IF EXISTS `tblassetresolved`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetresolved` AS select `schshared`.`tblassetresolved`.`id` AS `id`,`schshared`.`tblassetresolved`.`intTenantID` AS `intTenantID`,`schshared`.`tblassetresolved`.`intAncestorID` AS `intAncestorID`,`schshared`.`tblassetresolved`.`intDescendantID` AS `intDescendantID` from `schshared`.`tblassetresolved` where (`schshared`.`tblassetresolved`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetselection`
--

/*!50001 DROP VIEW IF EXISTS `tblassetselection`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetselection` AS select `schshared`.`tblassetselection`.`id` AS `id`,`schshared`.`tblassetselection`.`intTenantID` AS `intTenantID`,`schshared`.`tblassetselection`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblassetselection`.`intAssetId` AS `intAssetId` from `schshared`.`tblassetselection` where (`schshared`.`tblassetselection`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetstatus`
--

/*!50001 DROP VIEW IF EXISTS `tblassetstatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetstatus` AS select `schshared`.`tblassetstatus`.`id` AS `id`,`schshared`.`tblassetstatus`.`strName` AS `strName` from `schshared`.`tblassetstatus` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetuser`
--

/*!50001 DROP VIEW IF EXISTS `tblassetuser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetuser` AS select `schshared`.`tblassetuser`.`id` AS `id`,`schshared`.`tblassetuser`.`intTenantID` AS `intTenantID`,`schshared`.`tblassetuser`.`bolCanClockIn` AS `bolCanClockIn`,`schshared`.`tblassetuser`.`dtmDateAdded` AS `dtmDateAdded`,`schshared`.`tblassetuser`.`intAssetID` AS `intAssetID`,`schshared`.`tblassetuser`.`intAssetUserTypeID` AS `intAssetUserTypeID`,`schshared`.`tblassetuser`.`intUserID` AS `intUserID` from `schshared`.`tblassetuser` where (`schshared`.`tblassetuser`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblassetusertype`
--

/*!50001 DROP VIEW IF EXISTS `tblassetusertype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblassetusertype` AS select `schshared`.`tblassetusertype`.`id` AS `id`,`schshared`.`tblassetusertype`.`strName` AS `strName` from `schshared`.`tblassetusertype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblauditlog`
--

/*!50001 DROP VIEW IF EXISTS `tblauditlog`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblauditlog` AS select `schshared`.`tblauditlog`.`id` AS `id`,`schshared`.`tblauditlog`.`intTenantID` AS `intTenantID`,`schshared`.`tblauditlog`.`dtmLogDate` AS `dtmLogDate`,`schshared`.`tblauditlog`.`intEntityId` AS `intEntityId`,`schshared`.`tblauditlog`.`intUserID` AS `intUserID`,`schshared`.`tblauditlog`.`strAction` AS `strAction`,`schshared`.`tblauditlog`.`strContext` AS `strContext`,`schshared`.`tblauditlog`.`strContextShort` AS `strContextShort`,`schshared`.`tblauditlog`.`strEntityName` AS `strEntityName`,`schshared`.`tblauditlog`.`strEntityOp` AS `strEntityOp`,`schshared`.`tblauditlog`.`strImpactedFields` AS `strImpactedFields` from `schshared`.`tblauditlog` where (`schshared`.`tblauditlog`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblauditlogarchive`
--

/*!50001 DROP VIEW IF EXISTS `tblauditlogarchive`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblauditlogarchive` AS select `schshared`.`tblauditlogarchive`.`id` AS `id`,`schshared`.`tblauditlogarchive`.`intTenantID` AS `intTenantID`,`schshared`.`tblauditlogarchive`.`dtmLogDate` AS `dtmLogDate`,`schshared`.`tblauditlogarchive`.`intEntityId` AS `intEntityId`,`schshared`.`tblauditlogarchive`.`intUserID` AS `intUserID`,`schshared`.`tblauditlogarchive`.`strAction` AS `strAction`,`schshared`.`tblauditlogarchive`.`strContext` AS `strContext`,`schshared`.`tblauditlogarchive`.`strContextShort` AS `strContextShort`,`schshared`.`tblauditlogarchive`.`strEntityName` AS `strEntityName`,`schshared`.`tblauditlogarchive`.`strEntityOp` AS `strEntityOp`,`schshared`.`tblauditlogarchive`.`strImpactedFields` AS `strImpactedFields` from `schshared`.`tblauditlogarchive` where (`schshared`.`tblauditlogarchive`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblbarcodeformattype`
--

/*!50001 DROP VIEW IF EXISTS `tblbarcodeformattype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblbarcodeformattype` AS select `schshared`.`tblbarcodeformattype`.`id` AS `id`,`schshared`.`tblbarcodeformattype`.`bolActive` AS `bolActive`,`schshared`.`tblbarcodeformattype`.`intTotalLength` AS `intTotalLength`,`schshared`.`tblbarcodeformattype`.`strDescription` AS `strDescription`,`schshared`.`tblbarcodeformattype`.`strExample` AS `strExample`,`schshared`.`tblbarcodeformattype`.`strName` AS `strName` from `schshared`.`tblbarcodeformattype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblbillingtaxes`
--

/*!50001 DROP VIEW IF EXISTS `tblbillingtaxes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblbillingtaxes` AS select `schshared`.`tblbillingtaxes`.`id` AS `id`,`schshared`.`tblbillingtaxes`.`bolZipCodeBased` AS `bolZipCodeBased`,`schshared`.`tblbillingtaxes`.`dblTaxRate` AS `dblTaxRate`,`schshared`.`tblbillingtaxes`.`intCountryID` AS `intCountryID`,`schshared`.`tblbillingtaxes`.`strStateCode` AS `strStateCode`,`schshared`.`tblbillingtaxes`.`strTaxLabel` AS `strTaxLabel` from `schshared`.`tblbillingtaxes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblbillingterm`
--

/*!50001 DROP VIEW IF EXISTS `tblbillingterm`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblbillingterm` AS select `schshared`.`tblbillingterm`.`id` AS `id`,`schshared`.`tblbillingterm`.`intTenantID` AS `intTenantID`,`schshared`.`tblbillingterm`.`intUpdated` AS `intUpdated`,`schshared`.`tblbillingterm`.`strName` AS `strName` from `schshared`.`tblbillingterm` where (`schshared`.`tblbillingterm`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblbillingtype`
--

/*!50001 DROP VIEW IF EXISTS `tblbillingtype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblbillingtype` AS select `schshared`.`tblbillingtype`.`id` AS `id`,`schshared`.`tblbillingtype`.`strName` AS `strName` from `schshared`.`tblbillingtype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblbomgroup`
--

/*!50001 DROP VIEW IF EXISTS `tblbomgroup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblbomgroup` AS select `schshared`.`tblbomgroup`.`id` AS `id`,`schshared`.`tblbomgroup`.`intTenantID` AS `intTenantID`,`schshared`.`tblbomgroup`.`dtmLastUpdated` AS `dtmLastUpdated`,`schshared`.`tblbomgroup`.`intCreatedByUserID` AS `intCreatedByUserID`,`schshared`.`tblbomgroup`.`intLastUpdatedByUserID` AS `intLastUpdatedByUserID`,`schshared`.`tblbomgroup`.`strName` AS `strName`,`schshared`.`tblbomgroup`.`strUuid` AS `strUuid` from `schshared`.`tblbomgroup` where (`schshared`.`tblbomgroup`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblbomgrouppart`
--

/*!50001 DROP VIEW IF EXISTS `tblbomgrouppart`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblbomgrouppart` AS select `schshared`.`tblbomgrouppart`.`id` AS `id`,`schshared`.`tblbomgrouppart`.`intTenantID` AS `intTenantID`,`schshared`.`tblbomgrouppart`.`intAssetID` AS `intAssetID`,`schshared`.`tblbomgrouppart`.`intBOMGroupID` AS `intBOMGroupID`,`schshared`.`tblbomgrouppart`.`qtyMaxConsumption` AS `qtyMaxConsumption`,`schshared`.`tblbomgrouppart`.`strUuid` AS `strUuid` from `schshared`.`tblbomgrouppart` where (`schshared`.`tblbomgrouppart`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblbranding`
--

/*!50001 DROP VIEW IF EXISTS `tblbranding`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblbranding` AS select `schshared`.`tblbranding`.`id` AS `id`,`schshared`.`tblbranding`.`intTenantID` AS `intTenantID`,`schshared`.`tblbranding`.`intBrandingTypeID` AS `intBrandingTypeID`,`schshared`.`tblbranding`.`intFileContentsID` AS `intFileContentsID` from `schshared`.`tblbranding` where (`schshared`.`tblbranding`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblbusiness`
--

/*!50001 DROP VIEW IF EXISTS `tblbusiness`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblbusiness` AS select `schshared`.`tblbusiness`.`id` AS `id`,`schshared`.`tblbusiness`.`intTenantID` AS `intTenantID`,`schshared`.`tblbusiness`.`intSysCode` AS `intSysCode`,`schshared`.`tblbusiness`.`bolDefaultCompany` AS `bolDefaultCompany`,`schshared`.`tblbusiness`.`bolGroupQuotes` AS `bolGroupQuotes`,`schshared`.`tblbusiness`.`bolIsMASourceVendor` AS `bolIsMASourceVendor`,`schshared`.`tblbusiness`.`bolOurBusiness` AS `bolOurBusiness`,`schshared`.`tblbusiness`.`bolPreferredBusiness` AS `bolPreferredBusiness`,`schshared`.`tblbusiness`.`bolPublicCommunity` AS `bolPublicCommunity`,`schshared`.`tblbusiness`.`dtmLastScheduledMaintenanceRunTime` AS `dtmLastScheduledMaintenanceRunTime`,`schshared`.`tblbusiness`.`intBusinessClassificationID` AS `intBusinessClassificationID`,`schshared`.`tblbusiness`.`intBusinessTypeID` AS `intBusinessTypeID`,`schshared`.`tblbusiness`.`intCohortID` AS `intCohortID`,`schshared`.`tblbusiness`.`intCountryID` AS `intCountryID`,`schshared`.`tblbusiness`.`intMASourceSellerID` AS `intMASourceSellerID`,`schshared`.`tblbusiness`.`intPrimaryCurrencyID` AS `intPrimaryCurrencyID`,`schshared`.`tblbusiness`.`intRFQTemplateID` AS `intRFQTemplateID`,`schshared`.`tblbusiness`.`intUpdated` AS `intUpdated`,`schshared`.`tblbusiness`.`strAddress` AS `strAddress`,`schshared`.`tblbusiness`.`strBusinessCorpID` AS `strBusinessCorpID`,`schshared`.`tblbusiness`.`strCity` AS `strCity`,`schshared`.`tblbusiness`.`strCode` AS `strCode`,`schshared`.`tblbusiness`.`strCommunityPassword` AS `strCommunityPassword`,`schshared`.`tblbusiness`.`strCommunityPrivateKey` AS `strCommunityPrivateKey`,`schshared`.`tblbusiness`.`strFax` AS `strFax`,`schshared`.`tblbusiness`.`strName` AS `strName`,`schshared`.`tblbusiness`.`strNotes` AS `strNotes`,`schshared`.`tblbusiness`.`strPhone` AS `strPhone`,`schshared`.`tblbusiness`.`strPhone2` AS `strPhone2`,`schshared`.`tblbusiness`.`strPostalCode` AS `strPostalCode`,`schshared`.`tblbusiness`.`strPrimaryContact` AS `strPrimaryContact`,`schshared`.`tblbusiness`.`strPrimaryEmail` AS `strPrimaryEmail`,`schshared`.`tblbusiness`.`strProvince` AS `strProvince`,`schshared`.`tblbusiness`.`strSecondaryEmail` AS `strSecondaryEmail`,`schshared`.`tblbusiness`.`strTimezone` AS `strTimezone`,`schshared`.`tblbusiness`.`strUuid` AS `strUuid`,`schshared`.`tblbusiness`.`strWebSite` AS `strWebSite` from `schshared`.`tblbusiness` where (`schshared`.`tblbusiness`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblbusinessclassification`
--

/*!50001 DROP VIEW IF EXISTS `tblbusinessclassification`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblbusinessclassification` AS select `schshared`.`tblbusinessclassification`.`id` AS `id`,`schshared`.`tblbusinessclassification`.`strName` AS `strName` from `schshared`.`tblbusinessclassification` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblbusinesscontact`
--

/*!50001 DROP VIEW IF EXISTS `tblbusinesscontact`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblbusinesscontact` AS select `schshared`.`tblbusinesscontact`.`id` AS `id`,`schshared`.`tblbusinesscontact`.`intTenantID` AS `intTenantID`,`schshared`.`tblbusinesscontact`.`intBusinessID` AS `intBusinessID`,`schshared`.`tblbusinesscontact`.`intUserID` AS `intUserID`,`schshared`.`tblbusinesscontact`.`strDepartment` AS `strDepartment`,`schshared`.`tblbusinesscontact`.`strTitle` AS `strTitle` from `schshared`.`tblbusinesscontact` where (`schshared`.`tblbusinesscontact`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblbusinessgroup`
--

/*!50001 DROP VIEW IF EXISTS `tblbusinessgroup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblbusinessgroup` AS select `schshared`.`tblbusinessgroup`.`id` AS `id`,`schshared`.`tblbusinessgroup`.`intTenantID` AS `intTenantID`,`schshared`.`tblbusinessgroup`.`bolIsDefaultManufacturer` AS `bolIsDefaultManufacturer`,`schshared`.`tblbusinessgroup`.`bolIsDefaultSupplier` AS `bolIsDefaultSupplier`,`schshared`.`tblbusinessgroup`.`intRelationshipType` AS `intRelationshipType`,`schshared`.`tblbusinessgroup`.`strName` AS `strName`,`schshared`.`tblbusinessgroup`.`strUuid` AS `strUuid` from `schshared`.`tblbusinessgroup` where (`schshared`.`tblbusinessgroup`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblbusinessrole`
--

/*!50001 DROP VIEW IF EXISTS `tblbusinessrole`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblbusinessrole` AS select `schshared`.`tblbusinessrole`.`id` AS `id`,`schshared`.`tblbusinessrole`.`intTenantID` AS `intTenantID`,`schshared`.`tblbusinessrole`.`intBusinessGroupID` AS `intBusinessGroupID`,`schshared`.`tblbusinessrole`.`intBusinessID` AS `intBusinessID`,`schshared`.`tblbusinessrole`.`intBusinessRoleTypeID` AS `intBusinessRoleTypeID` from `schshared`.`tblbusinessrole` where (`schshared`.`tblbusinessrole`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblbusinessroletype`
--

/*!50001 DROP VIEW IF EXISTS `tblbusinessroletype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblbusinessroletype` AS select `schshared`.`tblbusinessroletype`.`id` AS `id`,`schshared`.`tblbusinessroletype`.`strName` AS `strName` from `schshared`.`tblbusinessroletype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblbusinesstypedef`
--

/*!50001 DROP VIEW IF EXISTS `tblbusinesstypedef`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblbusinesstypedef` AS select `schshared`.`tblbusinesstypedef`.`id` AS `id`,`schshared`.`tblbusinesstypedef`.`bolDefinable` AS `bolDefinable`,`schshared`.`tblbusinesstypedef`.`intDefaultParentID` AS `intDefaultParentID`,`schshared`.`tblbusinesstypedef`.`strAllParent` AS `strAllParent`,`schshared`.`tblbusinesstypedef`.`strBusinessTypeDefName` AS `strBusinessTypeDefName`,`schshared`.`tblbusinesstypedef`.`strBusinessTypeDefShort` AS `strBusinessTypeDefShort` from `schshared`.`tblbusinesstypedef` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblcalendarevent`
--

/*!50001 DROP VIEW IF EXISTS `tblcalendarevent`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblcalendarevent` AS select `schshared`.`tblcalendarevent`.`id` AS `id`,`schshared`.`tblcalendarevent`.`intTenantID` AS `intTenantID`,`schshared`.`tblcalendarevent`.`dblTimeTotalEstimatedHours` AS `dblTimeTotalEstimatedHours`,`schshared`.`tblcalendarevent`.`dtmDate` AS `dtmDate`,`schshared`.`tblcalendarevent`.`intScheduleTriggerID` AS `intScheduleTriggerID`,`schshared`.`tblcalendarevent`.`intScheduledMaintenanceID` AS `intScheduledMaintenanceID`,`schshared`.`tblcalendarevent`.`strScheduledMaintenanceNestingNames` AS `strScheduledMaintenanceNestingNames` from `schshared`.`tblcalendarevent` where (`schshared`.`tblcalendarevent`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblcategorysetting`
--

/*!50001 DROP VIEW IF EXISTS `tblcategorysetting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblcategorysetting` AS select `schshared`.`tblcategorysetting`.`id` AS `id`,`schshared`.`tblcategorysetting`.`intTenantID` AS `intTenantID`,`schshared`.`tblcategorysetting`.`bolBlockMovingAssetsWithOverdueMaintenance` AS `bolBlockMovingAssetsWithOverdueMaintenance`,`schshared`.`tblcategorysetting`.`bolBlockMovingBackAssetsWithOverdueMaintenance` AS `bolBlockMovingBackAssetsWithOverdueMaintenance`,`schshared`.`tblcategorysetting`.`bolBlockMovingBackOfflineAssets` AS `bolBlockMovingBackOfflineAssets`,`schshared`.`tblcategorysetting`.`bolBlockMovingOfflineAssets` AS `bolBlockMovingOfflineAssets`,`schshared`.`tblcategorysetting`.`bolEnableCalibration` AS `bolEnableCalibration`,`schshared`.`tblcategorysetting`.`bolEnableCheckInCheckOutQuickActions` AS `bolEnableCheckInCheckOutQuickActions`,`schshared`.`tblcategorysetting`.`bolEnableMoveControl` AS `bolEnableMoveControl`,`schshared`.`tblcategorysetting`.`bolEnableMoveTracking` AS `bolEnableMoveTracking`,`schshared`.`tblcategorysetting`.`intCategoryID` AS `intCategoryID`,`schshared`.`tblcategorysetting`.`intDefaultDestinationTypeID` AS `intDefaultDestinationTypeID`,`schshared`.`tblcategorysetting`.`intIntervalForUpcomingEventWarning` AS `intIntervalForUpcomingEventWarning` from `schshared`.`tblcategorysetting` where (`schshared`.`tblcategorysetting`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblcertification`
--

/*!50001 DROP VIEW IF EXISTS `tblcertification`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblcertification` AS select `schshared`.`tblcertification`.`id` AS `id`,`schshared`.`tblcertification`.`intTenantID` AS `intTenantID`,`schshared`.`tblcertification`.`strDescription` AS `strDescription`,`schshared`.`tblcertification`.`strName` AS `strName` from `schshared`.`tblcertification` where (`schshared`.`tblcertification`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblchargedepartment`
--

/*!50001 DROP VIEW IF EXISTS `tblchargedepartment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblchargedepartment` AS select `schshared`.`tblchargedepartment`.`id` AS `id`,`schshared`.`tblchargedepartment`.`intTenantID` AS `intTenantID`,`schshared`.`tblchargedepartment`.`intFacilityID` AS `intFacilityID`,`schshared`.`tblchargedepartment`.`intUpdated` AS `intUpdated`,`schshared`.`tblchargedepartment`.`strCode` AS `strCode`,`schshared`.`tblchargedepartment`.`strDescription` AS `strDescription`,`schshared`.`tblchargedepartment`.`strUuid` AS `strUuid` from `schshared`.`tblchargedepartment` where (`schshared`.`tblchargedepartment`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblcounter`
--

/*!50001 DROP VIEW IF EXISTS `tblcounter`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblcounter` AS select `schshared`.`tblcounter`.`id` AS `id`,`schshared`.`tblcounter`.`intTenantID` AS `intTenantID`,`schshared`.`tblcounter`.`intNextValue` AS `intNextValue`,`schshared`.`tblcounter`.`strTableName` AS `strTableName` from `schshared`.`tblcounter` where (`schshared`.`tblcounter`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblcountry`
--

/*!50001 DROP VIEW IF EXISTS `tblcountry`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblcountry` AS select `schshared`.`tblcountry`.`id` AS `id`,`schshared`.`tblcountry`.`bolIsBlocked` AS `bolIsBlocked`,`schshared`.`tblcountry`.`strMid` AS `strMid`,`schshared`.`tblcountry`.`strName` AS `strName`,`schshared`.`tblcountry`.`strNotes` AS `strNotes`,`schshared`.`tblcountry`.`strShort` AS `strShort`,`schshared`.`tblcountry`.`strShort2` AS `strShort2` from `schshared`.`tblcountry` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblcreditcard`
--

/*!50001 DROP VIEW IF EXISTS `tblcreditcard`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblcreditcard` AS select `schshared`.`tblcreditcard`.`id` AS `id`,`schshared`.`tblcreditcard`.`intTenantID` AS `intTenantID`,`schshared`.`tblcreditcard`.`dtmDateExpirationNoticeSent` AS `dtmDateExpirationNoticeSent`,`schshared`.`tblcreditcard`.`intExpireMonth` AS `intExpireMonth`,`schshared`.`tblcreditcard`.`intExpireYear` AS `intExpireYear`,`schshared`.`tblcreditcard`.`intPaymentProfileID` AS `intPaymentProfileID`,`schshared`.`tblcreditcard`.`strLastFour` AS `strLastFour`,`schshared`.`tblcreditcard`.`strNameOnCard` AS `strNameOnCard`,`schshared`.`tblcreditcard`.`strTokenKey` AS `strTokenKey` from `schshared`.`tblcreditcard` where (`schshared`.`tblcreditcard`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblcrmmetricssettings`
--

/*!50001 DROP VIEW IF EXISTS `tblcrmmetricssettings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblcrmmetricssettings` AS select `schshared`.`tblcrmmetricssettings`.`id` AS `id`,`schshared`.`tblcrmmetricssettings`.`dtmInceptionDate` AS `dtmInceptionDate`,`schshared`.`tblcrmmetricssettings`.`dtmStartFullCalculationDate` AS `dtmStartFullCalculationDate` from `schshared`.`tblcrmmetricssettings` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblcrmmetricstype`
--

/*!50001 DROP VIEW IF EXISTS `tblcrmmetricstype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblcrmmetricstype` AS select `schshared`.`tblcrmmetricstype`.`id` AS `id`,`schshared`.`tblcrmmetricstype`.`bolCalculatedOnly` AS `bolCalculatedOnly`,`schshared`.`tblcrmmetricstype`.`intCrmMetricsTypeFormatID` AS `intCrmMetricsTypeFormatID`,`schshared`.`tblcrmmetricstype`.`strDescription` AS `strDescription`,`schshared`.`tblcrmmetricstype`.`strMetric` AS `strMetric` from `schshared`.`tblcrmmetricstype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblcrmmetricstypeformat`
--

/*!50001 DROP VIEW IF EXISTS `tblcrmmetricstypeformat`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblcrmmetricstypeformat` AS select `schshared`.`tblcrmmetricstypeformat`.`id` AS `id`,`schshared`.`tblcrmmetricstypeformat`.`strFormat` AS `strFormat`,`schshared`.`tblcrmmetricstypeformat`.`strName` AS `strName`,`schshared`.`tblcrmmetricstypeformat`.`strSymbol` AS `strSymbol` from `schshared`.`tblcrmmetricstypeformat` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblcrmmetricsuser`
--

/*!50001 DROP VIEW IF EXISTS `tblcrmmetricsuser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblcrmmetricsuser` AS select `schshared`.`tblcrmmetricsuser`.`id` AS `id`,`schshared`.`tblcrmmetricsuser`.`bolMetricsHaveSameUnit` AS `bolMetricsHaveSameUnit`,`schshared`.`tblcrmmetricsuser`.`intCrmMetric1ID` AS `intCrmMetric1ID`,`schshared`.`tblcrmmetricsuser`.`intCrmMetric2ID` AS `intCrmMetric2ID`,`schshared`.`tblcrmmetricsuser`.`intUserID` AS `intUserID`,`schshared`.`tblcrmmetricsuser`.`strPeriodType` AS `strPeriodType` from `schshared`.`tblcrmmetricsuser` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblcurrency`
--

/*!50001 DROP VIEW IF EXISTS `tblcurrency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblcurrency` AS select `schshared`.`tblcurrency`.`id` AS `id`,`schshared`.`tblcurrency`.`strDescription` AS `strDescription`,`schshared`.`tblcurrency`.`strISOCode` AS `strISOCode`,`schshared`.`tblcurrency`.`strName` AS `strName`,`schshared`.`tblcurrency`.`strSymbol` AS `strSymbol` from `schshared`.`tblcurrency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblcustomfield`
--

/*!50001 DROP VIEW IF EXISTS `tblcustomfield`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblcustomfield` AS select `schshared`.`tblcustomfield`.`id` AS `id`,`schshared`.`tblcustomfield`.`intTenantID` AS `intTenantID`,`schshared`.`tblcustomfield`.`bolApplyToChildren` AS `bolApplyToChildren`,`schshared`.`tblcustomfield`.`intAssetCategoryID` AS `intAssetCategoryID`,`schshared`.`tblcustomfield`.`strBaseTable` AS `strBaseTable`,`schshared`.`tblcustomfield`.`strName` AS `strName`,`schshared`.`tblcustomfield`.`strType` AS `strType` from `schshared`.`tblcustomfield` where (`schshared`.`tblcustomfield`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblcustomfieldvalue`
--

/*!50001 DROP VIEW IF EXISTS `tblcustomfieldvalue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblcustomfieldvalue` AS select `schshared`.`tblcustomfieldvalue`.`id` AS `id`,`schshared`.`tblcustomfieldvalue`.`intTenantID` AS `intTenantID`,`schshared`.`tblcustomfieldvalue`.`datDateValue` AS `datDateValue`,`schshared`.`tblcustomfieldvalue`.`dblDoubleValue` AS `dblDoubleValue`,`schshared`.`tblcustomfieldvalue`.`dtmDateTimeValue` AS `dtmDateTimeValue`,`schshared`.`tblcustomfieldvalue`.`intBaseTableID` AS `intBaseTableID`,`schshared`.`tblcustomfieldvalue`.`intCustomFieldID` AS `intCustomFieldID`,`schshared`.`tblcustomfieldvalue`.`intIntValue` AS `intIntValue`,`schshared`.`tblcustomfieldvalue`.`qtyQuantityValue` AS `qtyQuantityValue`,`schshared`.`tblcustomfieldvalue`.`strBaseTable` AS `strBaseTable`,`schshared`.`tblcustomfieldvalue`.`strClobValue` AS `strClobValue`,`schshared`.`tblcustomfieldvalue`.`strStringValue` AS `strStringValue` from `schshared`.`tblcustomfieldvalue` where (`schshared`.`tblcustomfieldvalue`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblcustomquery`
--

/*!50001 DROP VIEW IF EXISTS `tblcustomquery`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblcustomquery` AS select `schshared`.`tblcustomquery`.`id` AS `id`,`schshared`.`tblcustomquery`.`intTenantID` AS `intTenantID`,`schshared`.`tblcustomquery`.`bolShared` AS `bolShared`,`schshared`.`tblcustomquery`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblcustomquery`.`intCreatedByUserID` AS `intCreatedByUserID`,`schshared`.`tblcustomquery`.`strDescription` AS `strDescription`,`schshared`.`tblcustomquery`.`strSerializedform` AS `strSerializedform`,`schshared`.`tblcustomquery`.`strTableName` AS `strTableName` from `schshared`.`tblcustomquery` where (`schshared`.`tblcustomquery`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblcyclecount`
--

/*!50001 DROP VIEW IF EXISTS `tblcyclecount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblcyclecount` AS select `schshared`.`tblcyclecount`.`id` AS `id`,`schshared`.`tblcyclecount`.`intTenantID` AS `intTenantID`,`schshared`.`tblcyclecount`.`bolComplete` AS `bolComplete`,`schshared`.`tblcyclecount`.`bolIncludeClassA` AS `bolIncludeClassA`,`schshared`.`tblcyclecount`.`bolIncludeClassB` AS `bolIncludeClassB`,`schshared`.`tblcyclecount`.`bolIncludeClassC` AS `bolIncludeClassC`,`schshared`.`tblcyclecount`.`bolIncludeNotClassified` AS `bolIncludeNotClassified`,`schshared`.`tblcyclecount`.`dblGrossVariance` AS `dblGrossVariance`,`schshared`.`tblcyclecount`.`dblNetVariance` AS `dblNetVariance`,`schshared`.`tblcyclecount`.`dblTotalValueCounted` AS `dblTotalValueCounted`,`schshared`.`tblcyclecount`.`dblTotalValueExpected` AS `dblTotalValueExpected`,`schshared`.`tblcyclecount`.`dtmCompleted` AS `dtmCompleted`,`schshared`.`tblcyclecount`.`dtmCreated` AS `dtmCreated`,`schshared`.`tblcyclecount`.`intCompletedBy` AS `intCompletedBy`,`schshared`.`tblcyclecount`.`intCreatedBy` AS `intCreatedBy`,`schshared`.`tblcyclecount`.`intFacilityID` AS `intFacilityID`,`schshared`.`tblcyclecount`.`intSiteID` AS `intSiteID`,`schshared`.`tblcyclecount`.`intUpdated` AS `intUpdated`,`schshared`.`tblcyclecount`.`strAisle` AS `strAisle`,`schshared`.`tblcyclecount`.`strBin` AS `strBin`,`schshared`.`tblcyclecount`.`strRow` AS `strRow`,`schshared`.`tblcyclecount`.`strUuid` AS `strUuid` from `schshared`.`tblcyclecount` where (`schshared`.`tblcyclecount`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbldashboard`
--

/*!50001 DROP VIEW IF EXISTS `tbldashboard`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbldashboard` AS select `schshared`.`tbldashboard`.`id` AS `id`,`schshared`.`tbldashboard`.`intSysCode` AS `intSysCode`,`schshared`.`tbldashboard`.`bolAvailable` AS `bolAvailable`,`schshared`.`tbldashboard`.`bolSharedDashboardTemplate` AS `bolSharedDashboardTemplate`,`schshared`.`tbldashboard`.`intDashboardType` AS `intDashboardType`,`schshared`.`tbldashboard`.`intOwnerTenantID` AS `intOwnerTenantID`,`schshared`.`tbldashboard`.`intSharedDashboardTemplateID` AS `intSharedDashboardTemplateID`,`schshared`.`tbldashboard`.`intUserID` AS `intUserID`,`schshared`.`tbldashboard`.`strDescription` AS `strDescription`,`schshared`.`tbldashboard`.`strSelectedSites` AS `strSelectedSites`,`schshared`.`tbldashboard`.`strTitle` AS `strTitle` from `schshared`.`tbldashboard` where ((`schshared`.`tbldashboard`.`intOwnerTenantID` is null) or (`schshared`.`tbldashboard`.`intOwnerTenantID` = `ma_get_current_tenant`())) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbldashboarddashboardpersona`
--

/*!50001 DROP VIEW IF EXISTS `tbldashboarddashboardpersona`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbldashboarddashboardpersona` AS select `schshared`.`tbldashboarddashboardpersona`.`id` AS `id`,`schshared`.`tbldashboarddashboardpersona`.`intDashboardID` AS `intDashboardID`,`schshared`.`tbldashboarddashboardpersona`.`intDashboardPersonaID` AS `intDashboardPersonaID`,`schshared`.`tbldashboarddashboardpersona`.`intOwnerTenantID` AS `intOwnerTenantID` from `schshared`.`tbldashboarddashboardpersona` where ((`schshared`.`tbldashboarddashboardpersona`.`intOwnerTenantID` is null) or (`schshared`.`tbldashboarddashboardpersona`.`intOwnerTenantID` = `ma_get_current_tenant`())) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbldashboardfeaturenotice`
--

/*!50001 DROP VIEW IF EXISTS `tbldashboardfeaturenotice`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbldashboardfeaturenotice` AS select `schshared`.`tbldashboardfeaturenotice`.`id` AS `id`,`schshared`.`tbldashboardfeaturenotice`.`bolActive` AS `bolActive`,`schshared`.`tbldashboardfeaturenotice`.`bolDisplayOnTop` AS `bolDisplayOnTop`,`schshared`.`tbldashboardfeaturenotice`.`intOwnerTenantID` AS `intOwnerTenantID`,`schshared`.`tbldashboardfeaturenotice`.`intProductTierID` AS `intProductTierID`,`schshared`.`tbldashboardfeaturenotice`.`strDescription` AS `strDescription`,`schshared`.`tbldashboardfeaturenotice`.`strName` AS `strName`,`schshared`.`tbldashboardfeaturenotice`.`strStyle` AS `strStyle`,`schshared`.`tbldashboardfeaturenotice`.`strUrlOverride` AS `strUrlOverride` from `schshared`.`tbldashboardfeaturenotice` where ((`schshared`.`tbldashboardfeaturenotice`.`intOwnerTenantID` is null) or (`schshared`.`tbldashboardfeaturenotice`.`intOwnerTenantID` = `ma_get_current_tenant`())) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbldashboardpersona`
--

/*!50001 DROP VIEW IF EXISTS `tbldashboardpersona`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbldashboardpersona` AS select `schshared`.`tbldashboardpersona`.`id` AS `id`,`schshared`.`tbldashboardpersona`.`intTenantID` AS `intTenantID`,`schshared`.`tbldashboardpersona`.`intSharedDashboardID` AS `intSharedDashboardID`,`schshared`.`tbldashboardpersona`.`strName` AS `strName` from `schshared`.`tbldashboardpersona` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbldashboardwidget`
--

/*!50001 DROP VIEW IF EXISTS `tbldashboardwidget`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbldashboardwidget` AS select `schshared`.`tbldashboardwidget`.`id` AS `id`,`schshared`.`tbldashboardwidget`.`intSysCode` AS `intSysCode`,`schshared`.`tbldashboardwidget`.`bolAvailable` AS `bolAvailable`,`schshared`.`tbldashboardwidget`.`bolAvailableRestricted` AS `bolAvailableRestricted`,`schshared`.`tbldashboardwidget`.`bolDisplayAsPercentage` AS `bolDisplayAsPercentage`,`schshared`.`tbldashboardwidget`.`bolRestricted` AS `bolRestricted`,`schshared`.`tbldashboardwidget`.`intOwnerTenantID` AS `intOwnerTenantID`,`schshared`.`tbldashboardwidget`.`intQueryTypeID` AS `intQueryTypeID`,`schshared`.`tbldashboardwidget`.`intResultPrecision` AS `intResultPrecision`,`schshared`.`tbldashboardwidget`.`intUnitType` AS `intUnitType`,`schshared`.`tbldashboardwidget`.`intWidgetCategoryID` AS `intWidgetCategoryID`,`schshared`.`tbldashboardwidget`.`strChartType` AS `strChartType`,`schshared`.`tbldashboardwidget`.`strColorScheme` AS `strColorScheme`,`schshared`.`tbldashboardwidget`.`strDescription` AS `strDescription`,`schshared`.`tbldashboardwidget`.`strFullName` AS `strFullName`,`schshared`.`tbldashboardwidget`.`strName` AS `strName`,`schshared`.`tbldashboardwidget`.`strUnit` AS `strUnit` from `schshared`.`tbldashboardwidget` where ((`schshared`.`tbldashboardwidget`.`intOwnerTenantID` is null) or (`schshared`.`tbldashboardwidget`.`intOwnerTenantID` = `ma_get_current_tenant`())) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbldashboardwidgetcategory`
--

/*!50001 DROP VIEW IF EXISTS `tbldashboardwidgetcategory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbldashboardwidgetcategory` AS select `schshared`.`tbldashboardwidgetcategory`.`id` AS `id`,`schshared`.`tbldashboardwidgetcategory`.`strName` AS `strName` from `schshared`.`tbldashboardwidgetcategory` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbldashboardwidgetdashboardpersona`
--

/*!50001 DROP VIEW IF EXISTS `tbldashboardwidgetdashboardpersona`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbldashboardwidgetdashboardpersona` AS select `schshared`.`tbldashboardwidgetdashboardpersona`.`id` AS `id`,`schshared`.`tbldashboardwidgetdashboardpersona`.`intDashboardPersonaID` AS `intDashboardPersonaID`,`schshared`.`tbldashboardwidgetdashboardpersona`.`intOwnerTenantID` AS `intOwnerTenantID`,`schshared`.`tbldashboardwidgetdashboardpersona`.`intWidgetID` AS `intWidgetID` from `schshared`.`tbldashboardwidgetdashboardpersona` where ((`schshared`.`tbldashboardwidgetdashboardpersona`.`intOwnerTenantID` is null) or (`schshared`.`tbldashboardwidgetdashboardpersona`.`intOwnerTenantID` = `ma_get_current_tenant`())) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbldashboardwidgetparameter`
--

/*!50001 DROP VIEW IF EXISTS `tbldashboardwidgetparameter`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbldashboardwidgetparameter` AS select `schshared`.`tbldashboardwidgetparameter`.`id` AS `id`,`schshared`.`tbldashboardwidgetparameter`.`bolAllowMultipleValues` AS `bolAllowMultipleValues`,`schshared`.`tbldashboardwidgetparameter`.`intDashboardWidgetQueryID` AS `intDashboardWidgetQueryID`,`schshared`.`tbldashboardwidgetparameter`.`intOwnerTenantID` AS `intOwnerTenantID`,`schshared`.`tbldashboardwidgetparameter`.`intParamValueType` AS `intParamValueType`,`schshared`.`tbldashboardwidgetparameter`.`strDefaultValueQuery` AS `strDefaultValueQuery`,`schshared`.`tbldashboardwidgetparameter`.`strFullName` AS `strFullName`,`schshared`.`tbldashboardwidgetparameter`.`strParamEntityQuery` AS `strParamEntityQuery`,`schshared`.`tbldashboardwidgetparameter`.`strParamEntityType` AS `strParamEntityType`,`schshared`.`tbldashboardwidgetparameter`.`strParamLabel` AS `strParamLabel`,`schshared`.`tbldashboardwidgetparameter`.`strParamName` AS `strParamName` from `schshared`.`tbldashboardwidgetparameter` where ((`schshared`.`tbldashboardwidgetparameter`.`intOwnerTenantID` is null) or (`schshared`.`tbldashboardwidgetparameter`.`intOwnerTenantID` = `ma_get_current_tenant`())) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbldashboardwidgetposition`
--

/*!50001 DROP VIEW IF EXISTS `tbldashboardwidgetposition`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbldashboardwidgetposition` AS select `schshared`.`tbldashboardwidgetposition`.`id` AS `id`,`schshared`.`tbldashboardwidgetposition`.`intTenantID` AS `intTenantID`,`schshared`.`tbldashboardwidgetposition`.`bolLockAspectRatio` AS `bolLockAspectRatio`,`schshared`.`tbldashboardwidgetposition`.`intDashboardID` AS `intDashboardID`,`schshared`.`tbldashboardwidgetposition`.`intHeight` AS `intHeight`,`schshared`.`tbldashboardwidgetposition`.`intMinHeight` AS `intMinHeight`,`schshared`.`tbldashboardwidgetposition`.`intMinWidth` AS `intMinWidth`,`schshared`.`tbldashboardwidgetposition`.`intWidgetID` AS `intWidgetID`,`schshared`.`tbldashboardwidgetposition`.`intWidth` AS `intWidth`,`schshared`.`tbldashboardwidgetposition`.`intXPosition` AS `intXPosition`,`schshared`.`tbldashboardwidgetposition`.`intYPosition` AS `intYPosition`,`schshared`.`tbldashboardwidgetposition`.`strTitleOverride` AS `strTitleOverride` from `schshared`.`tbldashboardwidgetposition` where (`schshared`.`tbldashboardwidgetposition`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbldashboardwidgetpositionfilter`
--

/*!50001 DROP VIEW IF EXISTS `tbldashboardwidgetpositionfilter`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbldashboardwidgetpositionfilter` AS select `schshared`.`tbldashboardwidgetpositionfilter`.`id` AS `id`,`schshared`.`tbldashboardwidgetpositionfilter`.`intTenantID` AS `intTenantID`,`schshared`.`tbldashboardwidgetpositionfilter`.`bolActive` AS `bolActive`,`schshared`.`tbldashboardwidgetpositionfilter`.`intSubQueryID` AS `intSubQueryID`,`schshared`.`tbldashboardwidgetpositionfilter`.`intWidgetPositionID` AS `intWidgetPositionID` from `schshared`.`tbldashboardwidgetpositionfilter` where (`schshared`.`tbldashboardwidgetpositionfilter`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbldashboardwidgetpositionparameter`
--

/*!50001 DROP VIEW IF EXISTS `tbldashboardwidgetpositionparameter`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbldashboardwidgetpositionparameter` AS select `schshared`.`tbldashboardwidgetpositionparameter`.`id` AS `id`,`schshared`.`tbldashboardwidgetpositionparameter`.`intTenantID` AS `intTenantID`,`schshared`.`tbldashboardwidgetpositionparameter`.`intDashboardWidgetParameterID` AS `intDashboardWidgetParameterID`,`schshared`.`tbldashboardwidgetpositionparameter`.`intWidgetPositionID` AS `intWidgetPositionID`,`schshared`.`tbldashboardwidgetpositionparameter`.`strParamValue` AS `strParamValue` from `schshared`.`tbldashboardwidgetpositionparameter` where (`schshared`.`tbldashboardwidgetpositionparameter`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbldashboardwidgetquery`
--

/*!50001 DROP VIEW IF EXISTS `tbldashboardwidgetquery`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbldashboardwidgetquery` AS select `schshared`.`tbldashboardwidgetquery`.`id` AS `id`,`schshared`.`tbldashboardwidgetquery`.`intDashboardWidgetID` AS `intDashboardWidgetID`,`schshared`.`tbldashboardwidgetquery`.`intOrder` AS `intOrder`,`schshared`.`tbldashboardwidgetquery`.`intOwnerTenantID` AS `intOwnerTenantID`,`schshared`.`tbldashboardwidgetquery`.`intSubQueryTypeID` AS `intSubQueryTypeID`,`schshared`.`tbldashboardwidgetquery`.`strFullName` AS `strFullName`,`schshared`.`tbldashboardwidgetquery`.`strLabel` AS `strLabel`,`schshared`.`tbldashboardwidgetquery`.`strQuery` AS `strQuery` from `schshared`.`tbldashboardwidgetquery` where ((`schshared`.`tbldashboardwidgetquery`.`intOwnerTenantID` is null) or (`schshared`.`tbldashboardwidgetquery`.`intOwnerTenantID` = `ma_get_current_tenant`())) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbldatabaseexport`
--

/*!50001 DROP VIEW IF EXISTS `tbldatabaseexport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbldatabaseexport` AS select `schshared`.`tbldatabaseexport`.`id` AS `id`,`schshared`.`tbldatabaseexport`.`intTenantID` AS `intTenantID`,`schshared`.`tbldatabaseexport`.`bolExcludeFromLimitChecking` AS `bolExcludeFromLimitChecking`,`schshared`.`tbldatabaseexport`.`bolIncludeFiles` AS `bolIncludeFiles`,`schshared`.`tbldatabaseexport`.`bolPasswordProtected` AS `bolPasswordProtected`,`schshared`.`tbldatabaseexport`.`dtmGenerationFinished` AS `dtmGenerationFinished`,`schshared`.`tbldatabaseexport`.`dtmGenerationStarted` AS `dtmGenerationStarted`,`schshared`.`tbldatabaseexport`.`intApplicationID` AS `intApplicationID`,`schshared`.`tbldatabaseexport`.`intErrorCode` AS `intErrorCode`,`schshared`.`tbldatabaseexport`.`intFileContentsID` AS `intFileContentsID`,`schshared`.`tbldatabaseexport`.`intGeneratedByUserID` AS `intGeneratedByUserID`,`schshared`.`tbldatabaseexport`.`intWorkerID` AS `intWorkerID`,`schshared`.`tbldatabaseexport`.`strIncludedTenants` AS `strIncludedTenants`,`schshared`.`tbldatabaseexport`.`strName` AS `strName` from `schshared`.`tbldatabaseexport` where (`schshared`.`tbldatabaseexport`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblddcolumn`
--

/*!50001 DROP VIEW IF EXISTS `tblddcolumn`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblddcolumn` AS select `schshared`.`tblddcolumn`.`id` AS `id`,`schshared`.`tblddcolumn`.`intTenantID` AS `intTenantID`,`schshared`.`tblddcolumn`.`bolCustom` AS `bolCustom`,`schshared`.`tblddcolumn`.`bolLegacyApplyToChildren` AS `bolLegacyApplyToChildren`,`schshared`.`tblddcolumn`.`intDdColumnTypeID` AS `intDdColumnTypeID`,`schshared`.`tblddcolumn`.`intDdTableID` AS `intDdTableID`,`schshared`.`tblddcolumn`.`intImportedFromCustomFieldID` AS `intImportedFromCustomFieldID`,`schshared`.`tblddcolumn`.`intLegacyAssetCategoryID` AS `intLegacyAssetCategoryID`,`schshared`.`tblddcolumn`.`intPkDdTableID` AS `intPkDdTableID`,`schshared`.`tblddcolumn`.`strLabel` AS `strLabel`,`schshared`.`tblddcolumn`.`strName` AS `strName` from `schshared`.`tblddcolumn` where ((`schshared`.`tblddcolumn`.`intTenantID` is null) or (`schshared`.`tblddcolumn`.`intTenantID` = `ma_get_current_tenant`())) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblddcolumntype`
--

/*!50001 DROP VIEW IF EXISTS `tblddcolumntype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblddcolumntype` AS select `schshared`.`tblddcolumntype`.`id` AS `id`,`schshared`.`tblddcolumntype`.`strLabel` AS `strLabel` from `schshared`.`tblddcolumntype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblddcustomtablerow`
--

/*!50001 DROP VIEW IF EXISTS `tblddcustomtablerow`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblddcustomtablerow` AS select `schshared`.`tblddcustomtablerow`.`id` AS `id`,`schshared`.`tblddcustomtablerow`.`intTenantID` AS `intTenantID`,`schshared`.`tblddcustomtablerow`.`intDdTableID` AS `intDdTableID`,`schshared`.`tblddcustomtablerow`.`strSysCustomColumnValues` AS `strSysCustomColumnValues` from `schshared`.`tblddcustomtablerow` where (`schshared`.`tblddcustomtablerow`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblddtable`
--

/*!50001 DROP VIEW IF EXISTS `tblddtable`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblddtable` AS select `schshared`.`tblddtable`.`id` AS `id`,`schshared`.`tblddtable`.`intTenantID` AS `intTenantID`,`schshared`.`tblddtable`.`bolCustom` AS `bolCustom`,`schshared`.`tblddtable`.`intDdTableTypeID` AS `intDdTableTypeID`,`schshared`.`tblddtable`.`intLabelDdColumnID` AS `intLabelDdColumnID`,`schshared`.`tblddtable`.`strLabel` AS `strLabel`,`schshared`.`tblddtable`.`strName` AS `strName` from `schshared`.`tblddtable` where ((`schshared`.`tblddtable`.`intTenantID` is null) or (`schshared`.`tblddtable`.`intTenantID` = `ma_get_current_tenant`())) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblddtabletype`
--

/*!50001 DROP VIEW IF EXISTS `tblddtabletype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblddtabletype` AS select `schshared`.`tblddtabletype`.`id` AS `id`,`schshared`.`tblddtabletype`.`strLabel` AS `strLabel` from `schshared`.`tblddtabletype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbldistribution`
--

/*!50001 DROP VIEW IF EXISTS `tbldistribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbldistribution` AS select `schshared`.`tbldistribution`.`id` AS `id`,`schshared`.`tbldistribution`.`intTenantID` AS `intTenantID`,`schshared`.`tbldistribution`.`bolActive` AS `bolActive`,`schshared`.`tbldistribution`.`intDistributionBillingPlanID` AS `intDistributionBillingPlanID`,`schshared`.`tbldistribution`.`strNotes` AS `strNotes` from `schshared`.`tbldistribution` where (`schshared`.`tbldistribution`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbldistributionbillingplan`
--

/*!50001 DROP VIEW IF EXISTS `tbldistributionbillingplan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbldistributionbillingplan` AS select `schshared`.`tbldistributionbillingplan`.`id` AS `id`,`schshared`.`tbldistributionbillingplan`.`strDescription` AS `strDescription`,`schshared`.`tbldistributionbillingplan`.`strName` AS `strName` from `schshared`.`tbldistributionbillingplan` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbldistributionpaymentmethod`
--

/*!50001 DROP VIEW IF EXISTS `tbldistributionpaymentmethod`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbldistributionpaymentmethod` AS select `schshared`.`tbldistributionpaymentmethod`.`id` AS `id`,`schshared`.`tbldistributionpaymentmethod`.`intTenantID` AS `intTenantID`,`schshared`.`tbldistributionpaymentmethod`.`intDistributionID` AS `intDistributionID`,`schshared`.`tbldistributionpaymentmethod`.`intPaymentMethodID` AS `intPaymentMethodID` from `schshared`.`tbldistributionpaymentmethod` where (`schshared`.`tbldistributionpaymentmethod`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbldistributionpricingtier`
--

/*!50001 DROP VIEW IF EXISTS `tbldistributionpricingtier`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbldistributionpricingtier` AS select `schshared`.`tbldistributionpricingtier`.`id` AS `id`,`schshared`.`tbldistributionpricingtier`.`intTenantID` AS `intTenantID`,`schshared`.`tbldistributionpricingtier`.`bolActive` AS `bolActive`,`schshared`.`tbldistributionpricingtier`.`bolApplyAutoDiscounts` AS `bolApplyAutoDiscounts`,`schshared`.`tbldistributionpricingtier`.`dblDefaultPrice` AS `dblDefaultPrice`,`schshared`.`tbldistributionpricingtier`.`intDistributionID` AS `intDistributionID`,`schshared`.`tbldistributionpricingtier`.`intPricingTierID` AS `intPricingTierID`,`schshared`.`tbldistributionpricingtier`.`intQuantity` AS `intQuantity` from `schshared`.`tbldistributionpricingtier` where (`schshared`.`tbldistributionpricingtier`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbldistributionrecurringtype`
--

/*!50001 DROP VIEW IF EXISTS `tbldistributionrecurringtype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbldistributionrecurringtype` AS select `schshared`.`tbldistributionrecurringtype`.`id` AS `id`,`schshared`.`tbldistributionrecurringtype`.`intTenantID` AS `intTenantID`,`schshared`.`tbldistributionrecurringtype`.`intDistributionID` AS `intDistributionID`,`schshared`.`tbldistributionrecurringtype`.`intRecurringTypeID` AS `intRecurringTypeID` from `schshared`.`tbldistributionrecurringtype` where (`schshared`.`tbldistributionrecurringtype`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbldistributionunitpricingrule`
--

/*!50001 DROP VIEW IF EXISTS `tbldistributionunitpricingrule`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbldistributionunitpricingrule` AS select `schshared`.`tbldistributionunitpricingrule`.`id` AS `id`,`schshared`.`tbldistributionunitpricingrule`.`intTenantID` AS `intTenantID`,`schshared`.`tbldistributionunitpricingrule`.`dblPrice` AS `dblPrice`,`schshared`.`tbldistributionunitpricingrule`.`intCeilingQuantity` AS `intCeilingQuantity`,`schshared`.`tbldistributionunitpricingrule`.`intDistributionPricingTierID` AS `intDistributionPricingTierID`,`schshared`.`tbldistributionunitpricingrule`.`intFloorQuantity` AS `intFloorQuantity` from `schshared`.`tbldistributionunitpricingrule` where (`schshared`.`tbldistributionunitpricingrule`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblemailattachment`
--

/*!50001 DROP VIEW IF EXISTS `tblemailattachment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblemailattachment` AS select `schshared`.`tblemailattachment`.`id` AS `id`,`schshared`.`tblemailattachment`.`intTenantID` AS `intTenantID`,`schshared`.`tblemailattachment`.`intEmailMessageID` AS `intEmailMessageID`,`schshared`.`tblemailattachment`.`intSize` AS `intSize`,`schshared`.`tblemailattachment`.`strMimeType` AS `strMimeType`,`schshared`.`tblemailattachment`.`strName` AS `strName` from `schshared`.`tblemailattachment` where (`schshared`.`tblemailattachment`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblemailmessage`
--

/*!50001 DROP VIEW IF EXISTS `tblemailmessage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblemailmessage` AS select `schshared`.`tblemailmessage`.`id` AS `id`,`schshared`.`tblemailmessage`.`intTenantID` AS `intTenantID`,`schshared`.`tblemailmessage`.`bolIsReady` AS `bolIsReady`,`schshared`.`tblemailmessage`.`dtmDateAccepted` AS `dtmDateAccepted`,`schshared`.`tblemailmessage`.`dtmLastSentAttempt` AS `dtmLastSentAttempt`,`schshared`.`tblemailmessage`.`intSenderBusinessID` AS `intSenderBusinessID`,`schshared`.`tblemailmessage`.`strContents` AS `strContents`,`schshared`.`tblemailmessage`.`strContents2` AS `strContents2`,`schshared`.`tblemailmessage`.`strFrom` AS `strFrom`,`schshared`.`tblemailmessage`.`strRecipients` AS `strRecipients`,`schshared`.`tblemailmessage`.`strSubject` AS `strSubject` from `schshared`.`tblemailmessage` where (`schshared`.`tblemailmessage`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblepicfeaturenotice`
--

/*!50001 DROP VIEW IF EXISTS `tblepicfeaturenotice`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblepicfeaturenotice` AS select `schshared`.`tblepicfeaturenotice`.`id` AS `id`,`schshared`.`tblepicfeaturenotice`.`bolActive` AS `bolActive`,`schshared`.`tblepicfeaturenotice`.`intOwnerTenantID` AS `intOwnerTenantID`,`schshared`.`tblepicfeaturenotice`.`strDescription` AS `strDescription`,`schshared`.`tblepicfeaturenotice`.`strName` AS `strName`,`schshared`.`tblepicfeaturenotice`.`strUrlOverride` AS `strUrlOverride` from `schshared`.`tblepicfeaturenotice` where ((`schshared`.`tblepicfeaturenotice`.`intOwnerTenantID` is null) or (`schshared`.`tblepicfeaturenotice`.`intOwnerTenantID` = `ma_get_current_tenant`())) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblepicfeaturenoticepricingtier`
--

/*!50001 DROP VIEW IF EXISTS `tblepicfeaturenoticepricingtier`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblepicfeaturenoticepricingtier` AS select `schshared`.`tblepicfeaturenoticepricingtier`.`id` AS `id`,`schshared`.`tblepicfeaturenoticepricingtier`.`intEpicFeatureNoticeID` AS `intEpicFeatureNoticeID`,`schshared`.`tblepicfeaturenoticepricingtier`.`intPricingTierID` AS `intPricingTierID` from `schshared`.`tblepicfeaturenoticepricingtier` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblevent`
--

/*!50001 DROP VIEW IF EXISTS `tblevent`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblevent` AS select `schshared`.`tblevent`.`id` AS `id`,`schshared`.`tblevent`.`intTenantID` AS `intTenantID`,`schshared`.`tblevent`.`dtmEventDate` AS `dtmEventDate`,`schshared`.`tblevent`.`intDtoPkId` AS `intDtoPkId`,`schshared`.`tblevent`.`intHandlerVersion` AS `intHandlerVersion`,`schshared`.`tblevent`.`intLifecycleLogId` AS `intLifecycleLogId`,`schshared`.`tblevent`.`intSiteID` AS `intSiteID`,`schshared`.`tblevent`.`intUserID` AS `intUserID`,`schshared`.`tblevent`.`strContext` AS `strContext`,`schshared`.`tblevent`.`strDescOrContent` AS `strDescOrContent`,`schshared`.`tblevent`.`strDtoClass` AS `strDtoClass`,`schshared`.`tblevent`.`strEventType` AS `strEventType`,`schshared`.`tblevent`.`strLifecycleLogClass` AS `strLifecycleLogClass` from `schshared`.`tblevent` where (`schshared`.`tblevent`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblfeature`
--

/*!50001 DROP VIEW IF EXISTS `tblfeature`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblfeature` AS select `schshared`.`tblfeature`.`id` AS `id`,`schshared`.`tblfeature`.`intFeatureCategoryID` AS `intFeatureCategoryID`,`schshared`.`tblfeature`.`intFeatureValueTypeID` AS `intFeatureValueTypeID`,`schshared`.`tblfeature`.`intOrder` AS `intOrder`,`schshared`.`tblfeature`.`intProductID` AS `intProductID`,`schshared`.`tblfeature`.`strDescription` AS `strDescription`,`schshared`.`tblfeature`.`strName` AS `strName`,`schshared`.`tblfeature`.`strUuid` AS `strUuid` from `schshared`.`tblfeature` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblfeaturecategory`
--

/*!50001 DROP VIEW IF EXISTS `tblfeaturecategory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblfeaturecategory` AS select `schshared`.`tblfeaturecategory`.`id` AS `id`,`schshared`.`tblfeaturecategory`.`strDescription` AS `strDescription`,`schshared`.`tblfeaturecategory`.`strName` AS `strName` from `schshared`.`tblfeaturecategory` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblfeaturenoticefilter`
--

/*!50001 DROP VIEW IF EXISTS `tblfeaturenoticefilter`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblfeaturenoticefilter` AS select `schshared`.`tblfeaturenoticefilter`.`id` AS `id`,`schshared`.`tblfeaturenoticefilter`.`bolDoNotShowForTenantsWithSuppressMarketing` AS `bolDoNotShowForTenantsWithSuppressMarketing`,`schshared`.`tblfeaturenoticefilter`.`bolTenantIDEven` AS `bolTenantIDEven`,`schshared`.`tblfeaturenoticefilter`.`bolTenantIDOdd` AS `bolTenantIDOdd`,`schshared`.`tblfeaturenoticefilter`.`intBusinessClassificationID` AS `intBusinessClassificationID`,`schshared`.`tblfeaturenoticefilter`.`intCountryID` AS `intCountryID`,`schshared`.`tblfeaturenoticefilter`.`intDashboardFeatureNoticeID` AS `intDashboardFeatureNoticeID`,`schshared`.`tblfeaturenoticefilter`.`intEpicFeatureNoticeID` AS `intEpicFeatureNoticeID`,`schshared`.`tblfeaturenoticefilter`.`intNumDaysFromSignup` AS `intNumDaysFromSignup`,`schshared`.`tblfeaturenoticefilter`.`intNumDaysInactive` AS `intNumDaysInactive`,`schshared`.`tblfeaturenoticefilter`.`intNumberSeatsMax` AS `intNumberSeatsMax`,`schshared`.`tblfeaturenoticefilter`.`intNumberSeatsMin` AS `intNumberSeatsMin`,`schshared`.`tblfeaturenoticefilter`.`intProductTierID` AS `intProductTierID`,`schshared`.`tblfeaturenoticefilter`.`intRecurringTypeID` AS `intRecurringTypeID`,`schshared`.`tblfeaturenoticefilter`.`intTenantAutomationID` AS `intTenantAutomationID`,`schshared`.`tblfeaturenoticefilter`.`intTenantFilterID` AS `intTenantFilterID`,`schshared`.`tblfeaturenoticefilter`.`intTenantIdModuloDivisor` AS `intTenantIdModuloDivisor`,`schshared`.`tblfeaturenoticefilter`.`intTenantIdModuloRemainder` AS `intTenantIdModuloRemainder`,`schshared`.`tblfeaturenoticefilter`.`intTenantTypeID` AS `intTenantTypeID`,`schshared`.`tblfeaturenoticefilter`.`intUserGroupID` AS `intUserGroupID` from `schshared`.`tblfeaturenoticefilter` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblfeatureproperty`
--

/*!50001 DROP VIEW IF EXISTS `tblfeatureproperty`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblfeatureproperty` AS select `schshared`.`tblfeatureproperty`.`id` AS `id`,`schshared`.`tblfeatureproperty`.`bolBooleanValue` AS `bolBooleanValue`,`schshared`.`tblfeatureproperty`.`bolSeatMultiplier` AS `bolSeatMultiplier`,`schshared`.`tblfeatureproperty`.`datDateValue` AS `datDateValue`,`schshared`.`tblfeatureproperty`.`dblDoubleValue` AS `dblDoubleValue`,`schshared`.`tblfeatureproperty`.`dtmDateTimeValue` AS `dtmDateTimeValue`,`schshared`.`tblfeatureproperty`.`dtmDateUpdated` AS `dtmDateUpdated`,`schshared`.`tblfeatureproperty`.`intFeatureID` AS `intFeatureID`,`schshared`.`tblfeatureproperty`.`intFeatureValuePeriodTypeID` AS `intFeatureValuePeriodTypeID`,`schshared`.`tblfeatureproperty`.`intFeatureValueTypeID` AS `intFeatureValueTypeID`,`schshared`.`tblfeatureproperty`.`intLongValue` AS `intLongValue`,`schshared`.`tblfeatureproperty`.`intOwnerTenantID` AS `intOwnerTenantID`,`schshared`.`tblfeatureproperty`.`intPricingTierFeatureID` AS `intPricingTierFeatureID`,`schshared`.`tblfeatureproperty`.`intTenantFeatureID` AS `intTenantFeatureID`,`schshared`.`tblfeatureproperty`.`intUpdatedByUserID` AS `intUpdatedByUserID`,`schshared`.`tblfeatureproperty`.`qtyQtyValue` AS `qtyQtyValue`,`schshared`.`tblfeatureproperty`.`strDescription` AS `strDescription`,`schshared`.`tblfeatureproperty`.`strKey` AS `strKey`,`schshared`.`tblfeatureproperty`.`strLongStringValue` AS `strLongStringValue`,`schshared`.`tblfeatureproperty`.`strName` AS `strName`,`schshared`.`tblfeatureproperty`.`strStringValue` AS `strStringValue`,`schshared`.`tblfeatureproperty`.`strType` AS `strType`,`schshared`.`tblfeatureproperty`.`strUuid` AS `strUuid` from `schshared`.`tblfeatureproperty` where ((`schshared`.`tblfeatureproperty`.`intOwnerTenantID` is null) or (`schshared`.`tblfeatureproperty`.`intOwnerTenantID` = `ma_get_current_tenant`())) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblfeaturevalueoveragecontroltype`
--

/*!50001 DROP VIEW IF EXISTS `tblfeaturevalueoveragecontroltype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblfeaturevalueoveragecontroltype` AS select `schshared`.`tblfeaturevalueoveragecontroltype`.`id` AS `id`,`schshared`.`tblfeaturevalueoveragecontroltype`.`strName` AS `strName` from `schshared`.`tblfeaturevalueoveragecontroltype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblfeaturevalueperiodtype`
--

/*!50001 DROP VIEW IF EXISTS `tblfeaturevalueperiodtype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblfeaturevalueperiodtype` AS select `schshared`.`tblfeaturevalueperiodtype`.`id` AS `id`,`schshared`.`tblfeaturevalueperiodtype`.`strName` AS `strName` from `schshared`.`tblfeaturevalueperiodtype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblfeaturevaluetype`
--

/*!50001 DROP VIEW IF EXISTS `tblfeaturevaluetype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblfeaturevaluetype` AS select `schshared`.`tblfeaturevaluetype`.`id` AS `id`,`schshared`.`tblfeaturevaluetype`.`strName` AS `strName` from `schshared`.`tblfeaturevaluetype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblfile`
--

/*!50001 DROP VIEW IF EXISTS `tblfile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblfile` AS select `schshared`.`tblfile`.`id` AS `id`,`schshared`.`tblfile`.`intTenantID` AS `intTenantID`,`schshared`.`tblfile`.`intSysCode` AS `intSysCode`,`schshared`.`tblfile`.`bolImage` AS `bolImage`,`schshared`.`tblfile`.`intAssetCategoryID` AS `intAssetCategoryID`,`schshared`.`tblfile`.`intAssetID` AS `intAssetID`,`schshared`.`tblfile`.`intBusinessID` AS `intBusinessID`,`schshared`.`tblfile`.`intFileContentsID` AS `intFileContentsID`,`schshared`.`tblfile`.`intFileTypeID` AS `intFileTypeID`,`schshared`.`tblfile`.`intImageHeight` AS `intImageHeight`,`schshared`.`tblfile`.`intImageWidth` AS `intImageWidth`,`schshared`.`tblfile`.`intMASourceListingID` AS `intMASourceListingID`,`schshared`.`tblfile`.`intProductTimeTrackingID` AS `intProductTimeTrackingID`,`schshared`.`tblfile`.`intProjectID` AS `intProjectID`,`schshared`.`tblfile`.`intPurchaseOrderID` AS `intPurchaseOrderID`,`schshared`.`tblfile`.`intReportTemplateID` AS `intReportTemplateID`,`schshared`.`tblfile`.`intRfqID` AS `intRfqID`,`schshared`.`tblfile`.`intScheduledMaintenanceID` AS `intScheduledMaintenanceID`,`schshared`.`tblfile`.`intSize` AS `intSize`,`schshared`.`tblfile`.`intTaskGroupID` AS `intTaskGroupID`,`schshared`.`tblfile`.`intThumbnailHeight` AS `intThumbnailHeight`,`schshared`.`tblfile`.`intThumbnailID` AS `intThumbnailID`,`schshared`.`tblfile`.`intThumbnailWidth` AS `intThumbnailWidth`,`schshared`.`tblfile`.`intUpdated` AS `intUpdated`,`schshared`.`tblfile`.`intUserID` AS `intUserID`,`schshared`.`tblfile`.`intWorkOrderID` AS `intWorkOrderID`,`schshared`.`tblfile`.`strLink` AS `strLink`,`schshared`.`tblfile`.`strName` AS `strName`,`schshared`.`tblfile`.`strNotes` AS `strNotes`,`schshared`.`tblfile`.`strUuid` AS `strUuid` from `schshared`.`tblfile` where (`schshared`.`tblfile`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblfilecontents`
--

/*!50001 DROP VIEW IF EXISTS `tblfilecontents`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblfilecontents` AS select `schshared`.`tblfilecontents`.`id` AS `id`,`schshared`.`tblfilecontents`.`intTenantID` AS `intTenantID`,`schshared`.`tblfilecontents`.`intSysCode` AS `intSysCode`,`schshared`.`tblfilecontents`.`intIsShared` AS `intIsShared`,`schshared`.`tblfilecontents`.`intSize` AS `intSize`,`schshared`.`tblfilecontents`.`strContents` AS `strContents`,`schshared`.`tblfilecontents`.`strMimeType` AS `strMimeType`,`schshared`.`tblfilecontents`.`strName` AS `strName`,`schshared`.`tblfilecontents`.`strUuid` AS `strUuid` from `schshared`.`tblfilecontents` where (`schshared`.`tblfilecontents`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblfirewall`
--

/*!50001 DROP VIEW IF EXISTS `tblfirewall`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblfirewall` AS select `schshared`.`tblfirewall`.`id` AS `id`,`schshared`.`tblfirewall`.`intTenantID` AS `intTenantID`,`schshared`.`tblfirewall`.`bolActive` AS `bolActive`,`schshared`.`tblfirewall`.`intActionOnBlockedIP` AS `intActionOnBlockedIP`,`schshared`.`tblfirewall`.`intRuleControlMethod` AS `intRuleControlMethod`,`schshared`.`tblfirewall`.`intUserID` AS `intUserID`,`schshared`.`tblfirewall`.`strAllowedIPs` AS `strAllowedIPs`,`schshared`.`tblfirewall`.`strBlockedMessage` AS `strBlockedMessage`,`schshared`.`tblfirewall`.`strName` AS `strName` from `schshared`.`tblfirewall` where (`schshared`.`tblfirewall`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblfirewalllog`
--

/*!50001 DROP VIEW IF EXISTS `tblfirewalllog`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblfirewalllog` AS select `schshared`.`tblfirewalllog`.`id` AS `id`,`schshared`.`tblfirewalllog`.`intTenantID` AS `intTenantID`,`schshared`.`tblfirewalllog`.`dtmDate` AS `dtmDate`,`schshared`.`tblfirewalllog`.`intApplicationID` AS `intApplicationID`,`schshared`.`tblfirewalllog`.`intFirewallID` AS `intFirewallID`,`schshared`.`tblfirewalllog`.`intFirewallRuleID` AS `intFirewallRuleID`,`schshared`.`tblfirewalllog`.`intSiteID` AS `intSiteID`,`schshared`.`tblfirewalllog`.`intUserID` AS `intUserID`,`schshared`.`tblfirewalllog`.`strAdditionalInformation` AS `strAdditionalInformation`,`schshared`.`tblfirewalllog`.`strIPAttempted` AS `strIPAttempted` from `schshared`.`tblfirewalllog` where (`schshared`.`tblfirewalllog`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblfirewallrule`
--

/*!50001 DROP VIEW IF EXISTS `tblfirewallrule`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblfirewallrule` AS select `schshared`.`tblfirewallrule`.`id` AS `id`,`schshared`.`tblfirewallrule`.`intTenantID` AS `intTenantID`,`schshared`.`tblfirewallrule`.`bolActive` AS `bolActive`,`schshared`.`tblfirewallrule`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblfirewallrule`.`dtmDateExpiry` AS `dtmDateExpiry`,`schshared`.`tblfirewallrule`.`intApplicationID` AS `intApplicationID`,`schshared`.`tblfirewallrule`.`intFirewallID` AS `intFirewallID`,`schshared`.`tblfirewallrule`.`intOrder` AS `intOrder`,`schshared`.`tblfirewallrule`.`intRuleControlMethod` AS `intRuleControlMethod`,`schshared`.`tblfirewallrule`.`intSiteID` AS `intSiteID`,`schshared`.`tblfirewallrule`.`intUserID` AS `intUserID`,`schshared`.`tblfirewallrule`.`strAllowedIPs` AS `strAllowedIPs`,`schshared`.`tblfirewallrule`.`strAllowedSubnets` AS `strAllowedSubnets`,`schshared`.`tblfirewallrule`.`strName` AS `strName` from `schshared`.`tblfirewallrule` where (`schshared`.`tblfirewallrule`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblghgcalcasset`
--

/*!50001 DROP VIEW IF EXISTS `tblghgcalcasset`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblghgcalcasset` AS select `schshared`.`tblghgcalcasset`.`id` AS `id`,`schshared`.`tblghgcalcasset`.`intTenantID` AS `intTenantID`,`schshared`.`tblghgcalcasset`.`bolIsStationary` AS `bolIsStationary`,`schshared`.`tblghgcalcasset`.`dblCO2Total` AS `dblCO2Total`,`schshared`.`tblghgcalcasset`.`dblCarbonTax` AS `dblCarbonTax`,`schshared`.`tblghgcalcasset`.`dblDistanceAmount` AS `dblDistanceAmount`,`schshared`.`tblghgcalcasset`.`dblElectricityAmount` AS `dblElectricityAmount`,`schshared`.`tblghgcalcasset`.`dblFuelAmount` AS `dblFuelAmount`,`schshared`.`tblghgcalcasset`.`dblHeatSteamAmount` AS `dblHeatSteamAmount`,`schshared`.`tblghgcalcasset`.`dblResult` AS `dblResult`,`schshared`.`tblghgcalcasset`.`dtmDateEnd` AS `dtmDateEnd`,`schshared`.`tblghgcalcasset`.`dtmDateStart` AS `dtmDateStart`,`schshared`.`tblghgcalcasset`.`intAssetID` AS `intAssetID`,`schshared`.`tblghgcalcasset`.`intFuelID` AS `intFuelID`,`schshared`.`tblghgcalcasset`.`intLocationID` AS `intLocationID`,`schshared`.`tblghgcalcasset`.`intSubFuelID` AS `intSubFuelID`,`schshared`.`tblghgcalcasset`.`intSubLocationID` AS `intSubLocationID`,`schshared`.`tblghgcalcasset`.`intSubVehicleID` AS `intSubVehicleID`,`schshared`.`tblghgcalcasset`.`intVehicleID` AS `intVehicleID`,`schshared`.`tblghgcalcasset`.`strDistanceUnit` AS `strDistanceUnit`,`schshared`.`tblghgcalcasset`.`strElectricityUnit` AS `strElectricityUnit`,`schshared`.`tblghgcalcasset`.`strFuelUnit` AS `strFuelUnit`,`schshared`.`tblghgcalcasset`.`strHeatSteamUnit` AS `strHeatSteamUnit` from `schshared`.`tblghgcalcasset` where (`schshared`.`tblghgcalcasset`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblghgcalccarbonmarket`
--

/*!50001 DROP VIEW IF EXISTS `tblghgcalccarbonmarket`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblghgcalccarbonmarket` AS select `schshared`.`tblghgcalccarbonmarket`.`id` AS `id`,`schshared`.`tblghgcalccarbonmarket`.`bolIsActive` AS `bolIsActive`,`schshared`.`tblghgcalccarbonmarket`.`dblCarbonPrice` AS `dblCarbonPrice`,`schshared`.`tblghgcalccarbonmarket`.`intResourceID` AS `intResourceID`,`schshared`.`tblghgcalccarbonmarket`.`intYear` AS `intYear`,`schshared`.`tblghgcalccarbonmarket`.`strJurisdiction` AS `strJurisdiction` from `schshared`.`tblghgcalccarbonmarket` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblghgcalcfuel`
--

/*!50001 DROP VIEW IF EXISTS `tblghgcalcfuel`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblghgcalcfuel` AS select `schshared`.`tblghgcalcfuel`.`id` AS `id`,`schshared`.`tblghgcalcfuel`.`bolIsActive` AS `bolIsActive`,`schshared`.`tblghgcalcfuel`.`bolIsStationary` AS `bolIsStationary`,`schshared`.`tblghgcalcfuel`.`dblGramsCHFourPerPrimaryUnit` AS `dblGramsCHFourPerPrimaryUnit`,`schshared`.`tblghgcalcfuel`.`dblGramsCHFourPerSecondaryUnit` AS `dblGramsCHFourPerSecondaryUnit`,`schshared`.`tblghgcalcfuel`.`dblGramsNTwoOPerPrimaryUnit` AS `dblGramsNTwoOPerPrimaryUnit`,`schshared`.`tblghgcalcfuel`.`dblGramsNTwoOPerSecondaryUnit` AS `dblGramsNTwoOPerSecondaryUnit`,`schshared`.`tblghgcalcfuel`.`dblKgCOTwoPerPrimaryUnit` AS `dblKgCOTwoPerPrimaryUnit`,`schshared`.`tblghgcalcfuel`.`dblKgCOTwoPerSecondaryUnit` AS `dblKgCOTwoPerSecondaryUnit`,`schshared`.`tblghgcalcfuel`.`intParentFuelID` AS `intParentFuelID`,`schshared`.`tblghgcalcfuel`.`intResourceID` AS `intResourceID`,`schshared`.`tblghgcalcfuel`.`intYear` AS `intYear`,`schshared`.`tblghgcalcfuel`.`strName` AS `strName`,`schshared`.`tblghgcalcfuel`.`strPrimaryUnit` AS `strPrimaryUnit`,`schshared`.`tblghgcalcfuel`.`strSecondaryUnit` AS `strSecondaryUnit` from `schshared`.`tblghgcalcfuel` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblghgcalcgwp`
--

/*!50001 DROP VIEW IF EXISTS `tblghgcalcgwp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblghgcalcgwp` AS select `schshared`.`tblghgcalcgwp`.`id` AS `id`,`schshared`.`tblghgcalcgwp`.`bolIsActive` AS `bolIsActive`,`schshared`.`tblghgcalcgwp`.`intHundredYearGWP` AS `intHundredYearGWP`,`schshared`.`tblghgcalcgwp`.`intResourceID` AS `intResourceID`,`schshared`.`tblghgcalcgwp`.`intYear` AS `intYear`,`schshared`.`tblghgcalcgwp`.`strDescription` AS `strDescription`,`schshared`.`tblghgcalcgwp`.`strName` AS `strName` from `schshared`.`tblghgcalcgwp` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblghgcalclocation`
--

/*!50001 DROP VIEW IF EXISTS `tblghgcalclocation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblghgcalclocation` AS select `schshared`.`tblghgcalclocation`.`id` AS `id`,`schshared`.`tblghgcalclocation`.`bolIsActive` AS `bolIsActive`,`schshared`.`tblghgcalclocation`.`dblGramsPerkWh` AS `dblGramsPerkWh`,`schshared`.`tblghgcalclocation`.`intCarbonMarketID` AS `intCarbonMarketID`,`schshared`.`tblghgcalclocation`.`intParentLocationID` AS `intParentLocationID`,`schshared`.`tblghgcalclocation`.`intResourceID` AS `intResourceID`,`schshared`.`tblghgcalclocation`.`intYear` AS `intYear`,`schshared`.`tblghgcalclocation`.`strName` AS `strName`,`schshared`.`tblghgcalclocation`.`strRegionLabel` AS `strRegionLabel`,`schshared`.`tblghgcalclocation`.`strZIPPostalCode` AS `strZIPPostalCode` from `schshared`.`tblghgcalclocation` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblghgcalcresource`
--

/*!50001 DROP VIEW IF EXISTS `tblghgcalcresource`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblghgcalcresource` AS select `schshared`.`tblghgcalcresource`.`id` AS `id`,`schshared`.`tblghgcalcresource`.`bolIsActive` AS `bolIsActive`,`schshared`.`tblghgcalcresource`.`intYear` AS `intYear`,`schshared`.`tblghgcalcresource`.`strDescription` AS `strDescription`,`schshared`.`tblghgcalcresource`.`strLink` AS `strLink`,`schshared`.`tblghgcalcresource`.`strName` AS `strName` from `schshared`.`tblghgcalcresource` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblghgcalcvehicle`
--

/*!50001 DROP VIEW IF EXISTS `tblghgcalcvehicle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblghgcalcvehicle` AS select `schshared`.`tblghgcalcvehicle`.`id` AS `id`,`schshared`.`tblghgcalcvehicle`.`bolIsActive` AS `bolIsActive`,`schshared`.`tblghgcalcvehicle`.`bolIsOnRoad` AS `bolIsOnRoad`,`schshared`.`tblghgcalcvehicle`.`dblGramsCHFourPerPrimaryUnit` AS `dblGramsCHFourPerPrimaryUnit`,`schshared`.`tblghgcalcvehicle`.`dblGramsNTwoOPerPrimaryUnit` AS `dblGramsNTwoOPerPrimaryUnit`,`schshared`.`tblghgcalcvehicle`.`intParentVehicleID` AS `intParentVehicleID`,`schshared`.`tblghgcalcvehicle`.`intResourceID` AS `intResourceID`,`schshared`.`tblghgcalcvehicle`.`intYear` AS `intYear`,`schshared`.`tblghgcalcvehicle`.`strName` AS `strName`,`schshared`.`tblghgcalcvehicle`.`strSubNameLabel` AS `strSubNameLabel` from `schshared`.`tblghgcalcvehicle` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblgrouppermissions`
--

/*!50001 DROP VIEW IF EXISTS `tblgrouppermissions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblgrouppermissions` AS select `schshared`.`tblgrouppermissions`.`id` AS `id`,`schshared`.`tblgrouppermissions`.`intTenantID` AS `intTenantID`,`schshared`.`tblgrouppermissions`.`intGroupID` AS `intGroupID`,`schshared`.`tblgrouppermissions`.`strPermissions` AS `strPermissions` from `schshared`.`tblgrouppermissions` where (`schshared`.`tblgrouppermissions`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblguestactions`
--

/*!50001 DROP VIEW IF EXISTS `tblguestactions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblguestactions` AS select `schshared`.`tblguestactions`.`id` AS `id`,`schshared`.`tblguestactions`.`intTenantID` AS `intTenantID`,`schshared`.`tblguestactions`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblguestactions`.`intClientSessionID` AS `intClientSessionID`,`schshared`.`tblguestactions`.`intCreatedWorkOrderID` AS `intCreatedWorkOrderID`,`schshared`.`tblguestactions`.`strOriginatingIp` AS `strOriginatingIp` from `schshared`.`tblguestactions` where (`schshared`.`tblguestactions`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblguestmrformfield`
--

/*!50001 DROP VIEW IF EXISTS `tblguestmrformfield`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblguestmrformfield` AS select `schshared`.`tblguestmrformfield`.`id` AS `id`,`schshared`.`tblguestmrformfield`.`intTenantID` AS `intTenantID`,`schshared`.`tblguestmrformfield`.`bolIsIncludedInNotification` AS `bolIsIncludedInNotification`,`schshared`.`tblguestmrformfield`.`bolIsPermanent` AS `bolIsPermanent`,`schshared`.`tblguestmrformfield`.`bolIsReorderable` AS `bolIsReorderable`,`schshared`.`tblguestmrformfield`.`bolIsRequired` AS `bolIsRequired`,`schshared`.`tblguestmrformfield`.`intDdColumnID` AS `intDdColumnID`,`schshared`.`tblguestmrformfield`.`intOrder` AS `intOrder`,`schshared`.`tblguestmrformfield`.`intSystemSettingID` AS `intSystemSettingID` from `schshared`.`tblguestmrformfield` where (`schshared`.`tblguestmrformfield`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblintegration`
--

/*!50001 DROP VIEW IF EXISTS `tblintegration`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblintegration` AS select `schshared`.`tblintegration`.`id` AS `id`,`schshared`.`tblintegration`.`intTenantID` AS `intTenantID`,`schshared`.`tblintegration`.`bolActive` AS `bolActive`,`schshared`.`tblintegration`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblintegration`.`dtmDateUpdated` AS `dtmDateUpdated`,`schshared`.`tblintegration`.`dtmLastAuthorized` AS `dtmLastAuthorized`,`schshared`.`tblintegration`.`intCreatedByUserID` AS `intCreatedByUserID`,`schshared`.`tblintegration`.`intIntegrationEndpointFormatID` AS `intIntegrationEndpointFormatID`,`schshared`.`tblintegration`.`intIntegrationProtocolID` AS `intIntegrationProtocolID`,`schshared`.`tblintegration`.`intIntegrationSystemID` AS `intIntegrationSystemID`,`schshared`.`tblintegration`.`intIntegrationTemplateID` AS `intIntegrationTemplateID`,`schshared`.`tblintegration`.`intUpdatedByUserID` AS `intUpdatedByUserID`,`schshared`.`tblintegration`.`strName` AS `strName` from `schshared`.`tblintegration` where (`schshared`.`tblintegration`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblintegrationaction`
--

/*!50001 DROP VIEW IF EXISTS `tblintegrationaction`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblintegrationaction` AS select `schshared`.`tblintegrationaction`.`id` AS `id`,`schshared`.`tblintegrationaction`.`intTenantID` AS `intTenantID`,`schshared`.`tblintegrationaction`.`bolRunOnInit` AS `bolRunOnInit`,`schshared`.`tblintegrationaction`.`dtmDateLastRun` AS `dtmDateLastRun`,`schshared`.`tblintegrationaction`.`intIntegrationActionAdvancedEndpointID` AS `intIntegrationActionAdvancedEndpointID`,`schshared`.`tblintegrationaction`.`intIntegrationActionTypeID` AS `intIntegrationActionTypeID`,`schshared`.`tblintegrationaction`.`intIntegrationID` AS `intIntegrationID`,`schshared`.`tblintegrationaction`.`strDescription` AS `strDescription`,`schshared`.`tblintegrationaction`.`strName` AS `strName` from `schshared`.`tblintegrationaction` where (`schshared`.`tblintegrationaction`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblintegrationactionadvancedendpoint`
--

/*!50001 DROP VIEW IF EXISTS `tblintegrationactionadvancedendpoint`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblintegrationactionadvancedendpoint` AS select `schshared`.`tblintegrationactionadvancedendpoint`.`id` AS `id`,`schshared`.`tblintegrationactionadvancedendpoint`.`intIntegrationSystemID` AS `intIntegrationSystemID` from `schshared`.`tblintegrationactionadvancedendpoint` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblintegrationactionlog`
--

/*!50001 DROP VIEW IF EXISTS `tblintegrationactionlog`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblintegrationactionlog` AS select `schshared`.`tblintegrationactionlog`.`id` AS `id`,`schshared`.`tblintegrationactionlog`.`intTenantID` AS `intTenantID`,`schshared`.`tblintegrationactionlog`.`dtmDate` AS `dtmDate`,`schshared`.`tblintegrationactionlog`.`intActivityLogID` AS `intActivityLogID`,`schshared`.`tblintegrationactionlog`.`intCmmsObjectID` AS `intCmmsObjectID`,`schshared`.`tblintegrationactionlog`.`intParentActivityLogID` AS `intParentActivityLogID`,`schshared`.`tblintegrationactionlog`.`strCmmsObjectTableName` AS `strCmmsObjectTableName`,`schshared`.`tblintegrationactionlog`.`strExternalSystemObjectID` AS `strExternalSystemObjectID` from `schshared`.`tblintegrationactionlog` where (`schshared`.`tblintegrationactionlog`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblintegrationactiontype`
--

/*!50001 DROP VIEW IF EXISTS `tblintegrationactiontype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblintegrationactiontype` AS select `schshared`.`tblintegrationactiontype`.`id` AS `id`,`schshared`.`tblintegrationactiontype`.`strDescription` AS `strDescription`,`schshared`.`tblintegrationactiontype`.`strName` AS `strName` from `schshared`.`tblintegrationactiontype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblintegrationconfigurableproperty`
--

/*!50001 DROP VIEW IF EXISTS `tblintegrationconfigurableproperty`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblintegrationconfigurableproperty` AS select `schshared`.`tblintegrationconfigurableproperty`.`id` AS `id`,`schshared`.`tblintegrationconfigurableproperty`.`intTenantID` AS `intTenantID`,`schshared`.`tblintegrationconfigurableproperty`.`intIntegrationConfigurationPropertyType` AS `intIntegrationConfigurationPropertyType`,`schshared`.`tblintegrationconfigurableproperty`.`intIntegrationConfigurationPropertyValueType` AS `intIntegrationConfigurationPropertyValueType`,`schshared`.`tblintegrationconfigurableproperty`.`intIntegrationDtoType` AS `intIntegrationDtoType`,`schshared`.`tblintegrationconfigurableproperty`.`intIntegrationID` AS `intIntegrationID`,`schshared`.`tblintegrationconfigurableproperty`.`strName` AS `strName`,`schshared`.`tblintegrationconfigurableproperty`.`strValue` AS `strValue` from `schshared`.`tblintegrationconfigurableproperty` where (`schshared`.`tblintegrationconfigurableproperty`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblintegrationendpointformat`
--

/*!50001 DROP VIEW IF EXISTS `tblintegrationendpointformat`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblintegrationendpointformat` AS select `schshared`.`tblintegrationendpointformat`.`id` AS `id`,`schshared`.`tblintegrationendpointformat`.`strName` AS `strName` from `schshared`.`tblintegrationendpointformat` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblintegrationparameter`
--

/*!50001 DROP VIEW IF EXISTS `tblintegrationparameter`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblintegrationparameter` AS select `schshared`.`tblintegrationparameter`.`id` AS `id`,`schshared`.`tblintegrationparameter`.`intTenantID` AS `intTenantID`,`schshared`.`tblintegrationparameter`.`intIntegrationID` AS `intIntegrationID`,`schshared`.`tblintegrationparameter`.`intIntegrationParameterTypeID` AS `intIntegrationParameterTypeID`,`schshared`.`tblintegrationparameter`.`strName` AS `strName`,`schshared`.`tblintegrationparameter`.`strValue` AS `strValue` from `schshared`.`tblintegrationparameter` where (`schshared`.`tblintegrationparameter`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblintegrationparametertype`
--

/*!50001 DROP VIEW IF EXISTS `tblintegrationparametertype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblintegrationparametertype` AS select `schshared`.`tblintegrationparametertype`.`id` AS `id`,`schshared`.`tblintegrationparametertype`.`strName` AS `strName` from `schshared`.`tblintegrationparametertype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblintegrationprotocol`
--

/*!50001 DROP VIEW IF EXISTS `tblintegrationprotocol`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblintegrationprotocol` AS select `schshared`.`tblintegrationprotocol`.`id` AS `id`,`schshared`.`tblintegrationprotocol`.`strFormatExample` AS `strFormatExample`,`schshared`.`tblintegrationprotocol`.`strName` AS `strName`,`schshared`.`tblintegrationprotocol`.`strProtocolIdentifier` AS `strProtocolIdentifier` from `schshared`.`tblintegrationprotocol` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblintegrationsystem`
--

/*!50001 DROP VIEW IF EXISTS `tblintegrationsystem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblintegrationsystem` AS select `schshared`.`tblintegrationsystem`.`id` AS `id`,`schshared`.`tblintegrationsystem`.`strName` AS `strName` from `schshared`.`tblintegrationsystem` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblintegrationtemplate`
--

/*!50001 DROP VIEW IF EXISTS `tblintegrationtemplate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblintegrationtemplate` AS select `schshared`.`tblintegrationtemplate`.`id` AS `id`,`schshared`.`tblintegrationtemplate`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblintegrationtemplate`.`intIntegrationEndpointFormatID` AS `intIntegrationEndpointFormatID`,`schshared`.`tblintegrationtemplate`.`intIntegrationProtocolID` AS `intIntegrationProtocolID`,`schshared`.`tblintegrationtemplate`.`intIntegrationSystemID` AS `intIntegrationSystemID`,`schshared`.`tblintegrationtemplate`.`strName` AS `strName` from `schshared`.`tblintegrationtemplate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblinventorytransaction`
--

/*!50001 DROP VIEW IF EXISTS `tblinventorytransaction`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblinventorytransaction` AS select `schshared`.`tblinventorytransaction`.`id` AS `id`,`schshared`.`tblinventorytransaction`.`intTenantID` AS `intTenantID`,`schshared`.`tblinventorytransaction`.`dblCostPerUnit` AS `dblCostPerUnit`,`schshared`.`tblinventorytransaction`.`dblTotalCost` AS `dblTotalCost`,`schshared`.`tblinventorytransaction`.`dtmDate` AS `dtmDate`,`schshared`.`tblinventorytransaction`.`intInventoryChargeID` AS `intInventoryChargeID`,`schshared`.`tblinventorytransaction`.`intInventoryChargedForID` AS `intInventoryChargedForID`,`schshared`.`tblinventorytransaction`.`intInventoryChargedFromID` AS `intInventoryChargedFromID`,`schshared`.`tblinventorytransaction`.`intStockTxTypeID` AS `intStockTxTypeID`,`schshared`.`tblinventorytransaction`.`qtyTxQuantity` AS `qtyTxQuantity` from `schshared`.`tblinventorytransaction` where (`schshared`.`tblinventorytransaction`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblisoweekcalendar`
--

/*!50001 DROP VIEW IF EXISTS `tblisoweekcalendar`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblisoweekcalendar` AS select `schshared`.`tblisoweekcalendar`.`id` AS `id`,`schshared`.`tblisoweekcalendar`.`dtmWeekEnd` AS `dtmWeekEnd`,`schshared`.`tblisoweekcalendar`.`dtmWeekStart` AS `dtmWeekStart`,`schshared`.`tblisoweekcalendar`.`intWeek` AS `intWeek`,`schshared`.`tblisoweekcalendar`.`intYear` AS `intYear`,`schshared`.`tblisoweekcalendar`.`strIsoName` AS `strIsoName` from `schshared`.`tblisoweekcalendar` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblkpiresult`
--

/*!50001 DROP VIEW IF EXISTS `tblkpiresult`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblkpiresult` AS select `schshared`.`tblkpiresult`.`id` AS `id`,`schshared`.`tblkpiresult`.`intTenantID` AS `intTenantID`,`schshared`.`tblkpiresult`.`bolBase` AS `bolBase`,`schshared`.`tblkpiresult`.`dblValue` AS `dblValue`,`schshared`.`tblkpiresult`.`dtmTime` AS `dtmTime`,`schshared`.`tblkpiresult`.`intErrorCode` AS `intErrorCode`,`schshared`.`tblkpiresult`.`intQueryHash` AS `intQueryHash`,`schshared`.`tblkpiresult`.`intWidgetPositionID` AS `intWidgetPositionID`,`schshared`.`tblkpiresult`.`strQuery` AS `strQuery` from `schshared`.`tblkpiresult` where (`schshared`.`tblkpiresult`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbllanguage`
--

/*!50001 DROP VIEW IF EXISTS `tbllanguage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbllanguage` AS select `schshared`.`tbllanguage`.`id` AS `id`,`schshared`.`tbllanguage`.`strAlpha2Code` AS `strAlpha2Code`,`schshared`.`tbllanguage`.`strEnglishName` AS `strEnglishName`,`schshared`.`tbllanguage`.`strNativeName` AS `strNativeName` from `schshared`.`tbllanguage` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbllastmeterreading`
--

/*!50001 DROP VIEW IF EXISTS `tbllastmeterreading`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbllastmeterreading` AS select `schshared`.`tbllastmeterreading`.`id` AS `id`,`schshared`.`tbllastmeterreading`.`intTenantID` AS `intTenantID`,`schshared`.`tbllastmeterreading`.`dtmDateSubmitted` AS `dtmDateSubmitted`,`schshared`.`tbllastmeterreading`.`intAssetID` AS `intAssetID`,`schshared`.`tbllastmeterreading`.`intMeterReadingID` AS `intMeterReadingID`,`schshared`.`tbllastmeterreading`.`intMeterReadingUnitsID` AS `intMeterReadingUnitsID` from `schshared`.`tbllastmeterreading` where (`schshared`.`tbllastmeterreading`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblleadstate`
--

/*!50001 DROP VIEW IF EXISTS `tblleadstate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblleadstate` AS select `schshared`.`tblleadstate`.`id` AS `id`,`schshared`.`tblleadstate`.`strName` AS `strName` from `schshared`.`tblleadstate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbllineitem`
--

/*!50001 DROP VIEW IF EXISTS `tbllineitem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbllineitem` AS select `schshared`.`tbllineitem`.`id` AS `id`,`schshared`.`tbllineitem`.`intTenantID` AS `intTenantID`,`schshared`.`tbllineitem`.`bolBlockAutoDiscounting` AS `bolBlockAutoDiscounting`,`schshared`.`tbllineitem`.`bolUseActiveQuantity` AS `bolUseActiveQuantity`,`schshared`.`tbllineitem`.`dblDiscount` AS `dblDiscount`,`schshared`.`tbllineitem`.`dblPrice` AS `dblPrice`,`schshared`.`tbllineitem`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tbllineitem`.`dtmDateUpdated` AS `dtmDateUpdated`,`schshared`.`tbllineitem`.`dtmDiscountEnd` AS `dtmDiscountEnd`,`schshared`.`tbllineitem`.`dtmDiscountStart` AS `dtmDiscountStart`,`schshared`.`tbllineitem`.`intBillingTypeID` AS `intBillingTypeID`,`schshared`.`tbllineitem`.`intDuration` AS `intDuration`,`schshared`.`tbllineitem`.`intLineItemParentID` AS `intLineItemParentID`,`schshared`.`tbllineitem`.`intOrderID` AS `intOrderID`,`schshared`.`tbllineitem`.`intProductID` AS `intProductID`,`schshared`.`tbllineitem`.`intProductTierID` AS `intProductTierID`,`schshared`.`tbllineitem`.`intPromotionalOfferID` AS `intPromotionalOfferID`,`schshared`.`tbllineitem`.`intQuantity` AS `intQuantity`,`schshared`.`tbllineitem`.`intQuoteID` AS `intQuoteID`,`schshared`.`tbllineitem`.`intSubscriptionPlanID` AS `intSubscriptionPlanID`,`schshared`.`tbllineitem`.`intUpdatedByUserID` AS `intUpdatedByUserID`,`schshared`.`tbllineitem`.`qtyHoursOrdered` AS `qtyHoursOrdered`,`schshared`.`tbllineitem`.`strDiscountType` AS `strDiscountType`,`schshared`.`tbllineitem`.`strName` AS `strName`,`schshared`.`tbllineitem`.`strNotes` AS `strNotes` from `schshared`.`tbllineitem` where (`schshared`.`tbllineitem`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbllocalization`
--

/*!50001 DROP VIEW IF EXISTS `tbllocalization`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbllocalization` AS select `schshared`.`tbllocalization`.`id` AS `id`,`schshared`.`tbllocalization`.`bolActive` AS `bolActive`,`schshared`.`tbllocalization`.`bolAvailableToNewSignups` AS `bolAvailableToNewSignups`,`schshared`.`tbllocalization`.`dblMobilePercentLocalized` AS `dblMobilePercentLocalized`,`schshared`.`tbllocalization`.`dblNativeMobilePercentLocalized` AS `dblNativeMobilePercentLocalized`,`schshared`.`tbllocalization`.`dblPercentLocalized` AS `dblPercentLocalized`,`schshared`.`tbllocalization`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tbllocalization`.`dtmDateModified` AS `dtmDateModified`,`schshared`.`tbllocalization`.`intCountryID` AS `intCountryID`,`schshared`.`tbllocalization`.`intCreatedByID` AS `intCreatedByID`,`schshared`.`tbllocalization`.`intDefaultCurrencyID` AS `intDefaultCurrencyID`,`schshared`.`tbllocalization`.`intLanguageID` AS `intLanguageID`,`schshared`.`tbllocalization`.`intLastModifiedByID` AS `intLastModifiedByID`,`schshared`.`tbllocalization`.`intLocalizationTypeID` AS `intLocalizationTypeID`,`schshared`.`tbllocalization`.`intLocalizedKeyCount` AS `intLocalizedKeyCount`,`schshared`.`tbllocalization`.`intMobileLocalizedKeyCount` AS `intMobileLocalizedKeyCount`,`schshared`.`tbllocalization`.`intMobileTotalKeyCount` AS `intMobileTotalKeyCount`,`schshared`.`tbllocalization`.`intNativeMobileLocalizedKeyCount` AS `intNativeMobileLocalizedKeyCount`,`schshared`.`tbllocalization`.`intNativeMobileTotalKeyCount` AS `intNativeMobileTotalKeyCount`,`schshared`.`tbllocalization`.`intOwnerTenantID` AS `intOwnerTenantID`,`schshared`.`tbllocalization`.`intParentLocalizationID` AS `intParentLocalizationID`,`schshared`.`tbllocalization`.`intTotalKeyCount` AS `intTotalKeyCount`,`schshared`.`tbllocalization`.`strAutoSuggest` AS `strAutoSuggest`,`schshared`.`tbllocalization`.`strDateFormat` AS `strDateFormat`,`schshared`.`tbllocalization`.`strDecimalFormat` AS `strDecimalFormat`,`schshared`.`tbllocalization`.`strDecimalSeparator` AS `strDecimalSeparator`,`schshared`.`tbllocalization`.`strGroupSeparator` AS `strGroupSeparator`,`schshared`.`tbllocalization`.`strIntegerFormat` AS `strIntegerFormat`,`schshared`.`tbllocalization`.`strMobileProperties` AS `strMobileProperties`,`schshared`.`tbllocalization`.`strName` AS `strName`,`schshared`.`tbllocalization`.`strNativeMobileProperties` AS `strNativeMobileProperties`,`schshared`.`tbllocalization`.`strProperties` AS `strProperties`,`schshared`.`tbllocalization`.`strQuantityFormat` AS `strQuantityFormat`,`schshared`.`tbllocalization`.`strSupportVersion` AS `strSupportVersion`,`schshared`.`tbllocalization`.`strTimeFormat` AS `strTimeFormat` from `schshared`.`tbllocalization` where ((`schshared`.`tbllocalization`.`intOwnerTenantID` is null) or (`schshared`.`tbllocalization`.`intOwnerTenantID` = `ma_get_current_tenant`())) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbllocalizationarchive`
--

/*!50001 DROP VIEW IF EXISTS `tbllocalizationarchive`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbllocalizationarchive` AS select `schshared`.`tbllocalizationarchive`.`id` AS `id`,`schshared`.`tbllocalizationarchive`.`dblMobilePercentLocalized` AS `dblMobilePercentLocalized`,`schshared`.`tbllocalizationarchive`.`dblNativeMobilePercentLocalized` AS `dblNativeMobilePercentLocalized`,`schshared`.`tbllocalizationarchive`.`dblPercentLocalized` AS `dblPercentLocalized`,`schshared`.`tbllocalizationarchive`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tbllocalizationarchive`.`dtmDateModified` AS `dtmDateModified`,`schshared`.`tbllocalizationarchive`.`intCountryID` AS `intCountryID`,`schshared`.`tbllocalizationarchive`.`intCreatedByID` AS `intCreatedByID`,`schshared`.`tbllocalizationarchive`.`intDefaultCurrencyID` AS `intDefaultCurrencyID`,`schshared`.`tbllocalizationarchive`.`intLanguageID` AS `intLanguageID`,`schshared`.`tbllocalizationarchive`.`intLastModifiedByID` AS `intLastModifiedByID`,`schshared`.`tbllocalizationarchive`.`intLocalizationID` AS `intLocalizationID`,`schshared`.`tbllocalizationarchive`.`intLocalizedKeyCount` AS `intLocalizedKeyCount`,`schshared`.`tbllocalizationarchive`.`intMobileLocalizedKeyCount` AS `intMobileLocalizedKeyCount`,`schshared`.`tbllocalizationarchive`.`intMobileTotalKeyCount` AS `intMobileTotalKeyCount`,`schshared`.`tbllocalizationarchive`.`intNativeMobileLocalizedKeyCount` AS `intNativeMobileLocalizedKeyCount`,`schshared`.`tbllocalizationarchive`.`intNativeMobileTotalKeyCount` AS `intNativeMobileTotalKeyCount`,`schshared`.`tbllocalizationarchive`.`intOwnerTenantID` AS `intOwnerTenantID`,`schshared`.`tbllocalizationarchive`.`intTotalKeyCount` AS `intTotalKeyCount`,`schshared`.`tbllocalizationarchive`.`strDateFormat` AS `strDateFormat`,`schshared`.`tbllocalizationarchive`.`strDecimalFormat` AS `strDecimalFormat`,`schshared`.`tbllocalizationarchive`.`strDecimalSeparator` AS `strDecimalSeparator`,`schshared`.`tbllocalizationarchive`.`strGroupSeparator` AS `strGroupSeparator`,`schshared`.`tbllocalizationarchive`.`strIntegerFormat` AS `strIntegerFormat`,`schshared`.`tbllocalizationarchive`.`strMobileProperties` AS `strMobileProperties`,`schshared`.`tbllocalizationarchive`.`strName` AS `strName`,`schshared`.`tbllocalizationarchive`.`strNativeMobileProperties` AS `strNativeMobileProperties`,`schshared`.`tbllocalizationarchive`.`strProperties` AS `strProperties`,`schshared`.`tbllocalizationarchive`.`strQuantityFormat` AS `strQuantityFormat`,`schshared`.`tbllocalizationarchive`.`strSupportVersion` AS `strSupportVersion`,`schshared`.`tbllocalizationarchive`.`strTimeFormat` AS `strTimeFormat` from `schshared`.`tbllocalizationarchive` where ((`schshared`.`tbllocalizationarchive`.`intOwnerTenantID` is null) or (`schshared`.`tbllocalizationarchive`.`intOwnerTenantID` = `ma_get_current_tenant`())) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbllocalizationpermission`
--

/*!50001 DROP VIEW IF EXISTS `tbllocalizationpermission`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbllocalizationpermission` AS select `schshared`.`tbllocalizationpermission`.`id` AS `id`,`schshared`.`tbllocalizationpermission`.`intTenantID` AS `intTenantID`,`schshared`.`tbllocalizationpermission`.`intLocalizationID` AS `intLocalizationID`,`schshared`.`tbllocalizationpermission`.`intUserID` AS `intUserID` from `schshared`.`tbllocalizationpermission` where (`schshared`.`tbllocalizationpermission`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbllocalizationtype`
--

/*!50001 DROP VIEW IF EXISTS `tbllocalizationtype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbllocalizationtype` AS select `schshared`.`tbllocalizationtype`.`id` AS `id`,`schshared`.`tbllocalizationtype`.`strDescription` AS `strDescription`,`schshared`.`tbllocalizationtype`.`strName` AS `strName` from `schshared`.`tbllocalizationtype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbllogalert`
--

/*!50001 DROP VIEW IF EXISTS `tbllogalert`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbllogalert` AS select `schshared`.`tbllogalert`.`id` AS `id`,`schshared`.`tbllogalert`.`intTenantID` AS `intTenantID`,`schshared`.`tbllogalert`.`bolAcknowledged` AS `bolAcknowledged`,`schshared`.`tbllogalert`.`bolEmailSent` AS `bolEmailSent`,`schshared`.`tbllogalert`.`bolSeen` AS `bolSeen`,`schshared`.`tbllogalert`.`dtmDate` AS `dtmDate`,`schshared`.`tbllogalert`.`intLogMonitoringID` AS `intLogMonitoringID`,`schshared`.`tbllogalert`.`intUserID` AS `intUserID` from `schshared`.`tbllogalert` where (`schshared`.`tbllogalert`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbllogcosttype`
--

/*!50001 DROP VIEW IF EXISTS `tbllogcosttype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbllogcosttype` AS select `schshared`.`tbllogcosttype`.`id` AS `id`,`schshared`.`tbllogcosttype`.`strName` AS `strName` from `schshared`.`tbllogcosttype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbllogmonitoring`
--

/*!50001 DROP VIEW IF EXISTS `tbllogmonitoring`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbllogmonitoring` AS select `schshared`.`tbllogmonitoring`.`id` AS `id`,`schshared`.`tbllogmonitoring`.`intTenantID` AS `intTenantID`,`schshared`.`tbllogmonitoring`.`dtmDateFrom` AS `dtmDateFrom`,`schshared`.`tbllogmonitoring`.`dtmDateTo` AS `dtmDateTo`,`schshared`.`tbllogmonitoring`.`intCount` AS `intCount`,`schshared`.`tbllogmonitoring`.`intSavedSearchID` AS `intSavedSearchID` from `schshared`.`tbllogmonitoring` where (`schshared`.`tbllogmonitoring`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbllogsavedsearch`
--

/*!50001 DROP VIEW IF EXISTS `tbllogsavedsearch`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbllogsavedsearch` AS select `schshared`.`tbllogsavedsearch`.`id` AS `id`,`schshared`.`tbllogsavedsearch`.`intTenantID` AS `intTenantID`,`schshared`.`tbllogsavedsearch`.`bolDefault` AS `bolDefault`,`schshared`.`tbllogsavedsearch`.`bolEnableMonitoring` AS `bolEnableMonitoring`,`schshared`.`tbllogsavedsearch`.`bolSendCriticalMessage` AS `bolSendCriticalMessage`,`schshared`.`tbllogsavedsearch`.`dblAlertThreshold` AS `dblAlertThreshold`,`schshared`.`tbllogsavedsearch`.`dtmLastMonitored` AS `dtmLastMonitored`,`schshared`.`tbllogsavedsearch`.`intAlertType` AS `intAlertType`,`schshared`.`tbllogsavedsearch`.`intCreatedByUserID` AS `intCreatedByUserID`,`schshared`.`tbllogsavedsearch`.`strMonitoringCronExpression` AS `strMonitoringCronExpression`,`schshared`.`tbllogsavedsearch`.`strName` AS `strName`,`schshared`.`tbllogsavedsearch`.`strSavedSearch` AS `strSavedSearch` from `schshared`.`tbllogsavedsearch` where (`schshared`.`tbllogsavedsearch`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbllogsavedsearchuser`
--

/*!50001 DROP VIEW IF EXISTS `tbllogsavedsearchuser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbllogsavedsearchuser` AS select `schshared`.`tbllogsavedsearchuser`.`id` AS `id`,`schshared`.`tbllogsavedsearchuser`.`intTenantID` AS `intTenantID`,`schshared`.`tbllogsavedsearchuser`.`bolSendAlerts` AS `bolSendAlerts`,`schshared`.`tbllogsavedsearchuser`.`intAlertsInterval` AS `intAlertsInterval`,`schshared`.`tbllogsavedsearchuser`.`intLogSavedSearchID` AS `intLogSavedSearchID`,`schshared`.`tbllogsavedsearchuser`.`intUserID` AS `intUserID` from `schshared`.`tbllogsavedsearchuser` where (`schshared`.`tbllogsavedsearchuser`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbllogtype`
--

/*!50001 DROP VIEW IF EXISTS `tbllogtype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbllogtype` AS select `schshared`.`tbllogtype`.`id` AS `id`,`schshared`.`tbllogtype`.`strName` AS `strName` from `schshared`.`tbllogtype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblloguser`
--

/*!50001 DROP VIEW IF EXISTS `tblloguser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblloguser` AS select `schshared`.`tblloguser`.`id` AS `id`,`schshared`.`tblloguser`.`intTenantID` AS `intTenantID`,`schshared`.`tblloguser`.`bolDeleted` AS `bolDeleted`,`schshared`.`tblloguser`.`bolGroup` AS `bolGroup`,`schshared`.`tblloguser`.`strFullName` AS `strFullName`,`schshared`.`tblloguser`.`strUuid` AS `strUuid` from `schshared`.`tblloguser` where (`schshared`.`tblloguser`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblmaintenancetype`
--

/*!50001 DROP VIEW IF EXISTS `tblmaintenancetype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblmaintenancetype` AS select `schshared`.`tblmaintenancetype`.`id` AS `id`,`schshared`.`tblmaintenancetype`.`intTenantID` AS `intTenantID`,`schshared`.`tblmaintenancetype`.`intSysCode` AS `intSysCode`,`schshared`.`tblmaintenancetype`.`intUpdated` AS `intUpdated`,`schshared`.`tblmaintenancetype`.`strColor` AS `strColor`,`schshared`.`tblmaintenancetype`.`strDescription` AS `strDescription`,`schshared`.`tblmaintenancetype`.`strName` AS `strName`,`schshared`.`tblmaintenancetype`.`strUuid` AS `strUuid` from `schshared`.`tblmaintenancetype` where (`schshared`.`tblmaintenancetype`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblmarketingprogram`
--

/*!50001 DROP VIEW IF EXISTS `tblmarketingprogram`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblmarketingprogram` AS select `schshared`.`tblmarketingprogram`.`id` AS `id`,`schshared`.`tblmarketingprogram`.`strCode` AS `strCode`,`schshared`.`tblmarketingprogram`.`strName` AS `strName`,`schshared`.`tblmarketingprogram`.`strNotes` AS `strNotes` from `schshared`.`tblmarketingprogram` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblmasourcecounter`
--

/*!50001 DROP VIEW IF EXISTS `tblmasourcecounter`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblmasourcecounter` AS select `schshared`.`tblmasourcecounter`.`id` AS `id`,`schshared`.`tblmasourcecounter`.`intTenantID` AS `intTenantID`,`schshared`.`tblmasourcecounter`.`intMASourceListingID` AS `intMASourceListingID`,`schshared`.`tblmasourcecounter`.`intNumberViews` AS `intNumberViews`,`schshared`.`tblmasourcecounter`.`intUserID` AS `intUserID` from `schshared`.`tblmasourcecounter` where (`schshared`.`tblmasourcecounter`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblmasourcelisting`
--

/*!50001 DROP VIEW IF EXISTS `tblmasourcelisting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblmasourcelisting` AS select `schshared`.`tblmasourcelisting`.`id` AS `id`,`schshared`.`tblmasourcelisting`.`intTenantID` AS `intTenantID`,`schshared`.`tblmasourcelisting`.`bolIncludeEvents` AS `bolIncludeEvents`,`schshared`.`tblmasourcelisting`.`bolIncludeImages` AS `bolIncludeImages`,`schshared`.`tblmasourcelisting`.`bolIncludeMeterReadings` AS `bolIncludeMeterReadings`,`schshared`.`tblmasourcelisting`.`bolIncludeOffline` AS `bolIncludeOffline`,`schshared`.`tblmasourcelisting`.`bolIncludeOtherFiles` AS `bolIncludeOtherFiles`,`schshared`.`tblmasourcelisting`.`bolIncludeWarranty` AS `bolIncludeWarranty`,`schshared`.`tblmasourcelisting`.`bolIncludeWorkOrders` AS `bolIncludeWorkOrders`,`schshared`.`tblmasourcelisting`.`dblLat` AS `dblLat`,`schshared`.`tblmasourcelisting`.`dblListingPrice` AS `dblListingPrice`,`schshared`.`tblmasourcelisting`.`dblLng` AS `dblLng`,`schshared`.`tblmasourcelisting`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblmasourcelisting`.`dtmDatePosted` AS `dtmDatePosted`,`schshared`.`tblmasourcelisting`.`dtmDateUpdated` AS `dtmDateUpdated`,`schshared`.`tblmasourcelisting`.`intAssetId` AS `intAssetId`,`schshared`.`tblmasourcelisting`.`intCondition` AS `intCondition`,`schshared`.`tblmasourcelisting`.`intContactID` AS `intContactID`,`schshared`.`tblmasourcelisting`.`intCurrencyID` AS `intCurrencyID`,`schshared`.`tblmasourcelisting`.`intDefaultImageID` AS `intDefaultImageID`,`schshared`.`tblmasourcelisting`.`intMASourceSellerID` AS `intMASourceSellerID`,`schshared`.`tblmasourcelisting`.`intNumberCompare` AS `intNumberCompare`,`schshared`.`tblmasourcelisting`.`intNumberContact` AS `intNumberContact`,`schshared`.`tblmasourcelisting`.`intNumberSearch` AS `intNumberSearch`,`schshared`.`tblmasourcelisting`.`intPostedByID` AS `intPostedByID`,`schshared`.`tblmasourcelisting`.`intShipFromID` AS `intShipFromID`,`schshared`.`tblmasourcelisting`.`intStatus` AS `intStatus`,`schshared`.`tblmasourcelisting`.`strContactEmail` AS `strContactEmail`,`schshared`.`tblmasourcelisting`.`strContactPhone` AS `strContactPhone`,`schshared`.`tblmasourcelisting`.`strDescription` AS `strDescription`,`schshared`.`tblmasourcelisting`.`strMake` AS `strMake`,`schshared`.`tblmasourcelisting`.`strModelNo` AS `strModelNo`,`schshared`.`tblmasourcelisting`.`strName` AS `strName`,`schshared`.`tblmasourcelisting`.`strSerialNo` AS `strSerialNo`,`schshared`.`tblmasourcelisting`.`strShipAddress` AS `strShipAddress`,`schshared`.`tblmasourcelisting`.`strShipCity` AS `strShipCity`,`schshared`.`tblmasourcelisting`.`strShipCountry` AS `strShipCountry`,`schshared`.`tblmasourcelisting`.`strShipProvince` AS `strShipProvince`,`schshared`.`tblmasourcelisting`.`strUnspcCode` AS `strUnspcCode` from `schshared`.`tblmasourcelisting` where (`schshared`.`tblmasourcelisting`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblmasourceseller`
--

/*!50001 DROP VIEW IF EXISTS `tblmasourceseller`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblmasourceseller` AS select `schshared`.`tblmasourceseller`.`id` AS `id`,`schshared`.`tblmasourceseller`.`intTenantID` AS `intTenantID`,`schshared`.`tblmasourceseller`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblmasourceseller`.`dtmDateUpdated` AS `dtmDateUpdated`,`schshared`.`tblmasourceseller`.`strSellerName` AS `strSellerName` from `schshared`.`tblmasourceseller` where (`schshared`.`tblmasourceseller`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblmasourcewarranty`
--

/*!50001 DROP VIEW IF EXISTS `tblmasourcewarranty`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblmasourcewarranty` AS select `schshared`.`tblmasourcewarranty`.`id` AS `id`,`schshared`.`tblmasourcewarranty`.`intTenantID` AS `intTenantID`,`schshared`.`tblmasourcewarranty`.`dtmDateAdded` AS `dtmDateAdded`,`schshared`.`tblmasourcewarranty`.`dtmExpiryDate` AS `dtmExpiryDate`,`schshared`.`tblmasourcewarranty`.`intMASourceListingID` AS `intMASourceListingID`,`schshared`.`tblmasourcewarranty`.`strDescription` AS `strDescription`,`schshared`.`tblmasourcewarranty`.`strMeterReadingValueLimit` AS `strMeterReadingValueLimit`,`schshared`.`tblmasourcewarranty`.`strMeterReadingValueUnit` AS `strMeterReadingValueUnit`,`schshared`.`tblmasourcewarranty`.`strUsageTermType` AS `strUsageTermType`,`schshared`.`tblmasourcewarranty`.`strWarrantyType` AS `strWarrantyType` from `schshared`.`tblmasourcewarranty` where (`schshared`.`tblmasourcewarranty`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblmessage`
--

/*!50001 DROP VIEW IF EXISTS `tblmessage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblmessage` AS select `schshared`.`tblmessage`.`id` AS `id`,`schshared`.`tblmessage`.`intTenantID` AS `intTenantID`,`schshared`.`tblmessage`.`bolOpened` AS `bolOpened`,`schshared`.`tblmessage`.`bolPopup` AS `bolPopup`,`schshared`.`tblmessage`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblmessage`.`intMessageFolderID` AS `intMessageFolderID`,`schshared`.`tblmessage`.`intRecipientID` AS `intRecipientID`,`schshared`.`tblmessage`.`intSenderID` AS `intSenderID`,`schshared`.`tblmessage`.`strContents` AS `strContents`,`schshared`.`tblmessage`.`strRecipients` AS `strRecipients`,`schshared`.`tblmessage`.`strSubject` AS `strSubject` from `schshared`.`tblmessage` where (`schshared`.`tblmessage`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblmessagefolder`
--

/*!50001 DROP VIEW IF EXISTS `tblmessagefolder`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblmessagefolder` AS select `schshared`.`tblmessagefolder`.`id` AS `id`,`schshared`.`tblmessagefolder`.`strName` AS `strName` from `schshared`.`tblmessagefolder` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblmeterreading`
--

/*!50001 DROP VIEW IF EXISTS `tblmeterreading`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblmeterreading` AS select `schshared`.`tblmeterreading`.`id` AS `id`,`schshared`.`tblmeterreading`.`intTenantID` AS `intTenantID`,`schshared`.`tblmeterreading`.`dblMeterReading` AS `dblMeterReading`,`schshared`.`tblmeterreading`.`dtmDateSubmitted` AS `dtmDateSubmitted`,`schshared`.`tblmeterreading`.`intAssetID` AS `intAssetID`,`schshared`.`tblmeterreading`.`intMeterReadingUnitsID` AS `intMeterReadingUnitsID`,`schshared`.`tblmeterreading`.`intSubmittedByUserID` AS `intSubmittedByUserID`,`schshared`.`tblmeterreading`.`intUpdated` AS `intUpdated`,`schshared`.`tblmeterreading`.`intWorkOrderID` AS `intWorkOrderID`,`schshared`.`tblmeterreading`.`strUuid` AS `strUuid` from `schshared`.`tblmeterreading` where (`schshared`.`tblmeterreading`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblmeterreadingunit`
--

/*!50001 DROP VIEW IF EXISTS `tblmeterreadingunit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblmeterreadingunit` AS select `schshared`.`tblmeterreadingunit`.`id` AS `id`,`schshared`.`tblmeterreadingunit`.`intTenantID` AS `intTenantID`,`schshared`.`tblmeterreadingunit`.`intPrecision` AS `intPrecision`,`schshared`.`tblmeterreadingunit`.`intSourceSysCode` AS `intSourceSysCode`,`schshared`.`tblmeterreadingunit`.`intUpdated` AS `intUpdated`,`schshared`.`tblmeterreadingunit`.`strName` AS `strName`,`schshared`.`tblmeterreadingunit`.`strSymbol` AS `strSymbol`,`schshared`.`tblmeterreadingunit`.`strUuid` AS `strUuid` from `schshared`.`tblmeterreadingunit` where (`schshared`.`tblmeterreadingunit`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblmilestone`
--

/*!50001 DROP VIEW IF EXISTS `tblmilestone`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblmilestone` AS select `schshared`.`tblmilestone`.`id` AS `id`,`schshared`.`tblmilestone`.`bolIsActive` AS `bolIsActive`,`schshared`.`tblmilestone`.`dblWeight` AS `dblWeight`,`schshared`.`tblmilestone`.`intPriority` AS `intPriority`,`schshared`.`tblmilestone`.`strExternalHelpUrl` AS `strExternalHelpUrl`,`schshared`.`tblmilestone`.`strName` AS `strName`,`schshared`.`tblmilestone`.`strVideoHelpUrl` AS `strVideoHelpUrl` from `schshared`.`tblmilestone` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblmilestonesresetthreshold`
--

/*!50001 DROP VIEW IF EXISTS `tblmilestonesresetthreshold`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblmilestonesresetthreshold` AS select `schshared`.`tblmilestonesresetthreshold`.`id` AS `id`,`schshared`.`tblmilestonesresetthreshold`.`dblThreshold` AS `dblThreshold`,`schshared`.`tblmilestonesresetthreshold`.`intDelayInDays` AS `intDelayInDays` from `schshared`.`tblmilestonesresetthreshold` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblmisccost`
--

/*!50001 DROP VIEW IF EXISTS `tblmisccost`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblmisccost` AS select `schshared`.`tblmisccost`.`id` AS `id`,`schshared`.`tblmisccost`.`intTenantID` AS `intTenantID`,`schshared`.`tblmisccost`.`dblActualTotalCost` AS `dblActualTotalCost`,`schshared`.`tblmisccost`.`dblActualUnitCost` AS `dblActualUnitCost`,`schshared`.`tblmisccost`.`dblEstimatedTotalCost` AS `dblEstimatedTotalCost`,`schshared`.`tblmisccost`.`dblEstimatedUnitCost` AS `dblEstimatedUnitCost`,`schshared`.`tblmisccost`.`intMiscCostTypeID` AS `intMiscCostTypeID`,`schshared`.`tblmisccost`.`intUpdated` AS `intUpdated`,`schshared`.`tblmisccost`.`intWorkOrderID` AS `intWorkOrderID`,`schshared`.`tblmisccost`.`qtyEstQuantity` AS `qtyEstQuantity`,`schshared`.`tblmisccost`.`qtyQuantity` AS `qtyQuantity`,`schshared`.`tblmisccost`.`strDescription` AS `strDescription`,`schshared`.`tblmisccost`.`strUuid` AS `strUuid` from `schshared`.`tblmisccost` where (`schshared`.`tblmisccost`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblmisccosttype`
--

/*!50001 DROP VIEW IF EXISTS `tblmisccosttype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblmisccosttype` AS select `schshared`.`tblmisccosttype`.`id` AS `id`,`schshared`.`tblmisccosttype`.`intTenantID` AS `intTenantID`,`schshared`.`tblmisccosttype`.`intUpdated` AS `intUpdated`,`schshared`.`tblmisccosttype`.`strName` AS `strName`,`schshared`.`tblmisccosttype`.`strUuid` AS `strUuid` from `schshared`.`tblmisccosttype` where (`schshared`.`tblmisccosttype`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblmove`
--

/*!50001 DROP VIEW IF EXISTS `tblmove`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblmove` AS select `schshared`.`tblmove`.`id` AS `id`,`schshared`.`tblmove`.`intTenantID` AS `intTenantID`,`schshared`.`tblmove`.`dtmDateConfirmed` AS `dtmDateConfirmed`,`schshared`.`tblmove`.`dtmDateRejected` AS `dtmDateRejected`,`schshared`.`tblmove`.`dtmDateRequested` AS `dtmDateRequested`,`schshared`.`tblmove`.`dtmMoveDate` AS `dtmMoveDate`,`schshared`.`tblmove`.`intAssetDestinationID` AS `intAssetDestinationID`,`schshared`.`tblmove`.`intBusinessDestinationID` AS `intBusinessDestinationID`,`schshared`.`tblmove`.`intConfirmedByID` AS `intConfirmedByID`,`schshared`.`tblmove`.`intDestinationTypeID` AS `intDestinationTypeID`,`schshared`.`tblmove`.`intFromSiteID` AS `intFromSiteID`,`schshared`.`tblmove`.`intMoveStatusID` AS `intMoveStatusID`,`schshared`.`tblmove`.`intMovedByID` AS `intMovedByID`,`schshared`.`tblmove`.`intProjectDestinationID` AS `intProjectDestinationID`,`schshared`.`tblmove`.`intRejectedByID` AS `intRejectedByID`,`schshared`.`tblmove`.`intRequestedByID` AS `intRequestedByID`,`schshared`.`tblmove`.`intSiteID` AS `intSiteID`,`schshared`.`tblmove`.`intUserDestinationID` AS `intUserDestinationID`,`schshared`.`tblmove`.`intWorkOrderDestinationID` AS `intWorkOrderDestinationID`,`schshared`.`tblmove`.`strAisle` AS `strAisle`,`schshared`.`tblmove`.`strBin` AS `strBin`,`schshared`.`tblmove`.`strNotes` AS `strNotes`,`schshared`.`tblmove`.`strRow` AS `strRow` from `schshared`.`tblmove` where (`schshared`.`tblmove`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblmoveasset`
--

/*!50001 DROP VIEW IF EXISTS `tblmoveasset`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblmoveasset` AS select `schshared`.`tblmoveasset`.`id` AS `id`,`schshared`.`tblmoveasset`.`intTenantID` AS `intTenantID`,`schshared`.`tblmoveasset`.`bolAway` AS `bolAway`,`schshared`.`tblmoveasset`.`bolExclude` AS `bolExclude`,`schshared`.`tblmoveasset`.`bolPending` AS `bolPending`,`schshared`.`tblmoveasset`.`bolSetOffline` AS `bolSetOffline`,`schshared`.`tblmoveasset`.`bolSetOnline` AS `bolSetOnline`,`schshared`.`tblmoveasset`.`dtmDateReturned` AS `dtmDateReturned`,`schshared`.`tblmoveasset`.`dtmReturnDate` AS `dtmReturnDate`,`schshared`.`tblmoveasset`.`intAssetID` AS `intAssetID`,`schshared`.`tblmoveasset`.`intMoveID` AS `intMoveID`,`schshared`.`tblmoveasset`.`intMovedFromID` AS `intMovedFromID`,`schshared`.`tblmoveasset`.`intReasonOfflineID` AS `intReasonOfflineID`,`schshared`.`tblmoveasset`.`intReasonOnlineID` AS `intReasonOnlineID`,`schshared`.`tblmoveasset`.`intSiteID` AS `intSiteID`,`schshared`.`tblmoveasset`.`strFromAisle` AS `strFromAisle`,`schshared`.`tblmoveasset`.`strFromBin` AS `strFromBin`,`schshared`.`tblmoveasset`.`strFromRow` AS `strFromRow`,`schshared`.`tblmoveasset`.`strNotes` AS `strNotes` from `schshared`.`tblmoveasset` where (`schshared`.`tblmoveasset`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblmoveback`
--

/*!50001 DROP VIEW IF EXISTS `tblmoveback`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblmoveback` AS select `schshared`.`tblmoveback`.`id` AS `id`,`schshared`.`tblmoveback`.`intTenantID` AS `intTenantID`,`schshared`.`tblmoveback`.`dtmDateCanceled` AS `dtmDateCanceled`,`schshared`.`tblmoveback`.`dtmDateConfirmed` AS `dtmDateConfirmed`,`schshared`.`tblmoveback`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblmoveback`.`dtmDateRequested` AS `dtmDateRequested`,`schshared`.`tblmoveback`.`dtmMoveBackDate` AS `dtmMoveBackDate`,`schshared`.`tblmoveback`.`intConfirmedByID` AS `intConfirmedByID`,`schshared`.`tblmoveback`.`intFromSiteID` AS `intFromSiteID`,`schshared`.`tblmoveback`.`intMoveStatusID` AS `intMoveStatusID`,`schshared`.`tblmoveback`.`intMovedBackByUserID` AS `intMovedBackByUserID`,`schshared`.`tblmoveback`.`intRejectedByID` AS `intRejectedByID`,`schshared`.`tblmoveback`.`intRequestedByID` AS `intRequestedByID`,`schshared`.`tblmoveback`.`intSiteID` AS `intSiteID`,`schshared`.`tblmoveback`.`strNotes` AS `strNotes` from `schshared`.`tblmoveback` where (`schshared`.`tblmoveback`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblmovebackasset`
--

/*!50001 DROP VIEW IF EXISTS `tblmovebackasset`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblmovebackasset` AS select `schshared`.`tblmovebackasset`.`id` AS `id`,`schshared`.`tblmovebackasset`.`intTenantID` AS `intTenantID`,`schshared`.`tblmovebackasset`.`bolExclude` AS `bolExclude`,`schshared`.`tblmovebackasset`.`bolPending` AS `bolPending`,`schshared`.`tblmovebackasset`.`bolSetBackOffline` AS `bolSetBackOffline`,`schshared`.`tblmovebackasset`.`bolSetBackOnline` AS `bolSetBackOnline`,`schshared`.`tblmovebackasset`.`intAssetID` AS `intAssetID`,`schshared`.`tblmovebackasset`.`intMoveBackID` AS `intMoveBackID`,`schshared`.`tblmovebackasset`.`intOriginalMoveAssetID` AS `intOriginalMoveAssetID`,`schshared`.`tblmovebackasset`.`intReasonOfflineID` AS `intReasonOfflineID`,`schshared`.`tblmovebackasset`.`intReasonOnlineID` AS `intReasonOnlineID`,`schshared`.`tblmovebackasset`.`intSiteID` AS `intSiteID`,`schshared`.`tblmovebackasset`.`strNotes` AS `strNotes`,`schshared`.`tblmovebackasset`.`strToAisle` AS `strToAisle`,`schshared`.`tblmovebackasset`.`strToBin` AS `strToBin`,`schshared`.`tblmovebackasset`.`strToRow` AS `strToRow` from `schshared`.`tblmovebackasset` where (`schshared`.`tblmovebackasset`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblmovesitemanager`
--

/*!50001 DROP VIEW IF EXISTS `tblmovesitemanager`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblmovesitemanager` AS select `schshared`.`tblmovesitemanager`.`id` AS `id`,`schshared`.`tblmovesitemanager`.`intTenantID` AS `intTenantID`,`schshared`.`tblmovesitemanager`.`intSiteID` AS `intSiteID`,`schshared`.`tblmovesitemanager`.`intUserID` AS `intUserID` from `schshared`.`tblmovesitemanager` where (`schshared`.`tblmovesitemanager`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblmovestatus`
--

/*!50001 DROP VIEW IF EXISTS `tblmovestatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblmovestatus` AS select `schshared`.`tblmovestatus`.`id` AS `id`,`schshared`.`tblmovestatus`.`intTenantID` AS `intTenantID`,`schshared`.`tblmovestatus`.`intSysCode` AS `intSysCode`,`schshared`.`tblmovestatus`.`strDefaultLabel` AS `strDefaultLabel`,`schshared`.`tblmovestatus`.`strName` AS `strName` from `schshared`.`tblmovestatus` where (`schshared`.`tblmovestatus`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblnetworksettings`
--

/*!50001 DROP VIEW IF EXISTS `tblnetworksettings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblnetworksettings` AS select `schshared`.`tblnetworksettings`.`id` AS `id`,`schshared`.`tblnetworksettings`.`intTenantID` AS `intTenantID`,`schshared`.`tblnetworksettings`.`intSysCode` AS `intSysCode`,`schshared`.`tblnetworksettings`.`bolAllowHttp` AS `bolAllowHttp`,`schshared`.`tblnetworksettings`.`bolAllowHttps` AS `bolAllowHttps`,`schshared`.`tblnetworksettings`.`bolUseProxyForOutbound` AS `bolUseProxyForOutbound`,`schshared`.`tblnetworksettings`.`intDatabasePort` AS `intDatabasePort`,`schshared`.`tblnetworksettings`.`intExternalHttpPort` AS `intExternalHttpPort`,`schshared`.`tblnetworksettings`.`intExternalHttpsPort` AS `intExternalHttpsPort`,`schshared`.`tblnetworksettings`.`intInternalHttpPort` AS `intInternalHttpPort`,`schshared`.`tblnetworksettings`.`intInternalHttpsPort` AS `intInternalHttpsPort`,`schshared`.`tblnetworksettings`.`intStopPort` AS `intStopPort`,`schshared`.`tblnetworksettings`.`strExternalServerIPOrDomain` AS `strExternalServerIPOrDomain`,`schshared`.`tblnetworksettings`.`strInternalServerIP` AS `strInternalServerIP`,`schshared`.`tblnetworksettings`.`strProxyPassword` AS `strProxyPassword`,`schshared`.`tblnetworksettings`.`strProxyPort` AS `strProxyPort`,`schshared`.`tblnetworksettings`.`strProxyServer` AS `strProxyServer`,`schshared`.`tblnetworksettings`.`strProxyUsername` AS `strProxyUsername`,`schshared`.`tblnetworksettings`.`strSSLCertificateFile` AS `strSSLCertificateFile` from `schshared`.`tblnetworksettings` where (`schshared`.`tblnetworksettings`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblorder`
--

/*!50001 DROP VIEW IF EXISTS `tblorder`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblorder` AS select `schshared`.`tblorder`.`id` AS `id`,`schshared`.`tblorder`.`intTenantID` AS `intTenantID`,`schshared`.`tblorder`.`bolExcludeTax` AS `bolExcludeTax`,`schshared`.`tblorder`.`bolScheduledPaymentAttempted` AS `bolScheduledPaymentAttempted`,`schshared`.`tblorder`.`bolSuppressDelinquencyAutomation` AS `bolSuppressDelinquencyAutomation`,`schshared`.`tblorder`.`dblProrateRate` AS `dblProrateRate`,`schshared`.`tblorder`.`dblSubtotalAmount` AS `dblSubtotalAmount`,`schshared`.`tblorder`.`dblTaxAmount` AS `dblTaxAmount`,`schshared`.`tblorder`.`dblTotalAmount` AS `dblTotalAmount`,`schshared`.`tblorder`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblorder`.`dtmDateDue` AS `dtmDateDue`,`schshared`.`tblorder`.`dtmDatePaid` AS `dtmDatePaid`,`schshared`.`tblorder`.`dtmDateRefunded` AS `dtmDateRefunded`,`schshared`.`tblorder`.`dtmDateSentOrder` AS `dtmDateSentOrder`,`schshared`.`tblorder`.`dtmDateSentReceipt` AS `dtmDateSentReceipt`,`schshared`.`tblorder`.`dtmDateUpdated` AS `dtmDateUpdated`,`schshared`.`tblorder`.`intIssuedByTenantID` AS `intIssuedByTenantID`,`schshared`.`tblorder`.`intPaymentProfileID` AS `intPaymentProfileID`,`schshared`.`tblorder`.`intQuoteID` AS `intQuoteID`,`schshared`.`tblorder`.`intRecurringTypeID` AS `intRecurringTypeID`,`schshared`.`tblorder`.`intSubscriptionPlanID` AS `intSubscriptionPlanID`,`schshared`.`tblorder`.`strOrderKey` AS `strOrderKey`,`schshared`.`tblorder`.`strPoNumber` AS `strPoNumber` from `schshared`.`tblorder` where (`schshared`.`tblorder`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblorderrefund`
--

/*!50001 DROP VIEW IF EXISTS `tblorderrefund`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblorderrefund` AS select `schshared`.`tblorderrefund`.`id` AS `id`,`schshared`.`tblorderrefund`.`intTenantID` AS `intTenantID`,`schshared`.`tblorderrefund`.`dblRefundAmount` AS `dblRefundAmount`,`schshared`.`tblorderrefund`.`dtmTimestamp` AS `dtmTimestamp`,`schshared`.`tblorderrefund`.`intCreatedByUserID` AS `intCreatedByUserID`,`schshared`.`tblorderrefund`.`intOrderID` AS `intOrderID`,`schshared`.`tblorderrefund`.`strDescription` AS `strDescription`,`schshared`.`tblorderrefund`.`strKey` AS `strKey` from `schshared`.`tblorderrefund` where (`schshared`.`tblorderrefund`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblordersystemproperty`
--

/*!50001 DROP VIEW IF EXISTS `tblordersystemproperty`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblordersystemproperty` AS select `schshared`.`tblordersystemproperty`.`id` AS `id`,`schshared`.`tblordersystemproperty`.`intTenantID` AS `intTenantID`,`schshared`.`tblordersystemproperty`.`dtmLastUpdated` AS `dtmLastUpdated`,`schshared`.`tblordersystemproperty`.`intOrderID` AS `intOrderID`,`schshared`.`tblordersystemproperty`.`intSystemID` AS `intSystemID`,`schshared`.`tblordersystemproperty`.`strPropertyName` AS `strPropertyName`,`schshared`.`tblordersystemproperty`.`strPropertyValue` AS `strPropertyValue` from `schshared`.`tblordersystemproperty` where (`schshared`.`tblordersystemproperty`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpartner`
--

/*!50001 DROP VIEW IF EXISTS `tblpartner`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpartner` AS select `schshared`.`tblpartner`.`id` AS `id`,`schshared`.`tblpartner`.`intTenantID` AS `intTenantID`,`schshared`.`tblpartner`.`intSysCode` AS `intSysCode`,`schshared`.`tblpartner`.`bolActive` AS `bolActive`,`schshared`.`tblpartner`.`bolOptHelpCentre` AS `bolOptHelpCentre`,`schshared`.`tblpartner`.`bolOptWhiteLabel` AS `bolOptWhiteLabel`,`schshared`.`tblpartner`.`bolOptWhiteLabelEmailTemplate` AS `bolOptWhiteLabelEmailTemplate`,`schshared`.`tblpartner`.`bolOptWhiteLabelSmtp` AS `bolOptWhiteLabelSmtp`,`schshared`.`tblpartner`.`bolOptWhiteLabelUrl` AS `bolOptWhiteLabelUrl`,`schshared`.`tblpartner`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblpartner`.`intAffiliateCampaignID` AS `intAffiliateCampaignID`,`schshared`.`tblpartner`.`intAffiliateID` AS `intAffiliateID`,`schshared`.`tblpartner`.`intAffiliateProgramID` AS `intAffiliateProgramID`,`schshared`.`tblpartner`.`intCreatedByUserID` AS `intCreatedByUserID`,`schshared`.`tblpartner`.`intFileContentsID` AS `intFileContentsID`,`schshared`.`tblpartner`.`intFileLoginScreenBrandContentsID` AS `intFileLoginScreenBrandContentsID`,`schshared`.`tblpartner`.`strAffiliateReferenceCode` AS `strAffiliateReferenceCode`,`schshared`.`tblpartner`.`strBaseUrl` AS `strBaseUrl`,`schshared`.`tblpartner`.`strHelpCentreUrl` AS `strHelpCentreUrl`,`schshared`.`tblpartner`.`strMasterEmailTemplate` AS `strMasterEmailTemplate`,`schshared`.`tblpartner`.`strSmtpAddress` AS `strSmtpAddress`,`schshared`.`tblpartner`.`strSmtpPassword` AS `strSmtpPassword`,`schshared`.`tblpartner`.`strSmtpSentByEmailAddress` AS `strSmtpSentByEmailAddress`,`schshared`.`tblpartner`.`strSmtpUsername` AS `strSmtpUsername` from `schshared`.`tblpartner` where (`schshared`.`tblpartner`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpartsselection`
--

/*!50001 DROP VIEW IF EXISTS `tblpartsselection`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpartsselection` AS select `schshared`.`tblpartsselection`.`id` AS `id`,`schshared`.`tblpartsselection`.`intTenantID` AS `intTenantID`,`schshared`.`tblpartsselection`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblpartsselection`.`intPartId` AS `intPartId` from `schshared`.`tblpartsselection` where (`schshared`.`tblpartsselection`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpaymentmethod`
--

/*!50001 DROP VIEW IF EXISTS `tblpaymentmethod`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpaymentmethod` AS select `schshared`.`tblpaymentmethod`.`id` AS `id`,`schshared`.`tblpaymentmethod`.`strName` AS `strName`,`schshared`.`tblpaymentmethod`.`strSalesforcePaymentMethodKey` AS `strSalesforcePaymentMethodKey` from `schshared`.`tblpaymentmethod` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpaymentprofile`
--

/*!50001 DROP VIEW IF EXISTS `tblpaymentprofile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpaymentprofile` AS select `schshared`.`tblpaymentprofile`.`id` AS `id`,`schshared`.`tblpaymentprofile`.`intTenantID` AS `intTenantID`,`schshared`.`tblpaymentprofile`.`bolDefault` AS `bolDefault`,`schshared`.`tblpaymentprofile`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblpaymentprofile`.`intAccountAddressID` AS `intAccountAddressID`,`schshared`.`tblpaymentprofile`.`intCreatedByUserID` AS `intCreatedByUserID`,`schshared`.`tblpaymentprofile`.`intPaymentMethodID` AS `intPaymentMethodID` from `schshared`.`tblpaymentprofile` where (`schshared`.`tblpaymentprofile`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpermission`
--

/*!50001 DROP VIEW IF EXISTS `tblpermission`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpermission` AS select `schshared`.`tblpermission`.`id` AS `id`,`schshared`.`tblpermission`.`intApplicationID` AS `intApplicationID`,`schshared`.`tblpermission`.`strName` AS `strName`,`schshared`.`tblpermission`.`strObjectName` AS `strObjectName`,`schshared`.`tblpermission`.`strObjectType` AS `strObjectType` from `schshared`.`tblpermission` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblperrecordvalue`
--

/*!50001 DROP VIEW IF EXISTS `tblperrecordvalue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblperrecordvalue` AS select `schshared`.`tblperrecordvalue`.`id` AS `id`,`schshared`.`tblperrecordvalue`.`intTenantID` AS `intTenantID`,`schshared`.`tblperrecordvalue`.`bolBooleanValue` AS `bolBooleanValue`,`schshared`.`tblperrecordvalue`.`datDateValue` AS `datDateValue`,`schshared`.`tblperrecordvalue`.`dblDoubleValue` AS `dblDoubleValue`,`schshared`.`tblperrecordvalue`.`dtmDateTimeValue` AS `dtmDateTimeValue`,`schshared`.`tblperrecordvalue`.`intIntegerValue` AS `intIntegerValue`,`schshared`.`tblperrecordvalue`.`intLongValue` AS `intLongValue`,`schshared`.`tblperrecordvalue`.`intRecordID` AS `intRecordID`,`schshared`.`tblperrecordvalue`.`intTableResourceID` AS `intTableResourceID`,`schshared`.`tblperrecordvalue`.`qtyQtyValue` AS `qtyQtyValue`,`schshared`.`tblperrecordvalue`.`strLongStringValue` AS `strLongStringValue`,`schshared`.`tblperrecordvalue`.`strName` AS `strName`,`schshared`.`tblperrecordvalue`.`strStringValue` AS `strStringValue` from `schshared`.`tblperrecordvalue` where (`schshared`.`tblperrecordvalue`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblplanfeature`
--

/*!50001 DROP VIEW IF EXISTS `tblplanfeature`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblplanfeature` AS select `schshared`.`tblplanfeature`.`id` AS `id`,`schshared`.`tblplanfeature`.`intPlanFeatureCategoryID` AS `intPlanFeatureCategoryID`,`schshared`.`tblplanfeature`.`intShowOrder` AS `intShowOrder`,`schshared`.`tblplanfeature`.`strName` AS `strName` from `schshared`.`tblplanfeature` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblplanfeaturecategory`
--

/*!50001 DROP VIEW IF EXISTS `tblplanfeaturecategory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblplanfeaturecategory` AS select `schshared`.`tblplanfeaturecategory`.`id` AS `id`,`schshared`.`tblplanfeaturecategory`.`intShowOrder` AS `intShowOrder`,`schshared`.`tblplanfeaturecategory`.`strName` AS `strName` from `schshared`.`tblplanfeaturecategory` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblplanfeatureproducttier`
--

/*!50001 DROP VIEW IF EXISTS `tblplanfeatureproducttier`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblplanfeatureproducttier` AS select `schshared`.`tblplanfeatureproducttier`.`id` AS `id`,`schshared`.`tblplanfeatureproducttier`.`intPlanFeatureID` AS `intPlanFeatureID`,`schshared`.`tblplanfeatureproducttier`.`intProductTierID` AS `intProductTierID`,`schshared`.`tblplanfeatureproducttier`.`strAdditionalInformation` AS `strAdditionalInformation` from `schshared`.`tblplanfeatureproducttier` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblplatformeventtype`
--

/*!50001 DROP VIEW IF EXISTS `tblplatformeventtype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblplatformeventtype` AS select `schshared`.`tblplatformeventtype`.`id` AS `id`,`schshared`.`tblplatformeventtype`.`strName` AS `strName` from `schshared`.`tblplatformeventtype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpricingtier`
--

/*!50001 DROP VIEW IF EXISTS `tblpricingtier`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpricingtier` AS select `schshared`.`tblpricingtier`.`id` AS `id`,`schshared`.`tblpricingtier`.`bolAvailable` AS `bolAvailable`,`schshared`.`tblpricingtier`.`dblDefaultDiscount` AS `dblDefaultDiscount`,`schshared`.`tblpricingtier`.`dblDefaultMonthlyPrice` AS `dblDefaultMonthlyPrice`,`schshared`.`tblpricingtier`.`dblDefaultPrice` AS `dblDefaultPrice`,`schshared`.`tblpricingtier`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblpricingtier`.`dtmDateUpdated` AS `dtmDateUpdated`,`schshared`.`tblpricingtier`.`intDefaultQuantity` AS `intDefaultQuantity`,`schshared`.`tblpricingtier`.`intLastUpdatedByUserID` AS `intLastUpdatedByUserID`,`schshared`.`tblpricingtier`.`intMaximumQuantity` AS `intMaximumQuantity`,`schshared`.`tblpricingtier`.`intMinimumQuantity` AS `intMinimumQuantity`,`schshared`.`tblpricingtier`.`intProductID` AS `intProductID`,`schshared`.`tblpricingtier`.`intProductOfferingID` AS `intProductOfferingID`,`schshared`.`tblpricingtier`.`intProductTierID` AS `intProductTierID`,`schshared`.`tblpricingtier`.`strEcomDescription` AS `strEcomDescription`,`schshared`.`tblpricingtier`.`strIncludes` AS `strIncludes`,`schshared`.`tblpricingtier`.`strKey` AS `strKey`,`schshared`.`tblpricingtier`.`strSalesforceProductKey` AS `strSalesforceProductKey` from `schshared`.`tblpricingtier` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpricingtierfeature`
--

/*!50001 DROP VIEW IF EXISTS `tblpricingtierfeature`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpricingtierfeature` AS select `schshared`.`tblpricingtierfeature`.`id` AS `id`,`schshared`.`tblpricingtierfeature`.`bolSeatMultiplier` AS `bolSeatMultiplier`,`schshared`.`tblpricingtierfeature`.`dblOverageUnitCost` AS `dblOverageUnitCost`,`schshared`.`tblpricingtierfeature`.`intFeatureID` AS `intFeatureID`,`schshared`.`tblpricingtierfeature`.`intFeatureValuePeriodTypeID` AS `intFeatureValuePeriodTypeID`,`schshared`.`tblpricingtierfeature`.`intFeatureValueTypeID` AS `intFeatureValueTypeID`,`schshared`.`tblpricingtierfeature`.`intOverageControlTypeID` AS `intOverageControlTypeID`,`schshared`.`tblpricingtierfeature`.`intOverageUnitCostThresholdTypeID` AS `intOverageUnitCostThresholdTypeID`,`schshared`.`tblpricingtierfeature`.`intPricingTierID` AS `intPricingTierID`,`schshared`.`tblpricingtierfeature`.`qtyOverageUnitCostThreshold` AS `qtyOverageUnitCostThreshold`,`schshared`.`tblpricingtierfeature`.`qtyValue` AS `qtyValue` from `schshared`.`tblpricingtierfeature` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpriority`
--

/*!50001 DROP VIEW IF EXISTS `tblpriority`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpriority` AS select `schshared`.`tblpriority`.`id` AS `id`,`schshared`.`tblpriority`.`intTenantID` AS `intTenantID`,`schshared`.`tblpriority`.`intSysCode` AS `intSysCode`,`schshared`.`tblpriority`.`intOrder` AS `intOrder`,`schshared`.`tblpriority`.`intUpdated` AS `intUpdated`,`schshared`.`tblpriority`.`strName` AS `strName`,`schshared`.`tblpriority`.`strUuid` AS `strUuid` from `schshared`.`tblpriority` where (`schshared`.`tblpriority`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblproduct`
--

/*!50001 DROP VIEW IF EXISTS `tblproduct`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblproduct` AS select `schshared`.`tblproduct`.`id` AS `id`,`schshared`.`tblproduct`.`bolAvailable` AS `bolAvailable`,`schshared`.`tblproduct`.`bolTimeTrackingEnabled` AS `bolTimeTrackingEnabled`,`schshared`.`tblproduct`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblproduct`.`dtmDateUpdated` AS `dtmDateUpdated`,`schshared`.`tblproduct`.`intBillingTypeID` AS `intBillingTypeID`,`schshared`.`tblproduct`.`intLastUpdatedByUserID` AS `intLastUpdatedByUserID`,`schshared`.`tblproduct`.`intProductParentID` AS `intProductParentID`,`schshared`.`tblproduct`.`intProductUnitID` AS `intProductUnitID`,`schshared`.`tblproduct`.`strName` AS `strName`,`schshared`.`tblproduct`.`strUuid` AS `strUuid` from `schshared`.`tblproduct` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblproductdiscountcontrol`
--

/*!50001 DROP VIEW IF EXISTS `tblproductdiscountcontrol`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblproductdiscountcontrol` AS select `schshared`.`tblproductdiscountcontrol`.`id` AS `id`,`schshared`.`tblproductdiscountcontrol`.`dblMaxDiscount` AS `dblMaxDiscount`,`schshared`.`tblproductdiscountcontrol`.`dtmDateUpdated` AS `dtmDateUpdated`,`schshared`.`tblproductdiscountcontrol`.`intLastUpdatedByUserID` AS `intLastUpdatedByUserID`,`schshared`.`tblproductdiscountcontrol`.`intProductID` AS `intProductID`,`schshared`.`tblproductdiscountcontrol`.`intUserID` AS `intUserID` from `schshared`.`tblproductdiscountcontrol` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblproductoffering`
--

/*!50001 DROP VIEW IF EXISTS `tblproductoffering`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblproductoffering` AS select `schshared`.`tblproductoffering`.`id` AS `id`,`schshared`.`tblproductoffering`.`bolAvailable` AS `bolAvailable`,`schshared`.`tblproductoffering`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblproductoffering`.`dtmDateUpdated` AS `dtmDateUpdated`,`schshared`.`tblproductoffering`.`strName` AS `strName` from `schshared`.`tblproductoffering` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblproductofferingfeature`
--

/*!50001 DROP VIEW IF EXISTS `tblproductofferingfeature`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblproductofferingfeature` AS select `schshared`.`tblproductofferingfeature`.`id` AS `id`,`schshared`.`tblproductofferingfeature`.`intFeatureID` AS `intFeatureID`,`schshared`.`tblproductofferingfeature`.`intProductOfferingID` AS `intProductOfferingID` from `schshared`.`tblproductofferingfeature` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblproducttier`
--

/*!50001 DROP VIEW IF EXISTS `tblproducttier`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblproducttier` AS select `schshared`.`tblproducttier`.`id` AS `id`,`schshared`.`tblproducttier`.`strName` AS `strName` from `schshared`.`tblproducttier` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblproducttimetracking`
--

/*!50001 DROP VIEW IF EXISTS `tblproducttimetracking`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblproducttimetracking` AS select `schshared`.`tblproducttimetracking`.`id` AS `id`,`schshared`.`tblproducttimetracking`.`intTenantID` AS `intTenantID`,`schshared`.`tblproducttimetracking`.`dtmDateCompleted` AS `dtmDateCompleted`,`schshared`.`tblproducttimetracking`.`dtmDateScheduled` AS `dtmDateScheduled`,`schshared`.`tblproducttimetracking`.`intOrderLineItemID` AS `intOrderLineItemID`,`schshared`.`tblproducttimetracking`.`intTrainerUserID` AS `intTrainerUserID`,`schshared`.`tblproducttimetracking`.`qtyHoursConsumed` AS `qtyHoursConsumed`,`schshared`.`tblproducttimetracking`.`strNotes` AS `strNotes` from `schshared`.`tblproducttimetracking` where (`schshared`.`tblproducttimetracking`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblproductunit`
--

/*!50001 DROP VIEW IF EXISTS `tblproductunit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblproductunit` AS select `schshared`.`tblproductunit`.`id` AS `id`,`schshared`.`tblproductunit`.`strName` AS `strName` from `schshared`.`tblproductunit` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblproject`
--

/*!50001 DROP VIEW IF EXISTS `tblproject`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblproject` AS select `schshared`.`tblproject`.`id` AS `id`,`schshared`.`tblproject`.`intTenantID` AS `intTenantID`,`schshared`.`tblproject`.`dtmActualEndDate` AS `dtmActualEndDate`,`schshared`.`tblproject`.`dtmActualStartDate` AS `dtmActualStartDate`,`schshared`.`tblproject`.`dtmProjectedEndDate` AS `dtmProjectedEndDate`,`schshared`.`tblproject`.`dtmProjectedStartDate` AS `dtmProjectedStartDate`,`schshared`.`tblproject`.`intParentProjectID` AS `intParentProjectID`,`schshared`.`tblproject`.`intSiteID` AS `intSiteID`,`schshared`.`tblproject`.`strDescription` AS `strDescription`,`schshared`.`tblproject`.`strName` AS `strName`,`schshared`.`tblproject`.`strNotes` AS `strNotes`,`schshared`.`tblproject`.`strSysCustomColumnValues` AS `strSysCustomColumnValues`,`schshared`.`tblproject`.`strUuid` AS `strUuid` from `schshared`.`tblproject` where (`schshared`.`tblproject`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblprojectuser`
--

/*!50001 DROP VIEW IF EXISTS `tblprojectuser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblprojectuser` AS select `schshared`.`tblprojectuser`.`id` AS `id`,`schshared`.`tblprojectuser`.`intTenantID` AS `intTenantID`,`schshared`.`tblprojectuser`.`dtmDateAdded` AS `dtmDateAdded`,`schshared`.`tblprojectuser`.`intProjectID` AS `intProjectID`,`schshared`.`tblprojectuser`.`intUserID` AS `intUserID` from `schshared`.`tblprojectuser` where (`schshared`.`tblprojectuser`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpromotionaloffer`
--

/*!50001 DROP VIEW IF EXISTS `tblpromotionaloffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpromotionaloffer` AS select `schshared`.`tblpromotionaloffer`.`id` AS `id`,`schshared`.`tblpromotionaloffer`.`bolApplyToCmmsOnly` AS `bolApplyToCmmsOnly`,`schshared`.`tblpromotionaloffer`.`bolAvailable` AS `bolAvailable`,`schshared`.`tblpromotionaloffer`.`bolSingleUse` AS `bolSingleUse`,`schshared`.`tblpromotionaloffer`.`dblDiscount` AS `dblDiscount`,`schshared`.`tblpromotionaloffer`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblpromotionaloffer`.`dtmDateExpiry` AS `dtmDateExpiry`,`schshared`.`tblpromotionaloffer`.`dtmDateUpdated` AS `dtmDateUpdated`,`schshared`.`tblpromotionaloffer`.`intDurationMonths` AS `intDurationMonths`,`schshared`.`tblpromotionaloffer`.`intLastUpdatedByUserID` AS `intLastUpdatedByUserID`,`schshared`.`tblpromotionaloffer`.`intLimit` AS `intLimit`,`schshared`.`tblpromotionaloffer`.`intPromotionType` AS `intPromotionType`,`schshared`.`tblpromotionaloffer`.`intUsed` AS `intUsed`,`schshared`.`tblpromotionaloffer`.`strDescription` AS `strDescription`,`schshared`.`tblpromotionaloffer`.`strDiscountCode` AS `strDiscountCode`,`schshared`.`tblpromotionaloffer`.`strMessageOnSignup` AS `strMessageOnSignup`,`schshared`.`tblpromotionaloffer`.`strOfferTitle` AS `strOfferTitle` from `schshared`.`tblpromotionaloffer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpromotionalofferdetail`
--

/*!50001 DROP VIEW IF EXISTS `tblpromotionalofferdetail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpromotionalofferdetail` AS select `schshared`.`tblpromotionalofferdetail`.`id` AS `id`,`schshared`.`tblpromotionalofferdetail`.`intAddProductID` AS `intAddProductID`,`schshared`.`tblpromotionalofferdetail`.`intNewSeats` AS `intNewSeats`,`schshared`.`tblpromotionalofferdetail`.`intPromotionalOfferID` AS `intPromotionalOfferID`,`schshared`.`tblpromotionalofferdetail`.`intTypeCode` AS `intTypeCode`,`schshared`.`tblpromotionalofferdetail`.`intUpgradeProductTierID` AS `intUpgradeProductTierID`,`schshared`.`tblpromotionalofferdetail`.`intUpgradeRecurringTypeID` AS `intUpgradeRecurringTypeID` from `schshared`.`tblpromotionalofferdetail` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpromotionalofferpricingtier`
--

/*!50001 DROP VIEW IF EXISTS `tblpromotionalofferpricingtier`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpromotionalofferpricingtier` AS select `schshared`.`tblpromotionalofferpricingtier`.`id` AS `id`,`schshared`.`tblpromotionalofferpricingtier`.`intPricingTierID` AS `intPricingTierID`,`schshared`.`tblpromotionalofferpricingtier`.`intPromotionalOfferID` AS `intPromotionalOfferID` from `schshared`.`tblpromotionalofferpricingtier` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpurchaseorder`
--

/*!50001 DROP VIEW IF EXISTS `tblpurchaseorder`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpurchaseorder` AS select `schshared`.`tblpurchaseorder`.`id` AS `id`,`schshared`.`tblpurchaseorder`.`intTenantID` AS `intTenantID`,`schshared`.`tblpurchaseorder`.`dblFreight` AS `dblFreight`,`schshared`.`tblpurchaseorder`.`dblSubtotal` AS `dblSubtotal`,`schshared`.`tblpurchaseorder`.`dblTax1` AS `dblTax1`,`schshared`.`tblpurchaseorder`.`dblTax2` AS `dblTax2`,`schshared`.`tblpurchaseorder`.`dblTotal` AS `dblTotal`,`schshared`.`tblpurchaseorder`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblpurchaseorder`.`dtmDateExpectedDelivery` AS `dtmDateExpectedDelivery`,`schshared`.`tblpurchaseorder`.`dtmDateLastUpdated` AS `dtmDateLastUpdated`,`schshared`.`tblpurchaseorder`.`dtmDateReceived` AS `dtmDateReceived`,`schshared`.`tblpurchaseorder`.`dtmDateRequiredBy` AS `dtmDateRequiredBy`,`schshared`.`tblpurchaseorder`.`dtmDateSubmitted` AS `dtmDateSubmitted`,`schshared`.`tblpurchaseorder`.`intAccountID` AS `intAccountID`,`schshared`.`tblpurchaseorder`.`intAssetID` AS `intAssetID`,`schshared`.`tblpurchaseorder`.`intBillToCountryID` AS `intBillToCountryID`,`schshared`.`tblpurchaseorder`.`intBillToID` AS `intBillToID`,`schshared`.`tblpurchaseorder`.`intBillingTermID` AS `intBillingTermID`,`schshared`.`tblpurchaseorder`.`intChargeDepartmentID` AS `intChargeDepartmentID`,`schshared`.`tblpurchaseorder`.`intCode` AS `intCode`,`schshared`.`tblpurchaseorder`.`intCreatedByUserID` AS `intCreatedByUserID`,`schshared`.`tblpurchaseorder`.`intLastUpdatedUserID` AS `intLastUpdatedUserID`,`schshared`.`tblpurchaseorder`.`intLocationID` AS `intLocationID`,`schshared`.`tblpurchaseorder`.`intPurchaseCurrencyID` AS `intPurchaseCurrencyID`,`schshared`.`tblpurchaseorder`.`intPurchaseOrderStatusID` AS `intPurchaseOrderStatusID`,`schshared`.`tblpurchaseorder`.`intSendToSupplierMethod` AS `intSendToSupplierMethod`,`schshared`.`tblpurchaseorder`.`intShipToCountryID` AS `intShipToCountryID`,`schshared`.`tblpurchaseorder`.`intShipToID` AS `intShipToID`,`schshared`.`tblpurchaseorder`.`intSiteID` AS `intSiteID`,`schshared`.`tblpurchaseorder`.`intSupplierCountryID` AS `intSupplierCountryID`,`schshared`.`tblpurchaseorder`.`intSupplierID` AS `intSupplierID`,`schshared`.`tblpurchaseorder`.`intUpdated` AS `intUpdated`,`schshared`.`tblpurchaseorder`.`intVendorID` AS `intVendorID`,`schshared`.`tblpurchaseorder`.`intWorkOrderID` AS `intWorkOrderID`,`schshared`.`tblpurchaseorder`.`strBillToAddress` AS `strBillToAddress`,`schshared`.`tblpurchaseorder`.`strBillToCity` AS `strBillToCity`,`schshared`.`tblpurchaseorder`.`strBillToPostalCode` AS `strBillToPostalCode`,`schshared`.`tblpurchaseorder`.`strBillToProvince` AS `strBillToProvince`,`schshared`.`tblpurchaseorder`.`strPurchaseOrderReference` AS `strPurchaseOrderReference`,`schshared`.`tblpurchaseorder`.`strShipToAddress` AS `strShipToAddress`,`schshared`.`tblpurchaseorder`.`strShipToCity` AS `strShipToCity`,`schshared`.`tblpurchaseorder`.`strShipToPostalCode` AS `strShipToPostalCode`,`schshared`.`tblpurchaseorder`.`strShipToProvince` AS `strShipToProvince`,`schshared`.`tblpurchaseorder`.`strSupplierAddress` AS `strSupplierAddress`,`schshared`.`tblpurchaseorder`.`strSupplierCity` AS `strSupplierCity`,`schshared`.`tblpurchaseorder`.`strSupplierPostalCode` AS `strSupplierPostalCode`,`schshared`.`tblpurchaseorder`.`strSupplierProvince` AS `strSupplierProvince`,`schshared`.`tblpurchaseorder`.`strTransactionID` AS `strTransactionID` from `schshared`.`tblpurchaseorder` where (`schshared`.`tblpurchaseorder`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpurchaseorderadditionalcost`
--

/*!50001 DROP VIEW IF EXISTS `tblpurchaseorderadditionalcost`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpurchaseorderadditionalcost` AS select `schshared`.`tblpurchaseorderadditionalcost`.`id` AS `id`,`schshared`.`tblpurchaseorderadditionalcost`.`intTenantID` AS `intTenantID`,`schshared`.`tblpurchaseorderadditionalcost`.`bolOverridePoLineItemTax` AS `bolOverridePoLineItemTax`,`schshared`.`tblpurchaseorderadditionalcost`.`dblPrice` AS `dblPrice`,`schshared`.`tblpurchaseorderadditionalcost`.`dblTaxRate` AS `dblTaxRate`,`schshared`.`tblpurchaseorderadditionalcost`.`intBusinessID` AS `intBusinessID`,`schshared`.`tblpurchaseorderadditionalcost`.`intPurchaseOrderAdditionalCostTypeID` AS `intPurchaseOrderAdditionalCostTypeID`,`schshared`.`tblpurchaseorderadditionalcost`.`intPurchaseOrderID` AS `intPurchaseOrderID`,`schshared`.`tblpurchaseorderadditionalcost`.`intShippingTypeID` AS `intShippingTypeID`,`schshared`.`tblpurchaseorderadditionalcost`.`strDescription` AS `strDescription` from `schshared`.`tblpurchaseorderadditionalcost` where (`schshared`.`tblpurchaseorderadditionalcost`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpurchaseorderadditionalcosttype`
--

/*!50001 DROP VIEW IF EXISTS `tblpurchaseorderadditionalcosttype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpurchaseorderadditionalcosttype` AS select `schshared`.`tblpurchaseorderadditionalcosttype`.`id` AS `id`,`schshared`.`tblpurchaseorderadditionalcosttype`.`intTenantID` AS `intTenantID`,`schshared`.`tblpurchaseorderadditionalcosttype`.`intSysCode` AS `intSysCode`,`schshared`.`tblpurchaseorderadditionalcosttype`.`bolAlwaysShowOnNewPo` AS `bolAlwaysShowOnNewPo`,`schshared`.`tblpurchaseorderadditionalcosttype`.`intControlID` AS `intControlID`,`schshared`.`tblpurchaseorderadditionalcosttype`.`strName` AS `strName` from `schshared`.`tblpurchaseorderadditionalcosttype` where (`schshared`.`tblpurchaseorderadditionalcosttype`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpurchaseorderlineitem`
--

/*!50001 DROP VIEW IF EXISTS `tblpurchaseorderlineitem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpurchaseorderlineitem` AS select `schshared`.`tblpurchaseorderlineitem`.`id` AS `id`,`schshared`.`tblpurchaseorderlineitem`.`intTenantID` AS `intTenantID`,`schshared`.`tblpurchaseorderlineitem`.`bolAddedDirectlyToPurchaseOrder` AS `bolAddedDirectlyToPurchaseOrder`,`schshared`.`tblpurchaseorderlineitem`.`bolProductionEquipmentDownWhileOnOrder` AS `bolProductionEquipmentDownWhileOnOrder`,`schshared`.`tblpurchaseorderlineitem`.`bolSupplierConfirmed` AS `bolSupplierConfirmed`,`schshared`.`tblpurchaseorderlineitem`.`dblRemoteOrgUnitPrice` AS `dblRemoteOrgUnitPrice`,`schshared`.`tblpurchaseorderlineitem`.`dblTaxRate` AS `dblTaxRate`,`schshared`.`tblpurchaseorderlineitem`.`dblTotalPrice` AS `dblTotalPrice`,`schshared`.`tblpurchaseorderlineitem`.`dblUnitPrice` AS `dblUnitPrice`,`schshared`.`tblpurchaseorderlineitem`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblpurchaseorderlineitem`.`dtmRequiredByDate` AS `dtmRequiredByDate`,`schshared`.`tblpurchaseorderlineitem`.`intAccountID` AS `intAccountID`,`schshared`.`tblpurchaseorderlineitem`.`intAssetID` AS `intAssetID`,`schshared`.`tblpurchaseorderlineitem`.`intChargeDepartmentID` AS `intChargeDepartmentID`,`schshared`.`tblpurchaseorderlineitem`.`intParentPurchaseOrderLineItemID` AS `intParentPurchaseOrderLineItemID`,`schshared`.`tblpurchaseorderlineitem`.`intPurchaseOrderID` AS `intPurchaseOrderID`,`schshared`.`tblpurchaseorderlineitem`.`intRequestedByUserID` AS `intRequestedByUserID`,`schshared`.`tblpurchaseorderlineitem`.`intShipToLocationID` AS `intShipToLocationID`,`schshared`.`tblpurchaseorderlineitem`.`intSiteID` AS `intSiteID`,`schshared`.`tblpurchaseorderlineitem`.`intSourceAssetID` AS `intSourceAssetID`,`schshared`.`tblpurchaseorderlineitem`.`intSourceWorkOrderID` AS `intSourceWorkOrderID`,`schshared`.`tblpurchaseorderlineitem`.`intStockHistoryID` AS `intStockHistoryID`,`schshared`.`tblpurchaseorderlineitem`.`intStockID` AS `intStockID`,`schshared`.`tblpurchaseorderlineitem`.`intSupplierID` AS `intSupplierID`,`schshared`.`tblpurchaseorderlineitem`.`intUpdated` AS `intUpdated`,`schshared`.`tblpurchaseorderlineitem`.`qtyOnOrder` AS `qtyOnOrder`,`schshared`.`tblpurchaseorderlineitem`.`qtyRecieved` AS `qtyRecieved`,`schshared`.`tblpurchaseorderlineitem`.`strBusinessAssetNumber` AS `strBusinessAssetNumber`,`schshared`.`tblpurchaseorderlineitem`.`strDescription` AS `strDescription`,`schshared`.`tblpurchaseorderlineitem`.`strJSON` AS `strJSON` from `schshared`.`tblpurchaseorderlineitem` where (`schshared`.`tblpurchaseorderlineitem`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpurchaseorderlineitemrfq`
--

/*!50001 DROP VIEW IF EXISTS `tblpurchaseorderlineitemrfq`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpurchaseorderlineitemrfq` AS select `schshared`.`tblpurchaseorderlineitemrfq`.`id` AS `id`,`schshared`.`tblpurchaseorderlineitemrfq`.`intTenantID` AS `intTenantID`,`schshared`.`tblpurchaseorderlineitemrfq`.`intPurchaseOrderLineItemID` AS `intPurchaseOrderLineItemID`,`schshared`.`tblpurchaseorderlineitemrfq`.`intRFQID` AS `intRFQID` from `schshared`.`tblpurchaseorderlineitemrfq` where (`schshared`.`tblpurchaseorderlineitemrfq`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpurchaseorderlog`
--

/*!50001 DROP VIEW IF EXISTS `tblpurchaseorderlog`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpurchaseorderlog` AS select `schshared`.`tblpurchaseorderlog`.`id` AS `id`,`schshared`.`tblpurchaseorderlog`.`intTenantID` AS `intTenantID`,`schshared`.`tblpurchaseorderlog`.`dtmDateLogged` AS `dtmDateLogged`,`schshared`.`tblpurchaseorderlog`.`intFromStatusId` AS `intFromStatusId`,`schshared`.`tblpurchaseorderlog`.`intPurchaseOrderID` AS `intPurchaseOrderID`,`schshared`.`tblpurchaseorderlog`.`intToStatusId` AS `intToStatusId`,`schshared`.`tblpurchaseorderlog`.`intUserID` AS `intUserID` from `schshared`.`tblpurchaseorderlog` where (`schshared`.`tblpurchaseorderlog`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpurchaseorderstatus`
--

/*!50001 DROP VIEW IF EXISTS `tblpurchaseorderstatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpurchaseorderstatus` AS select `schshared`.`tblpurchaseorderstatus`.`id` AS `id`,`schshared`.`tblpurchaseorderstatus`.`intTenantID` AS `intTenantID`,`schshared`.`tblpurchaseorderstatus`.`intSysCode` AS `intSysCode`,`schshared`.`tblpurchaseorderstatus`.`intControlID` AS `intControlID`,`schshared`.`tblpurchaseorderstatus`.`intUpdated` AS `intUpdated`,`schshared`.`tblpurchaseorderstatus`.`strDefaultLabel` AS `strDefaultLabel`,`schshared`.`tblpurchaseorderstatus`.`strName` AS `strName` from `schshared`.`tblpurchaseorderstatus` where (`schshared`.`tblpurchaseorderstatus`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpurchaseorderstatustransition`
--

/*!50001 DROP VIEW IF EXISTS `tblpurchaseorderstatustransition`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpurchaseorderstatustransition` AS select `schshared`.`tblpurchaseorderstatustransition`.`id` AS `id`,`schshared`.`tblpurchaseorderstatustransition`.`intTenantID` AS `intTenantID`,`schshared`.`tblpurchaseorderstatustransition`.`intSysCode` AS `intSysCode`,`schshared`.`tblpurchaseorderstatustransition`.`bolRequireComment` AS `bolRequireComment`,`schshared`.`tblpurchaseorderstatustransition`.`bolSendNotification` AS `bolSendNotification`,`schshared`.`tblpurchaseorderstatustransition`.`intFromStatusID` AS `intFromStatusID`,`schshared`.`tblpurchaseorderstatustransition`.`intToStatusID` AS `intToStatusID`,`schshared`.`tblpurchaseorderstatustransition`.`strDefaultLabel` AS `strDefaultLabel`,`schshared`.`tblpurchaseorderstatustransition`.`strName` AS `strName`,`schshared`.`tblpurchaseorderstatustransition`.`strPropertiesFileKey` AS `strPropertiesFileKey` from `schshared`.`tblpurchaseorderstatustransition` where (`schshared`.`tblpurchaseorderstatustransition`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpurchaseorderstatustransitionpermission`
--

/*!50001 DROP VIEW IF EXISTS `tblpurchaseorderstatustransitionpermission`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpurchaseorderstatustransitionpermission` AS select `schshared`.`tblpurchaseorderstatustransitionpermission`.`id` AS `id`,`schshared`.`tblpurchaseorderstatustransitionpermission`.`intTenantID` AS `intTenantID`,`schshared`.`tblpurchaseorderstatustransitionpermission`.`intPurchaseOrderStatusTransitionId` AS `intPurchaseOrderStatusTransitionId`,`schshared`.`tblpurchaseorderstatustransitionpermission`.`strName` AS `strName` from `schshared`.`tblpurchaseorderstatustransitionpermission` where (`schshared`.`tblpurchaseorderstatustransitionpermission`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblpurchaseorderuser`
--

/*!50001 DROP VIEW IF EXISTS `tblpurchaseorderuser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblpurchaseorderuser` AS select `schshared`.`tblpurchaseorderuser`.`id` AS `id`,`schshared`.`tblpurchaseorderuser`.`intTenantID` AS `intTenantID`,`schshared`.`tblpurchaseorderuser`.`intPurchaseOrderID` AS `intPurchaseOrderID`,`schshared`.`tblpurchaseorderuser`.`intUserID` AS `intUserID` from `schshared`.`tblpurchaseorderuser` where (`schshared`.`tblpurchaseorderuser`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblquote`
--

/*!50001 DROP VIEW IF EXISTS `tblquote`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblquote` AS select `schshared`.`tblquote`.`id` AS `id`,`schshared`.`tblquote`.`intTenantID` AS `intTenantID`,`schshared`.`tblquote`.`bolCreatedAsInvite` AS `bolCreatedAsInvite`,`schshared`.`tblquote`.`bolExcludeTax` AS `bolExcludeTax`,`schshared`.`tblquote`.`bolIncludeInForecast` AS `bolIncludeInForecast`,`schshared`.`tblquote`.`bolLockQuoteForUserAccept` AS `bolLockQuoteForUserAccept`,`schshared`.`tblquote`.`dblClosingPercent` AS `dblClosingPercent`,`schshared`.`tblquote`.`dtmDateClosed` AS `dtmDateClosed`,`schshared`.`tblquote`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblquote`.`dtmDateSent` AS `dtmDateSent`,`schshared`.`tblquote`.`dtmDateUpdated` AS `dtmDateUpdated`,`schshared`.`tblquote`.`dtmForecastedCloseDate` AS `dtmForecastedCloseDate`,`schshared`.`tblquote`.`intAcceptedByUserID` AS `intAcceptedByUserID`,`schshared`.`tblquote`.`intAccountQuoteStatusID` AS `intAccountQuoteStatusID`,`schshared`.`tblquote`.`intExpiryDays` AS `intExpiryDays`,`schshared`.`tblquote`.`intForecastedRecurringTypeId` AS `intForecastedRecurringTypeId`,`schshared`.`tblquote`.`intIssuedByTenantID` AS `intIssuedByTenantID`,`schshared`.`tblquote`.`intPreparedByUserID` AS `intPreparedByUserID`,`schshared`.`tblquote`.`intPromotionalOfferID` AS `intPromotionalOfferID`,`schshared`.`tblquote`.`intRecurringTypeID` AS `intRecurringTypeID`,`schshared`.`tblquote`.`strPoNumber` AS `strPoNumber` from `schshared`.`tblquote` where (`schshared`.`tblquote`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblquotestatus`
--

/*!50001 DROP VIEW IF EXISTS `tblquotestatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblquotestatus` AS select `schshared`.`tblquotestatus`.`id` AS `id`,`schshared`.`tblquotestatus`.`strName` AS `strName` from `schshared`.`tblquotestatus` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblrcaaction`
--

/*!50001 DROP VIEW IF EXISTS `tblrcaaction`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblrcaaction` AS select `schshared`.`tblrcaaction`.`id` AS `id`,`schshared`.`tblrcaaction`.`intTenantID` AS `intTenantID`,`schshared`.`tblrcaaction`.`bolActive` AS `bolActive`,`schshared`.`tblrcaaction`.`intUpdated` AS `intUpdated`,`schshared`.`tblrcaaction`.`strCode` AS `strCode`,`schshared`.`tblrcaaction`.`strDescription` AS `strDescription` from `schshared`.`tblrcaaction` where (`schshared`.`tblrcaaction`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblrcacause`
--

/*!50001 DROP VIEW IF EXISTS `tblrcacause`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblrcacause` AS select `schshared`.`tblrcacause`.`id` AS `id`,`schshared`.`tblrcacause`.`intTenantID` AS `intTenantID`,`schshared`.`tblrcacause`.`bolActive` AS `bolActive`,`schshared`.`tblrcacause`.`intUpdated` AS `intUpdated`,`schshared`.`tblrcacause`.`strCode` AS `strCode`,`schshared`.`tblrcacause`.`strDescription` AS `strDescription` from `schshared`.`tblrcacause` where (`schshared`.`tblrcacause`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblrcagrouping`
--

/*!50001 DROP VIEW IF EXISTS `tblrcagrouping`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblrcagrouping` AS select `schshared`.`tblrcagrouping`.`id` AS `id`,`schshared`.`tblrcagrouping`.`intTenantID` AS `intTenantID`,`schshared`.`tblrcagrouping`.`intAssetCategoryID` AS `intAssetCategoryID`,`schshared`.`tblrcagrouping`.`intAssetID` AS `intAssetID`,`schshared`.`tblrcagrouping`.`intRCAProblemID` AS `intRCAProblemID`,`schshared`.`tblrcagrouping`.`intUpdated` AS `intUpdated` from `schshared`.`tblrcagrouping` where (`schshared`.`tblrcagrouping`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblrcagroupingaction`
--

/*!50001 DROP VIEW IF EXISTS `tblrcagroupingaction`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblrcagroupingaction` AS select `schshared`.`tblrcagroupingaction`.`id` AS `id`,`schshared`.`tblrcagroupingaction`.`intTenantID` AS `intTenantID`,`schshared`.`tblrcagroupingaction`.`intRCAActionID` AS `intRCAActionID`,`schshared`.`tblrcagroupingaction`.`intRCAGroupingID` AS `intRCAGroupingID`,`schshared`.`tblrcagroupingaction`.`intUpdated` AS `intUpdated` from `schshared`.`tblrcagroupingaction` where (`schshared`.`tblrcagroupingaction`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblrcagroupingcause`
--

/*!50001 DROP VIEW IF EXISTS `tblrcagroupingcause`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblrcagroupingcause` AS select `schshared`.`tblrcagroupingcause`.`id` AS `id`,`schshared`.`tblrcagroupingcause`.`intTenantID` AS `intTenantID`,`schshared`.`tblrcagroupingcause`.`intRCACauseID` AS `intRCACauseID`,`schshared`.`tblrcagroupingcause`.`intRCAGroupingID` AS `intRCAGroupingID`,`schshared`.`tblrcagroupingcause`.`intUpdated` AS `intUpdated` from `schshared`.`tblrcagroupingcause` where (`schshared`.`tblrcagroupingcause`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblrcaproblem`
--

/*!50001 DROP VIEW IF EXISTS `tblrcaproblem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblrcaproblem` AS select `schshared`.`tblrcaproblem`.`id` AS `id`,`schshared`.`tblrcaproblem`.`intTenantID` AS `intTenantID`,`schshared`.`tblrcaproblem`.`bolActive` AS `bolActive`,`schshared`.`tblrcaproblem`.`intUpdated` AS `intUpdated`,`schshared`.`tblrcaproblem`.`strCode` AS `strCode`,`schshared`.`tblrcaproblem`.`strDescription` AS `strDescription` from `schshared`.`tblrcaproblem` where (`schshared`.`tblrcaproblem`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblreasontosetassetoffline`
--

/*!50001 DROP VIEW IF EXISTS `tblreasontosetassetoffline`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblreasontosetassetoffline` AS select `schshared`.`tblreasontosetassetoffline`.`id` AS `id`,`schshared`.`tblreasontosetassetoffline`.`intTenantID` AS `intTenantID`,`schshared`.`tblreasontosetassetoffline`.`intSourceSysCode` AS `intSourceSysCode`,`schshared`.`tblreasontosetassetoffline`.`intUpdated` AS `intUpdated`,`schshared`.`tblreasontosetassetoffline`.`strDescription` AS `strDescription`,`schshared`.`tblreasontosetassetoffline`.`strName` AS `strName`,`schshared`.`tblreasontosetassetoffline`.`strUuid` AS `strUuid` from `schshared`.`tblreasontosetassetoffline` where (`schshared`.`tblreasontosetassetoffline`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblreasontosetassetonline`
--

/*!50001 DROP VIEW IF EXISTS `tblreasontosetassetonline`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblreasontosetassetonline` AS select `schshared`.`tblreasontosetassetonline`.`id` AS `id`,`schshared`.`tblreasontosetassetonline`.`intTenantID` AS `intTenantID`,`schshared`.`tblreasontosetassetonline`.`intSourceSysCode` AS `intSourceSysCode`,`schshared`.`tblreasontosetassetonline`.`intUpdated` AS `intUpdated`,`schshared`.`tblreasontosetassetonline`.`strDescription` AS `strDescription`,`schshared`.`tblreasontosetassetonline`.`strName` AS `strName`,`schshared`.`tblreasontosetassetonline`.`strUuid` AS `strUuid` from `schshared`.`tblreasontosetassetonline` where (`schshared`.`tblreasontosetassetonline`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblreceipt`
--

/*!50001 DROP VIEW IF EXISTS `tblreceipt`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblreceipt` AS select `schshared`.`tblreceipt`.`id` AS `id`,`schshared`.`tblreceipt`.`intTenantID` AS `intTenantID`,`schshared`.`tblreceipt`.`dtmDateOrdered` AS `dtmDateOrdered`,`schshared`.`tblreceipt`.`dtmDateReceived` AS `dtmDateReceived`,`schshared`.`tblreceipt`.`intCode` AS `intCode`,`schshared`.`tblreceipt`.`intPurchaseCurrencyID` AS `intPurchaseCurrencyID`,`schshared`.`tblreceipt`.`intPurchaseOrderID` AS `intPurchaseOrderID`,`schshared`.`tblreceipt`.`intReceiptStatusID` AS `intReceiptStatusID`,`schshared`.`tblreceipt`.`intReceivedByUserID` AS `intReceivedByUserID`,`schshared`.`tblreceipt`.`intSiteID` AS `intSiteID`,`schshared`.`tblreceipt`.`intSupplierID` AS `intSupplierID`,`schshared`.`tblreceipt`.`intUpdated` AS `intUpdated`,`schshared`.`tblreceipt`.`strPackingSlip` AS `strPackingSlip` from `schshared`.`tblreceipt` where (`schshared`.`tblreceipt`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblreceiptlineitem`
--

/*!50001 DROP VIEW IF EXISTS `tblreceiptlineitem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblreceiptlineitem` AS select `schshared`.`tblreceiptlineitem`.`id` AS `id`,`schshared`.`tblreceiptlineitem`.`intTenantID` AS `intTenantID`,`schshared`.`tblreceiptlineitem`.`dblPurchasePricePerUnit` AS `dblPurchasePricePerUnit`,`schshared`.`tblreceiptlineitem`.`dblPurchasePriceTotal` AS `dblPurchasePriceTotal`,`schshared`.`tblreceiptlineitem`.`dtmDateExpiryOfInventoryItems` AS `dtmDateExpiryOfInventoryItems`,`schshared`.`tblreceiptlineitem`.`intAssetID` AS `intAssetID`,`schshared`.`tblreceiptlineitem`.`intParentReceiptLineItemID` AS `intParentReceiptLineItemID`,`schshared`.`tblreceiptlineitem`.`intPurchaseOrderLineItemID` AS `intPurchaseOrderLineItemID`,`schshared`.`tblreceiptlineitem`.`intReceiptID` AS `intReceiptID`,`schshared`.`tblreceiptlineitem`.`intReceiveToFacilityID` AS `intReceiveToFacilityID`,`schshared`.`tblreceiptlineitem`.`intReceiveToStockID` AS `intReceiveToStockID`,`schshared`.`tblreceiptlineitem`.`intStockID` AS `intStockID`,`schshared`.`tblreceiptlineitem`.`intUpdated` AS `intUpdated`,`schshared`.`tblreceiptlineitem`.`intV2ID` AS `intV2ID`,`schshared`.`tblreceiptlineitem`.`qtyQuantityOrdered` AS `qtyQuantityOrdered`,`schshared`.`tblreceiptlineitem`.`qtyQuantityReceived` AS `qtyQuantityReceived`,`schshared`.`tblreceiptlineitem`.`strDescription` AS `strDescription`,`schshared`.`tblreceiptlineitem`.`strImportedFromTable` AS `strImportedFromTable`,`schshared`.`tblreceiptlineitem`.`strUuid` AS `strUuid` from `schshared`.`tblreceiptlineitem` where (`schshared`.`tblreceiptlineitem`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblreceiptstatus`
--

/*!50001 DROP VIEW IF EXISTS `tblreceiptstatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblreceiptstatus` AS select `schshared`.`tblreceiptstatus`.`id` AS `id`,`schshared`.`tblreceiptstatus`.`intTenantID` AS `intTenantID`,`schshared`.`tblreceiptstatus`.`intSysCode` AS `intSysCode`,`schshared`.`tblreceiptstatus`.`intControlID` AS `intControlID`,`schshared`.`tblreceiptstatus`.`intUpdated` AS `intUpdated`,`schshared`.`tblreceiptstatus`.`strDefaultLabel` AS `strDefaultLabel`,`schshared`.`tblreceiptstatus`.`strName` AS `strName` from `schshared`.`tblreceiptstatus` where (`schshared`.`tblreceiptstatus`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblreceiptstatustransition`
--

/*!50001 DROP VIEW IF EXISTS `tblreceiptstatustransition`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblreceiptstatustransition` AS select `schshared`.`tblreceiptstatustransition`.`id` AS `id`,`schshared`.`tblreceiptstatustransition`.`intTenantID` AS `intTenantID`,`schshared`.`tblreceiptstatustransition`.`intFromStatusID` AS `intFromStatusID`,`schshared`.`tblreceiptstatustransition`.`intToStatusID` AS `intToStatusID`,`schshared`.`tblreceiptstatustransition`.`strDefaultLabel` AS `strDefaultLabel`,`schshared`.`tblreceiptstatustransition`.`strName` AS `strName`,`schshared`.`tblreceiptstatustransition`.`strPropertiesFileKey` AS `strPropertiesFileKey` from `schshared`.`tblreceiptstatustransition` where (`schshared`.`tblreceiptstatustransition`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblreconciliationcontrol`
--

/*!50001 DROP VIEW IF EXISTS `tblreconciliationcontrol`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblreconciliationcontrol` AS select `schshared`.`tblreconciliationcontrol`.`id` AS `id`,`schshared`.`tblreconciliationcontrol`.`intTenantID` AS `intTenantID`,`schshared`.`tblreconciliationcontrol`.`bolIsCreate` AS `bolIsCreate`,`schshared`.`tblreconciliationcontrol`.`bolIsDelete` AS `bolIsDelete`,`schshared`.`tblreconciliationcontrol`.`bolIsRead` AS `bolIsRead`,`schshared`.`tblreconciliationcontrol`.`bolIsUpdate` AS `bolIsUpdate`,`schshared`.`tblreconciliationcontrol`.`intIntegrationID` AS `intIntegrationID`,`schshared`.`tblreconciliationcontrol`.`strBaseTable` AS `strBaseTable`,`schshared`.`tblreconciliationcontrol`.`strOwnedByEntity` AS `strOwnedByEntity` from `schshared`.`tblreconciliationcontrol` where (`schshared`.`tblreconciliationcontrol`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblrecurringtype`
--

/*!50001 DROP VIEW IF EXISTS `tblrecurringtype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblrecurringtype` AS select `schshared`.`tblrecurringtype`.`id` AS `id`,`schshared`.`tblrecurringtype`.`intDaysInAdvanceCreateOrder` AS `intDaysInAdvanceCreateOrder`,`schshared`.`tblrecurringtype`.`intDaysInAdvanceSendOrder` AS `intDaysInAdvanceSendOrder`,`schshared`.`tblrecurringtype`.`intRecurringPeriod` AS `intRecurringPeriod`,`schshared`.`tblrecurringtype`.`strKey` AS `strKey`,`schshared`.`tblrecurringtype`.`strName` AS `strName` from `schshared`.`tblrecurringtype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblregionuser`
--

/*!50001 DROP VIEW IF EXISTS `tblregionuser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblregionuser` AS select `schshared`.`tblregionuser`.`id` AS `id`,`schshared`.`tblregionuser`.`intTenantID` AS `intTenantID`,`schshared`.`tblregionuser`.`intRegionID` AS `intRegionID`,`schshared`.`tblregionuser`.`intUserID` AS `intUserID` from `schshared`.`tblregionuser` where (`schshared`.`tblregionuser`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblregionusergroup`
--

/*!50001 DROP VIEW IF EXISTS `tblregionusergroup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblregionusergroup` AS select `schshared`.`tblregionusergroup`.`id` AS `id`,`schshared`.`tblregionusergroup`.`intTenantID` AS `intTenantID`,`schshared`.`tblregionusergroup`.`intGroupID` AS `intGroupID`,`schshared`.`tblregionusergroup`.`intRegionUserID` AS `intRegionUserID` from `schshared`.`tblregionusergroup` where (`schshared`.`tblregionusergroup`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblreportcategory`
--

/*!50001 DROP VIEW IF EXISTS `tblreportcategory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblreportcategory` AS select `schshared`.`tblreportcategory`.`id` AS `id`,`schshared`.`tblreportcategory`.`intSysCode` AS `intSysCode`,`schshared`.`tblreportcategory`.`strName` AS `strName` from `schshared`.`tblreportcategory` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblreportpreset`
--

/*!50001 DROP VIEW IF EXISTS `tblreportpreset`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblreportpreset` AS select `schshared`.`tblreportpreset`.`id` AS `id`,`schshared`.`tblreportpreset`.`intTenantID` AS `intTenantID`,`schshared`.`tblreportpreset`.`intReportTemplateID` AS `intReportTemplateID`,`schshared`.`tblreportpreset`.`strDescription` AS `strDescription`,`schshared`.`tblreportpreset`.`strName` AS `strName` from `schshared`.`tblreportpreset` where (`schshared`.`tblreportpreset`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblreportpresetparameter`
--

/*!50001 DROP VIEW IF EXISTS `tblreportpresetparameter`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblreportpresetparameter` AS select `schshared`.`tblreportpresetparameter`.`id` AS `id`,`schshared`.`tblreportpresetparameter`.`intTenantID` AS `intTenantID`,`schshared`.`tblreportpresetparameter`.`intSysCode` AS `intSysCode`,`schshared`.`tblreportpresetparameter`.`intParamValueType` AS `intParamValueType`,`schshared`.`tblreportpresetparameter`.`intReportPresetID` AS `intReportPresetID`,`schshared`.`tblreportpresetparameter`.`strParamName` AS `strParamName`,`schshared`.`tblreportpresetparameter`.`strParamValue` AS `strParamValue` from `schshared`.`tblreportpresetparameter` where (`schshared`.`tblreportpresetparameter`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblreportstoresolved`
--

/*!50001 DROP VIEW IF EXISTS `tblreportstoresolved`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblreportstoresolved` AS select `schshared`.`tblreportstoresolved`.`id` AS `id`,`schshared`.`tblreportstoresolved`.`intTenantID` AS `intTenantID`,`schshared`.`tblreportstoresolved`.`intChildID` AS `intChildID`,`schshared`.`tblreportstoresolved`.`intParentID` AS `intParentID` from `schshared`.`tblreportstoresolved` where (`schshared`.`tblreportstoresolved`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblreporttemplate`
--

/*!50001 DROP VIEW IF EXISTS `tblreporttemplate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblreporttemplate` AS select `schshared`.`tblreporttemplate`.`id` AS `id`,`schshared`.`tblreporttemplate`.`bolAvailable` AS `bolAvailable`,`schshared`.`tblreporttemplate`.`bolDoNotUseWithEJP` AS `bolDoNotUseWithEJP`,`schshared`.`tblreporttemplate`.`bolScheduled` AS `bolScheduled`,`schshared`.`tblreporttemplate`.`intFileContentsID` AS `intFileContentsID`,`schshared`.`tblreporttemplate`.`intMawebAddOnID` AS `intMawebAddOnID`,`schshared`.`tblreporttemplate`.`intOwnerTenantID` AS `intOwnerTenantID`,`schshared`.`tblreporttemplate`.`intRenderReportAs` AS `intRenderReportAs`,`schshared`.`tblreporttemplate`.`intReportCategoryID` AS `intReportCategoryID`,`schshared`.`tblreporttemplate`.`intReportTypeID` AS `intReportTypeID`,`schshared`.`tblreporttemplate`.`strClassification` AS `strClassification`,`schshared`.`tblreporttemplate`.`strDefinition` AS `strDefinition`,`schshared`.`tblreporttemplate`.`strDescription` AS `strDescription`,`schshared`.`tblreporttemplate`.`strInstructions` AS `strInstructions`,`schshared`.`tblreporttemplate`.`strName` AS `strName`,`schshared`.`tblreporttemplate`.`strReportAsJson` AS `strReportAsJson` from `schshared`.`tblreporttemplate` where ((`schshared`.`tblreporttemplate`.`intOwnerTenantID` is null) or (`schshared`.`tblreporttemplate`.`intOwnerTenantID` = `ma_get_current_tenant`())) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblreporttype`
--

/*!50001 DROP VIEW IF EXISTS `tblreporttype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblreporttype` AS select `schshared`.`tblreporttype`.`id` AS `id`,`schshared`.`tblreporttype`.`intOrder` AS `intOrder`,`schshared`.`tblreporttype`.`strDescription` AS `strDescription`,`schshared`.`tblreporttype`.`strName` AS `strName`,`schshared`.`tblreporttype`.`strProviderClassName` AS `strProviderClassName` from `schshared`.`tblreporttype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblresetpassword`
--

/*!50001 DROP VIEW IF EXISTS `tblresetpassword`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblresetpassword` AS select `schshared`.`tblresetpassword`.`id` AS `id`,`schshared`.`tblresetpassword`.`intTenantID` AS `intTenantID`,`schshared`.`tblresetpassword`.`dtmTokenCreated` AS `dtmTokenCreated`,`schshared`.`tblresetpassword`.`dtmTokenUsed` AS `dtmTokenUsed`,`schshared`.`tblresetpassword`.`intUserID` AS `intUserID`,`schshared`.`tblresetpassword`.`strToken` AS `strToken` from `schshared`.`tblresetpassword` where (`schshared`.`tblresetpassword`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblresourceconsumertype`
--

/*!50001 DROP VIEW IF EXISTS `tblresourceconsumertype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblresourceconsumertype` AS select `schshared`.`tblresourceconsumertype`.`id` AS `id`,`schshared`.`tblresourceconsumertype`.`strName` AS `strName` from `schshared`.`tblresourceconsumertype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblresourcenamespace`
--

/*!50001 DROP VIEW IF EXISTS `tblresourcenamespace`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblresourcenamespace` AS select `schshared`.`tblresourcenamespace`.`id` AS `id`,`schshared`.`tblresourcenamespace`.`strName` AS `strName` from `schshared`.`tblresourcenamespace` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblresourceservice`
--

/*!50001 DROP VIEW IF EXISTS `tblresourceservice`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblresourceservice` AS select `schshared`.`tblresourceservice`.`id` AS `id`,`schshared`.`tblresourceservice`.`strName` AS `strName` from `schshared`.`tblresourceservice` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblresourcetype`
--

/*!50001 DROP VIEW IF EXISTS `tblresourcetype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblresourcetype` AS select `schshared`.`tblresourcetype`.`id` AS `id`,`schshared`.`tblresourcetype`.`strName` AS `strName` from `schshared`.`tblresourcetype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblrfq`
--

/*!50001 DROP VIEW IF EXISTS `tblrfq`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblrfq` AS select `schshared`.`tblrfq`.`id` AS `id`,`schshared`.`tblrfq`.`intTenantID` AS `intTenantID`,`schshared`.`tblrfq`.`dtmDateExpectedDelivery` AS `dtmDateExpectedDelivery`,`schshared`.`tblrfq`.`dtmDateRequiredResponse` AS `dtmDateRequiredResponse`,`schshared`.`tblrfq`.`dtmDateSent` AS `dtmDateSent`,`schshared`.`tblrfq`.`intBillToCountryID` AS `intBillToCountryID`,`schshared`.`tblrfq`.`intBillToID` AS `intBillToID`,`schshared`.`tblrfq`.`intBusinessID` AS `intBusinessID`,`schshared`.`tblrfq`.`intCode` AS `intCode`,`schshared`.`tblrfq`.`intCreatedByUserID` AS `intCreatedByUserID`,`schshared`.`tblrfq`.`intRFQStatusID` AS `intRFQStatusID`,`schshared`.`tblrfq`.`intShipToCountryID` AS `intShipToCountryID`,`schshared`.`tblrfq`.`intShipToID` AS `intShipToID`,`schshared`.`tblrfq`.`intSiteID` AS `intSiteID`,`schshared`.`tblrfq`.`intSupplierCountryID` AS `intSupplierCountryID`,`schshared`.`tblrfq`.`intSupplierID` AS `intSupplierID`,`schshared`.`tblrfq`.`strBillToAddress` AS `strBillToAddress`,`schshared`.`tblrfq`.`strBillToCity` AS `strBillToCity`,`schshared`.`tblrfq`.`strBillToPostalCode` AS `strBillToPostalCode`,`schshared`.`tblrfq`.`strBillToProvince` AS `strBillToProvince`,`schshared`.`tblrfq`.`strMessageContent` AS `strMessageContent`,`schshared`.`tblrfq`.`strMessageSubject` AS `strMessageSubject`,`schshared`.`tblrfq`.`strQuoteReferenceNumber` AS `strQuoteReferenceNumber`,`schshared`.`tblrfq`.`strShipToAddress` AS `strShipToAddress`,`schshared`.`tblrfq`.`strShipToCity` AS `strShipToCity`,`schshared`.`tblrfq`.`strShipToPostalCode` AS `strShipToPostalCode`,`schshared`.`tblrfq`.`strShipToProvince` AS `strShipToProvince`,`schshared`.`tblrfq`.`strSupplierAddress` AS `strSupplierAddress`,`schshared`.`tblrfq`.`strSupplierCity` AS `strSupplierCity`,`schshared`.`tblrfq`.`strSupplierPostalCode` AS `strSupplierPostalCode`,`schshared`.`tblrfq`.`strSupplierProvince` AS `strSupplierProvince` from `schshared`.`tblrfq` where (`schshared`.`tblrfq`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblrfqasset`
--

/*!50001 DROP VIEW IF EXISTS `tblrfqasset`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblrfqasset` AS select `schshared`.`tblrfqasset`.`id` AS `id`,`schshared`.`tblrfqasset`.`intTenantID` AS `intTenantID`,`schshared`.`tblrfqasset`.`intAssetID` AS `intAssetID`,`schshared`.`tblrfqasset`.`intRFQID` AS `intRFQID`,`schshared`.`tblrfqasset`.`qtyQuantityRequested` AS `qtyQuantityRequested` from `schshared`.`tblrfqasset` where (`schshared`.`tblrfqasset`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblrfqlineitem`
--

/*!50001 DROP VIEW IF EXISTS `tblrfqlineitem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblrfqlineitem` AS select `schshared`.`tblrfqlineitem`.`id` AS `id`,`schshared`.`tblrfqlineitem`.`intTenantID` AS `intTenantID`,`schshared`.`tblrfqlineitem`.`dblQuotedPricePerUnit` AS `dblQuotedPricePerUnit`,`schshared`.`tblrfqlineitem`.`dblQuotedPriceTotal` AS `dblQuotedPriceTotal`,`schshared`.`tblrfqlineitem`.`intAssetID` AS `intAssetID`,`schshared`.`tblrfqlineitem`.`intParentRFQLineItemID` AS `intParentRFQLineItemID`,`schshared`.`tblrfqlineitem`.`intPurchaseOrderLineItemID` AS `intPurchaseOrderLineItemID`,`schshared`.`tblrfqlineitem`.`intRFQID` AS `intRFQID`,`schshared`.`tblrfqlineitem`.`qtyQuoted` AS `qtyQuoted`,`schshared`.`tblrfqlineitem`.`qtyRequested` AS `qtyRequested`,`schshared`.`tblrfqlineitem`.`strBusinessAssetNumber` AS `strBusinessAssetNumber`,`schshared`.`tblrfqlineitem`.`strDescription` AS `strDescription` from `schshared`.`tblrfqlineitem` where (`schshared`.`tblrfqlineitem`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblrfqqueue`
--

/*!50001 DROP VIEW IF EXISTS `tblrfqqueue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblrfqqueue` AS select `schshared`.`tblrfqqueue`.`id` AS `id`,`schshared`.`tblrfqqueue`.`intTenantID` AS `intTenantID`,`schshared`.`tblrfqqueue`.`dtmDateAdded` AS `dtmDateAdded`,`schshared`.`tblrfqqueue`.`intAssetID` AS `intAssetID` from `schshared`.`tblrfqqueue` where (`schshared`.`tblrfqqueue`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblrfqstatus`
--

/*!50001 DROP VIEW IF EXISTS `tblrfqstatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblrfqstatus` AS select `schshared`.`tblrfqstatus`.`id` AS `id`,`schshared`.`tblrfqstatus`.`intTenantID` AS `intTenantID`,`schshared`.`tblrfqstatus`.`intSysCode` AS `intSysCode`,`schshared`.`tblrfqstatus`.`intControlID` AS `intControlID`,`schshared`.`tblrfqstatus`.`strDefaultLabel` AS `strDefaultLabel`,`schshared`.`tblrfqstatus`.`strName` AS `strName` from `schshared`.`tblrfqstatus` where (`schshared`.`tblrfqstatus`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblrfqstatustransition`
--

/*!50001 DROP VIEW IF EXISTS `tblrfqstatustransition`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblrfqstatustransition` AS select `schshared`.`tblrfqstatustransition`.`id` AS `id`,`schshared`.`tblrfqstatustransition`.`intTenantID` AS `intTenantID`,`schshared`.`tblrfqstatustransition`.`intFromStatusID` AS `intFromStatusID`,`schshared`.`tblrfqstatustransition`.`intToStatusID` AS `intToStatusID`,`schshared`.`tblrfqstatustransition`.`strDefaultLabel` AS `strDefaultLabel`,`schshared`.`tblrfqstatustransition`.`strName` AS `strName`,`schshared`.`tblrfqstatustransition`.`strPropertiesFileKey` AS `strPropertiesFileKey` from `schshared`.`tblrfqstatustransition` where (`schshared`.`tblrfqstatustransition`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblrole`
--

/*!50001 DROP VIEW IF EXISTS `tblrole`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblrole` AS select `schshared`.`tblrole`.`id` AS `id`,`schshared`.`tblrole`.`intTenantID` AS `intTenantID`,`schshared`.`tblrole`.`strRoleSysCode` AS `strRoleSysCode`,`schshared`.`tblrole`.`strUuid` AS `strUuid` from `schshared`.`tblrole` where (`schshared`.`tblrole`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblrolepermission`
--

/*!50001 DROP VIEW IF EXISTS `tblrolepermission`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblrolepermission` AS select `schshared`.`tblrolepermission`.`id` AS `id`,`schshared`.`tblrolepermission`.`intTenantID` AS `intTenantID`,`schshared`.`tblrolepermission`.`intPermissionID` AS `intPermissionID`,`schshared`.`tblrolepermission`.`intRoleID` AS `intRoleID` from `schshared`.`tblrolepermission` where (`schshared`.`tblrolepermission`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblsalesaccounttracking`
--

/*!50001 DROP VIEW IF EXISTS `tblsalesaccounttracking`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblsalesaccounttracking` AS select `schshared`.`tblsalesaccounttracking`.`id` AS `id`,`schshared`.`tblsalesaccounttracking`.`intTenantID` AS `intTenantID`,`schshared`.`tblsalesaccounttracking`.`dtmAccountRelationshipEnd` AS `dtmAccountRelationshipEnd`,`schshared`.`tblsalesaccounttracking`.`dtmAccountRelationshipStart` AS `dtmAccountRelationshipStart`,`schshared`.`tblsalesaccounttracking`.`intPredecessorID` AS `intPredecessorID`,`schshared`.`tblsalesaccounttracking`.`intSalespersonTypeID` AS `intSalespersonTypeID`,`schshared`.`tblsalesaccounttracking`.`intUserID` AS `intUserID` from `schshared`.`tblsalesaccounttracking` where (`schshared`.`tblsalesaccounttracking`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblsalespersontype`
--

/*!50001 DROP VIEW IF EXISTS `tblsalespersontype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblsalespersontype` AS select `schshared`.`tblsalespersontype`.`id` AS `id`,`schshared`.`tblsalespersontype`.`strName` AS `strName` from `schshared`.`tblsalespersontype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblscheduledjob`
--

/*!50001 DROP VIEW IF EXISTS `tblscheduledjob`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblscheduledjob` AS select `schshared`.`tblscheduledjob`.`id` AS `id`,`schshared`.`tblscheduledjob`.`dtmRunTime` AS `dtmRunTime`,`schshared`.`tblscheduledjob`.`intRecurrencePeriod` AS `intRecurrencePeriod`,`schshared`.`tblscheduledjob`.`intRunDuration` AS `intRunDuration`,`schshared`.`tblscheduledjob`.`intRunLatency` AS `intRunLatency`,`schshared`.`tblscheduledjob`.`strDescription` AS `strDescription`,`schshared`.`tblscheduledjob`.`strError` AS `strError`,`schshared`.`tblscheduledjob`.`strJobData` AS `strJobData`,`schshared`.`tblscheduledjob`.`strKey` AS `strKey`,`schshared`.`tblscheduledjob`.`strName` AS `strName`,`schshared`.`tblscheduledjob`.`strStatus` AS `strStatus` from `schshared`.`tblscheduledjob` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblscheduledmaintenance`
--

/*!50001 DROP VIEW IF EXISTS `tblscheduledmaintenance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblscheduledmaintenance` AS select `schshared`.`tblscheduledmaintenance`.`id` AS `id`,`schshared`.`tblscheduledmaintenance`.`intTenantID` AS `intTenantID`,`schshared`.`tblscheduledmaintenance`.`bolCanFireSMWithOpenWO` AS `bolCanFireSMWithOpenWO`,`schshared`.`tblscheduledmaintenance`.`bolNotifyCreatorWhenDWOE` AS `bolNotifyCreatorWhenDWOE`,`schshared`.`tblscheduledmaintenance`.`bolNotifyTechniciansWhenDWOE` AS `bolNotifyTechniciansWhenDWOE`,`schshared`.`tblscheduledmaintenance`.`bolWORequiresSignature` AS `bolWORequiresSignature`,`schshared`.`tblscheduledmaintenance`.`dblSuggestedTime` AS `dblSuggestedTime`,`schshared`.`tblscheduledmaintenance`.`dblTimeEstimatedHours` AS `dblTimeEstimatedHours`,`schshared`.`tblscheduledmaintenance`.`dtmCreateDate` AS `dtmCreateDate`,`schshared`.`tblscheduledmaintenance`.`dtmUpdatedDate` AS `dtmUpdatedDate`,`schshared`.`tblscheduledmaintenance`.`intAccountID` AS `intAccountID`,`schshared`.`tblscheduledmaintenance`.`intChargeDepartmentID` AS `intChargeDepartmentID`,`schshared`.`tblscheduledmaintenance`.`intMaintenanceTypeID` AS `intMaintenanceTypeID`,`schshared`.`tblscheduledmaintenance`.`intPriorityID` AS `intPriorityID`,`schshared`.`tblscheduledmaintenance`.`intProjectID` AS `intProjectID`,`schshared`.`tblscheduledmaintenance`.`intRequestorUserID` AS `intRequestorUserID`,`schshared`.`tblscheduledmaintenance`.`intScheduledMaintenanceStatusID` AS `intScheduledMaintenanceStatusID`,`schshared`.`tblscheduledmaintenance`.`intSiteID` AS `intSiteID`,`schshared`.`tblscheduledmaintenance`.`intStartAsWorkOrderStatusID` AS `intStartAsWorkOrderStatusID`,`schshared`.`tblscheduledmaintenance`.`intSuggestedCompletion` AS `intSuggestedCompletion`,`schshared`.`tblscheduledmaintenance`.`intUpdated` AS `intUpdated`,`schshared`.`tblscheduledmaintenance`.`strAdminNotes` AS `strAdminNotes`,`schshared`.`tblscheduledmaintenance`.`strAssetIds` AS `strAssetIds`,`schshared`.`tblscheduledmaintenance`.`strAssets` AS `strAssets`,`schshared`.`tblscheduledmaintenance`.`strAssignedUserIds` AS `strAssignedUserIds`,`schshared`.`tblscheduledmaintenance`.`strAssignedUsers` AS `strAssignedUsers`,`schshared`.`tblscheduledmaintenance`.`strCode` AS `strCode`,`schshared`.`tblscheduledmaintenance`.`strCompletionNotes` AS `strCompletionNotes`,`schshared`.`tblscheduledmaintenance`.`strCustomerIds` AS `strCustomerIds`,`schshared`.`tblscheduledmaintenance`.`strCustomers` AS `strCustomers`,`schshared`.`tblscheduledmaintenance`.`strDescription` AS `strDescription`,`schshared`.`tblscheduledmaintenance`.`strRType` AS `strRType`,`schshared`.`tblscheduledmaintenance`.`strScheduleDescription` AS `strScheduleDescription`,`schshared`.`tblscheduledmaintenance`.`strUuid` AS `strUuid`,`schshared`.`tblscheduledmaintenance`.`strVendorIds` AS `strVendorIds`,`schshared`.`tblscheduledmaintenance`.`strVendors` AS `strVendors` from `schshared`.`tblscheduledmaintenance` where (`schshared`.`tblscheduledmaintenance`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblscheduledmaintenanceactivitylog`
--

/*!50001 DROP VIEW IF EXISTS `tblscheduledmaintenanceactivitylog`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblscheduledmaintenanceactivitylog` AS select `schshared`.`tblscheduledmaintenanceactivitylog`.`id` AS `id`,`schshared`.`tblscheduledmaintenanceactivitylog`.`intTenantID` AS `intTenantID`,`schshared`.`tblscheduledmaintenanceactivitylog`.`dtmDate` AS `dtmDate`,`schshared`.`tblscheduledmaintenanceactivitylog`.`intActivityLogID` AS `intActivityLogID`,`schshared`.`tblscheduledmaintenanceactivitylog`.`intAssetEventID` AS `intAssetEventID`,`schshared`.`tblscheduledmaintenanceactivitylog`.`intMeterReadingID` AS `intMeterReadingID`,`schshared`.`tblscheduledmaintenanceactivitylog`.`intUserID` AS `intUserID`,`schshared`.`tblscheduledmaintenanceactivitylog`.`intWorkOrderID` AS `intWorkOrderID`,`schshared`.`tblscheduledmaintenanceactivitylog`.`strTriggerDescription` AS `strTriggerDescription`,`schshared`.`tblscheduledmaintenanceactivitylog`.`strTriggerThresholdValue` AS `strTriggerThresholdValue` from `schshared`.`tblscheduledmaintenanceactivitylog` where (`schshared`.`tblscheduledmaintenanceactivitylog`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblscheduledmaintenanceasset`
--

/*!50001 DROP VIEW IF EXISTS `tblscheduledmaintenanceasset`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblscheduledmaintenanceasset` AS select `schshared`.`tblscheduledmaintenanceasset`.`id` AS `id`,`schshared`.`tblscheduledmaintenanceasset`.`intTenantID` AS `intTenantID`,`schshared`.`tblscheduledmaintenanceasset`.`intAssetID` AS `intAssetID`,`schshared`.`tblscheduledmaintenanceasset`.`intScheduledMaintenanceID` AS `intScheduledMaintenanceID`,`schshared`.`tblscheduledmaintenanceasset`.`intUpdated` AS `intUpdated` from `schshared`.`tblscheduledmaintenanceasset` where (`schshared`.`tblscheduledmaintenanceasset`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblscheduledmaintenancebusiness`
--

/*!50001 DROP VIEW IF EXISTS `tblscheduledmaintenancebusiness`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblscheduledmaintenancebusiness` AS select `schshared`.`tblscheduledmaintenancebusiness`.`id` AS `id`,`schshared`.`tblscheduledmaintenancebusiness`.`intTenantID` AS `intTenantID`,`schshared`.`tblscheduledmaintenancebusiness`.`bolPrimary` AS `bolPrimary`,`schshared`.`tblscheduledmaintenancebusiness`.`intAssetBusinessID` AS `intAssetBusinessID`,`schshared`.`tblscheduledmaintenancebusiness`.`intAssetID` AS `intAssetID`,`schshared`.`tblscheduledmaintenancebusiness`.`intBusinessGroupID` AS `intBusinessGroupID`,`schshared`.`tblscheduledmaintenancebusiness`.`intBusinessID` AS `intBusinessID`,`schshared`.`tblscheduledmaintenancebusiness`.`intScheduledMaintenanceID` AS `intScheduledMaintenanceID` from `schshared`.`tblscheduledmaintenancebusiness` where (`schshared`.`tblscheduledmaintenancebusiness`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblscheduledmaintenancenesting`
--

/*!50001 DROP VIEW IF EXISTS `tblscheduledmaintenancenesting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblscheduledmaintenancenesting` AS select `schshared`.`tblscheduledmaintenancenesting`.`id` AS `id`,`schshared`.`tblscheduledmaintenancenesting`.`intTenantID` AS `intTenantID`,`schshared`.`tblscheduledmaintenancenesting`.`intCurrentIterationCycle` AS `intCurrentIterationCycle`,`schshared`.`tblscheduledmaintenancenesting`.`intMultiplier` AS `intMultiplier`,`schshared`.`tblscheduledmaintenancenesting`.`intNameIdentifier` AS `intNameIdentifier`,`schshared`.`tblscheduledmaintenancenesting`.`intParentId` AS `intParentId`,`schshared`.`tblscheduledmaintenancenesting`.`intScheduledMaintenanceID` AS `intScheduledMaintenanceID`,`schshared`.`tblscheduledmaintenancenesting`.`strDescription` AS `strDescription` from `schshared`.`tblscheduledmaintenancenesting` where (`schshared`.`tblscheduledmaintenancenesting`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblscheduledmaintenancepart`
--

/*!50001 DROP VIEW IF EXISTS `tblscheduledmaintenancepart`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblscheduledmaintenancepart` AS select `schshared`.`tblscheduledmaintenancepart`.`id` AS `id`,`schshared`.`tblscheduledmaintenancepart`.`intTenantID` AS `intTenantID`,`schshared`.`tblscheduledmaintenancepart`.`intAssetID` AS `intAssetID`,`schshared`.`tblscheduledmaintenancepart`.`intPartID` AS `intPartID`,`schshared`.`tblscheduledmaintenancepart`.`intScheduledMaintenanceID` AS `intScheduledMaintenanceID`,`schshared`.`tblscheduledmaintenancepart`.`intStockID` AS `intStockID`,`schshared`.`tblscheduledmaintenancepart`.`qtySuggestedQuantity` AS `qtySuggestedQuantity` from `schshared`.`tblscheduledmaintenancepart` where (`schshared`.`tblscheduledmaintenancepart`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblscheduledmaintenanceuser`
--

/*!50001 DROP VIEW IF EXISTS `tblscheduledmaintenanceuser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblscheduledmaintenanceuser` AS select `schshared`.`tblscheduledmaintenanceuser`.`id` AS `id`,`schshared`.`tblscheduledmaintenanceuser`.`intTenantID` AS `intTenantID`,`schshared`.`tblscheduledmaintenanceuser`.`bolCanUpdateOrClose` AS `bolCanUpdateOrClose`,`schshared`.`tblscheduledmaintenanceuser`.`bolNotifyOnAssignment` AS `bolNotifyOnAssignment`,`schshared`.`tblscheduledmaintenanceuser`.`bolNotifyOnCompletion` AS `bolNotifyOnCompletion`,`schshared`.`tblscheduledmaintenanceuser`.`bolNotifyOnOnlineOffline` AS `bolNotifyOnOnlineOffline`,`schshared`.`tblscheduledmaintenanceuser`.`bolNotifyOnStatusChange` AS `bolNotifyOnStatusChange`,`schshared`.`tblscheduledmaintenanceuser`.`bolNotifyOnTaskCompleted` AS `bolNotifyOnTaskCompleted`,`schshared`.`tblscheduledmaintenanceuser`.`bolPrimaryTechnician` AS `bolPrimaryTechnician`,`schshared`.`tblscheduledmaintenanceuser`.`intScheduledMaintenanceID` AS `intScheduledMaintenanceID`,`schshared`.`tblscheduledmaintenanceuser`.`intUserID` AS `intUserID` from `schshared`.`tblscheduledmaintenanceuser` where (`schshared`.`tblscheduledmaintenanceuser`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblscheduledreport`
--

/*!50001 DROP VIEW IF EXISTS `tblscheduledreport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblscheduledreport` AS select `schshared`.`tblscheduledreport`.`id` AS `id`,`schshared`.`tblscheduledreport`.`intTenantID` AS `intTenantID`,`schshared`.`tblscheduledreport`.`bolTSWFriday` AS `bolTSWFriday`,`schshared`.`tblscheduledreport`.`bolTSWMonday` AS `bolTSWMonday`,`schshared`.`tblscheduledreport`.`bolTSWSaturday` AS `bolTSWSaturday`,`schshared`.`tblscheduledreport`.`bolTSWSunday` AS `bolTSWSunday`,`schshared`.`tblscheduledreport`.`bolTSWThursday` AS `bolTSWThursday`,`schshared`.`tblscheduledreport`.`bolTSWTuesday` AS `bolTSWTuesday`,`schshared`.`tblscheduledreport`.`bolTSWWednesday` AS `bolTSWWednesday`,`schshared`.`tblscheduledreport`.`datTREndBy` AS `datTREndBy`,`schshared`.`tblscheduledreport`.`datTRStart` AS `datTRStart`,`schshared`.`tblscheduledreport`.`dtmLastTriggered` AS `dtmLastTriggered`,`schshared`.`tblscheduledreport`.`intCreatorID` AS `intCreatorID`,`schshared`.`tblscheduledreport`.`intOutputFormat` AS `intOutputFormat`,`schshared`.`tblscheduledreport`.`intReportPresetID` AS `intReportPresetID`,`schshared`.`tblscheduledreport`.`intStatusID` AS `intStatusID`,`schshared`.`tblscheduledreport`.`intTREndAfter` AS `intTREndAfter`,`schshared`.`tblscheduledreport`.`intTSDEveryDays` AS `intTSDEveryDays`,`schshared`.`tblscheduledreport`.`intTSHEveryHours` AS `intTSHEveryHours`,`schshared`.`tblscheduledreport`.`intTSMDayOfMonth` AS `intTSMDayOfMonth`,`schshared`.`tblscheduledreport`.`intTSMEveryMonths` AS `intTSMEveryMonths`,`schshared`.`tblscheduledreport`.`intTSWEveryWeeks` AS `intTSWEveryWeeks`,`schshared`.`tblscheduledreport`.`intTSYDayOfMonth` AS `intTSYDayOfMonth`,`schshared`.`tblscheduledreport`.`intTSYEveryYears` AS `intTSYEveryYears`,`schshared`.`tblscheduledreport`.`intTSYMonthOfYear` AS `intTSYMonthOfYear`,`schshared`.`tblscheduledreport`.`strTRType` AS `strTRType`,`schshared`.`tblscheduledreport`.`strTSType` AS `strTSType` from `schshared`.`tblscheduledreport` where (`schshared`.`tblscheduledreport`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblscheduledreportuser`
--

/*!50001 DROP VIEW IF EXISTS `tblscheduledreportuser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblscheduledreportuser` AS select `schshared`.`tblscheduledreportuser`.`id` AS `id`,`schshared`.`tblscheduledreportuser`.`intTenantID` AS `intTenantID`,`schshared`.`tblscheduledreportuser`.`intScheduledReportID` AS `intScheduledReportID`,`schshared`.`tblscheduledreportuser`.`intUserID` AS `intUserID` from `schshared`.`tblscheduledreportuser` where (`schshared`.`tblscheduledreportuser`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblscheduledtask`
--

/*!50001 DROP VIEW IF EXISTS `tblscheduledtask`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblscheduledtask` AS select `schshared`.`tblscheduledtask`.`id` AS `id`,`schshared`.`tblscheduledtask`.`intTenantID` AS `intTenantID`,`schshared`.`tblscheduledtask`.`dblTimeEstimatedHours` AS `dblTimeEstimatedHours`,`schshared`.`tblscheduledtask`.`intAssetID` AS `intAssetID`,`schshared`.`tblscheduledtask`.`intAssignedToUserID` AS `intAssignedToUserID`,`schshared`.`tblscheduledtask`.`intMeterReadingUnitID` AS `intMeterReadingUnitID`,`schshared`.`tblscheduledtask`.`intOrder` AS `intOrder`,`schshared`.`tblscheduledtask`.`intParentScheduledTaskID` AS `intParentScheduledTaskID`,`schshared`.`tblscheduledtask`.`intScheduledMaintenanceID` AS `intScheduledMaintenanceID`,`schshared`.`tblscheduledtask`.`intScheduledMaintenanceNestingID` AS `intScheduledMaintenanceNestingID`,`schshared`.`tblscheduledtask`.`intTaskControlID` AS `intTaskControlID`,`schshared`.`tblscheduledtask`.`intTaskGroupAssetCategoryControlID` AS `intTaskGroupAssetCategoryControlID`,`schshared`.`tblscheduledtask`.`intTaskGroupControlID` AS `intTaskGroupControlID`,`schshared`.`tblscheduledtask`.`intTaskType` AS `intTaskType`,`schshared`.`tblscheduledtask`.`intUpdated` AS `intUpdated`,`schshared`.`tblscheduledtask`.`strDescription` AS `strDescription` from `schshared`.`tblscheduledtask` where (`schshared`.`tblscheduledtask`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblscheduledtaskfile`
--

/*!50001 DROP VIEW IF EXISTS `tblscheduledtaskfile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblscheduledtaskfile` AS select `schshared`.`tblscheduledtaskfile`.`id` AS `id`,`schshared`.`tblscheduledtaskfile`.`intTenantID` AS `intTenantID`,`schshared`.`tblscheduledtaskfile`.`intFileID` AS `intFileID`,`schshared`.`tblscheduledtaskfile`.`intOrder` AS `intOrder`,`schshared`.`tblscheduledtaskfile`.`intScheduledTaskID` AS `intScheduledTaskID` from `schshared`.`tblscheduledtaskfile` where (`schshared`.`tblscheduledtaskfile`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblscheduletrigger`
--

/*!50001 DROP VIEW IF EXISTS `tblscheduletrigger`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblscheduletrigger` AS select `schshared`.`tblscheduletrigger`.`id` AS `id`,`schshared`.`tblscheduletrigger`.`intTenantID` AS `intTenantID`,`schshared`.`tblscheduletrigger`.`bolCreateWorkOrderOnStartDate` AS `bolCreateWorkOrderOnStartDate`,`schshared`.`tblscheduletrigger`.`bolMrByWOClosed` AS `bolMrByWOClosed`,`schshared`.`tblscheduletrigger`.`bolTSWFriday` AS `bolTSWFriday`,`schshared`.`tblscheduletrigger`.`bolTSWMonday` AS `bolTSWMonday`,`schshared`.`tblscheduletrigger`.`bolTSWSaturday` AS `bolTSWSaturday`,`schshared`.`tblscheduletrigger`.`bolTSWSunday` AS `bolTSWSunday`,`schshared`.`tblscheduletrigger`.`bolTSWThursday` AS `bolTSWThursday`,`schshared`.`tblscheduletrigger`.`bolTSWTuesday` AS `bolTSWTuesday`,`schshared`.`tblscheduletrigger`.`bolTSWWednesday` AS `bolTSWWednesday`,`schshared`.`tblscheduletrigger`.`datLastDate` AS `datLastDate`,`schshared`.`tblscheduletrigger`.`datTREndBy` AS `datTREndBy`,`schshared`.`tblscheduletrigger`.`datTRStart` AS `datTRStart`,`schshared`.`tblscheduletrigger`.`dblLastMeterReading` AS `dblLastMeterReading`,`schshared`.`tblscheduletrigger`.`dblRMeterReading` AS `dblRMeterReading`,`schshared`.`tblscheduletrigger`.`dblROMeterReading` AS `dblROMeterReading`,`schshared`.`tblscheduletrigger`.`dblRREndBy` AS `dblRREndBy`,`schshared`.`tblscheduletrigger`.`dblRRStart` AS `dblRRStart`,`schshared`.`tblscheduletrigger`.`dtmLastTriggered` AS `dtmLastTriggered`,`schshared`.`tblscheduletrigger`.`intAssetEventTypeID` AS `intAssetEventTypeID`,`schshared`.`tblscheduletrigger`.`intAssetID` AS `intAssetID`,`schshared`.`tblscheduletrigger`.`intRMeterReadingUnitID` AS `intRMeterReadingUnitID`,`schshared`.`tblscheduletrigger`.`intROMeterReadingUnitID` AS `intROMeterReadingUnitID`,`schshared`.`tblscheduletrigger`.`intRREndAfter` AS `intRREndAfter`,`schshared`.`tblscheduletrigger`.`intScheduledMaintenanceID` AS `intScheduledMaintenanceID`,`schshared`.`tblscheduletrigger`.`intTREndAfter` AS `intTREndAfter`,`schshared`.`tblscheduletrigger`.`intTRTriggerTime` AS `intTRTriggerTime`,`schshared`.`tblscheduletrigger`.`intTSDEveryDays` AS `intTSDEveryDays`,`schshared`.`tblscheduletrigger`.`intTSHEveryHours` AS `intTSHEveryHours`,`schshared`.`tblscheduletrigger`.`intTSMDayOfMonth` AS `intTSMDayOfMonth`,`schshared`.`tblscheduletrigger`.`intTSMEveryMonths` AS `intTSMEveryMonths`,`schshared`.`tblscheduletrigger`.`intTSWEveryWeeks` AS `intTSWEveryWeeks`,`schshared`.`tblscheduletrigger`.`intTSYDayOfMonth` AS `intTSYDayOfMonth`,`schshared`.`tblscheduletrigger`.`intTSYEveryYears` AS `intTSYEveryYears`,`schshared`.`tblscheduletrigger`.`intTSYMonthOfYear` AS `intTSYMonthOfYear`,`schshared`.`tblscheduletrigger`.`intUpdated` AS `intUpdated`,`schshared`.`tblscheduletrigger`.`strDatLogicDaily` AS `strDatLogicDaily`,`schshared`.`tblscheduletrigger`.`strDatLogicHourly` AS `strDatLogicHourly`,`schshared`.`tblscheduletrigger`.`strDatLogicMonthly` AS `strDatLogicMonthly`,`schshared`.`tblscheduletrigger`.`strDatLogicYearly` AS `strDatLogicYearly`,`schshared`.`tblscheduletrigger`.`strMrLogic` AS `strMrLogic`,`schshared`.`tblscheduletrigger`.`strROType` AS `strROType`,`schshared`.`tblscheduletrigger`.`strRRType` AS `strRRType`,`schshared`.`tblscheduletrigger`.`strRType` AS `strRType`,`schshared`.`tblscheduletrigger`.`strScheduleDescription` AS `strScheduleDescription`,`schshared`.`tblscheduletrigger`.`strTRType` AS `strTRType`,`schshared`.`tblscheduletrigger`.`strTSType` AS `strTSType`,`schshared`.`tblscheduletrigger`.`strType` AS `strType` from `schshared`.`tblscheduletrigger` where (`schshared`.`tblscheduletrigger`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblserversetting`
--

/*!50001 DROP VIEW IF EXISTS `tblserversetting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblserversetting` AS select `schshared`.`tblserversetting`.`id` AS `id`,`schshared`.`tblserversetting`.`intTenantID` AS `intTenantID`,`schshared`.`tblserversetting`.`intSysCode` AS `intSysCode`,`schshared`.`tblserversetting`.`intAutoUpdateDOW` AS `intAutoUpdateDOW`,`schshared`.`tblserversetting`.`intAutoUpdateHour` AS `intAutoUpdateHour`,`schshared`.`tblserversetting`.`intAutoUpdateType` AS `intAutoUpdateType`,`schshared`.`tblserversetting`.`intCriticalAutoUpdateDelayDays` AS `intCriticalAutoUpdateDelayDays`,`schshared`.`tblserversetting`.`intRegularAutoUpdateDelayDays` AS `intRegularAutoUpdateDelayDays` from `schshared`.`tblserversetting` where (`schshared`.`tblserversetting`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblshippingtype`
--

/*!50001 DROP VIEW IF EXISTS `tblshippingtype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblshippingtype` AS select `schshared`.`tblshippingtype`.`id` AS `id`,`schshared`.`tblshippingtype`.`intTenantID` AS `intTenantID`,`schshared`.`tblshippingtype`.`strName` AS `strName` from `schshared`.`tblshippingtype` where (`schshared`.`tblshippingtype`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblsiteavailability`
--

/*!50001 DROP VIEW IF EXISTS `tblsiteavailability`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblsiteavailability` AS select `schshared`.`tblsiteavailability`.`id` AS `id`,`schshared`.`tblsiteavailability`.`intTenantID` AS `intTenantID`,`schshared`.`tblsiteavailability`.`bolActive` AS `bolActive`,`schshared`.`tblsiteavailability`.`intAllowedSiteID` AS `intAllowedSiteID`,`schshared`.`tblsiteavailability`.`intOriginSiteID` AS `intOriginSiteID` from `schshared`.`tblsiteavailability` where (`schshared`.`tblsiteavailability`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblsitesetting`
--

/*!50001 DROP VIEW IF EXISTS `tblsitesetting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblsitesetting` AS select `schshared`.`tblsitesetting`.`id` AS `id`,`schshared`.`tblsitesetting`.`intTenantID` AS `intTenantID`,`schshared`.`tblsitesetting`.`bolUseSiteSettingsForClassification` AS `bolUseSiteSettingsForClassification`,`schshared`.`tblsitesetting`.`dtmAnnualUsageFrom` AS `dtmAnnualUsageFrom`,`schshared`.`tblsitesetting`.`dtmAnnualUsageTo` AS `dtmAnnualUsageTo`,`schshared`.`tblsitesetting`.`dtmLastClassified` AS `dtmLastClassified`,`schshared`.`tblsitesetting`.`intClassAOutset` AS `intClassAOutset`,`schshared`.`tblsitesetting`.`intClassBOutset` AS `intClassBOutset`,`schshared`.`tblsitesetting`.`intClassCOutset` AS `intClassCOutset`,`schshared`.`tblsitesetting`.`intSiteID` AS `intSiteID` from `schshared`.`tblsitesetting` where (`schshared`.`tblsitesetting`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblsitestock`
--

/*!50001 DROP VIEW IF EXISTS `tblsitestock`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblsitestock` AS select `schshared`.`tblsitestock`.`id` AS `id`,`schshared`.`tblsitestock`.`intTenantID` AS `intTenantID`,`schshared`.`tblsitestock`.`intAssetID` AS `intAssetID`,`schshared`.`tblsitestock`.`intFacilityID` AS `intFacilityID`,`schshared`.`tblsitestock`.`intUpdated` AS `intUpdated`,`schshared`.`tblsitestock`.`qtyMinQty` AS `qtyMinQty`,`schshared`.`tblsitestock`.`qtyOnHand` AS `qtyOnHand`,`schshared`.`tblsitestock`.`strUuid` AS `strUuid` from `schshared`.`tblsitestock` where (`schshared`.`tblsitestock`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblsiteuser`
--

/*!50001 DROP VIEW IF EXISTS `tblsiteuser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblsiteuser` AS select `schshared`.`tblsiteuser`.`id` AS `id`,`schshared`.`tblsiteuser`.`intTenantID` AS `intTenantID`,`schshared`.`tblsiteuser`.`intSiteID` AS `intSiteID`,`schshared`.`tblsiteuser`.`intUpdated` AS `intUpdated`,`schshared`.`tblsiteuser`.`intUserID` AS `intUserID` from `schshared`.`tblsiteuser` where (`schshared`.`tblsiteuser`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblsiteusergroup`
--

/*!50001 DROP VIEW IF EXISTS `tblsiteusergroup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblsiteusergroup` AS select `schshared`.`tblsiteusergroup`.`id` AS `id`,`schshared`.`tblsiteusergroup`.`intTenantID` AS `intTenantID`,`schshared`.`tblsiteusergroup`.`intGroupID` AS `intGroupID`,`schshared`.`tblsiteusergroup`.`intSiteUserID` AS `intSiteUserID`,`schshared`.`tblsiteusergroup`.`intUpdated` AS `intUpdated` from `schshared`.`tblsiteusergroup` where (`schshared`.`tblsiteusergroup`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblskin`
--

/*!50001 DROP VIEW IF EXISTS `tblskin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblskin` AS select `schshared`.`tblskin`.`id` AS `id`,`schshared`.`tblskin`.`strDirectoryName` AS `strDirectoryName`,`schshared`.`tblskin`.`strName` AS `strName` from `schshared`.`tblskin` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblssoimplementation`
--

/*!50001 DROP VIEW IF EXISTS `tblssoimplementation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblssoimplementation` AS select `schshared`.`tblssoimplementation`.`id` AS `id`,`schshared`.`tblssoimplementation`.`intTenantID` AS `intTenantID`,`schshared`.`tblssoimplementation`.`bolAvailable` AS `bolAvailable`,`schshared`.`tblssoimplementation`.`bolFederatedLogout` AS `bolFederatedLogout`,`schshared`.`tblssoimplementation`.`intProviderID` AS `intProviderID`,`schshared`.`tblssoimplementation`.`strAlgorithm` AS `strAlgorithm`,`schshared`.`tblssoimplementation`.`strClientId` AS `strClientId`,`schshared`.`tblssoimplementation`.`strConnectionId` AS `strConnectionId`,`schshared`.`tblssoimplementation`.`strIssuerId` AS `strIssuerId`,`schshared`.`tblssoimplementation`.`strLoginLabel` AS `strLoginLabel`,`schshared`.`tblssoimplementation`.`strRedirectUri` AS `strRedirectUri`,`schshared`.`tblssoimplementation`.`strSecret` AS `strSecret` from `schshared`.`tblssoimplementation` where (`schshared`.`tblssoimplementation`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblssoprovider`
--

/*!50001 DROP VIEW IF EXISTS `tblssoprovider`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblssoprovider` AS select `schshared`.`tblssoprovider`.`id` AS `id`,`schshared`.`tblssoprovider`.`strBackgroundColor` AS `strBackgroundColor`,`schshared`.`tblssoprovider`.`strCode` AS `strCode`,`schshared`.`tblssoprovider`.`strIconUri` AS `strIconUri`,`schshared`.`tblssoprovider`.`strLabel` AS `strLabel`,`schshared`.`tblssoprovider`.`strName` AS `strName`,`schshared`.`tblssoprovider`.`strProviderType` AS `strProviderType`,`schshared`.`tblssoprovider`.`strTextColor` AS `strTextColor` from `schshared`.`tblssoprovider` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblstock`
--

/*!50001 DROP VIEW IF EXISTS `tblstock`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblstock` AS select `schshared`.`tblstock`.`id` AS `id`,`schshared`.`tblstock`.`intTenantID` AS `intTenantID`,`schshared`.`tblstock`.`bolDeactivated` AS `bolDeactivated`,`schshared`.`tblstock`.`intAssetID` AS `intAssetID`,`schshared`.`tblstock`.`intFacilityID` AS `intFacilityID`,`schshared`.`tblstock`.`intUpdated` AS `intUpdated`,`schshared`.`tblstock`.`qtyMaxQty` AS `qtyMaxQty`,`schshared`.`tblstock`.`qtyMinQty` AS `qtyMinQty`,`schshared`.`tblstock`.`qtyOnHand` AS `qtyOnHand`,`schshared`.`tblstock`.`strAisle` AS `strAisle`,`schshared`.`tblstock`.`strBin` AS `strBin`,`schshared`.`tblstock`.`strRow` AS `strRow`,`schshared`.`tblstock`.`strUuid` AS `strUuid` from `schshared`.`tblstock` where (`schshared`.`tblstock`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblstockadjustmentitem`
--

/*!50001 DROP VIEW IF EXISTS `tblstockadjustmentitem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblstockadjustmentitem` AS select `schshared`.`tblstockadjustmentitem`.`id` AS `id`,`schshared`.`tblstockadjustmentitem`.`intTenantID` AS `intTenantID`,`schshared`.`tblstockadjustmentitem`.`dtmDate` AS `dtmDate`,`schshared`.`tblstockadjustmentitem`.`intStockID` AS `intStockID`,`schshared`.`tblstockadjustmentitem`.`intUserID` AS `intUserID`,`schshared`.`tblstockadjustmentitem`.`qtyQuantity` AS `qtyQuantity` from `schshared`.`tblstockadjustmentitem` where (`schshared`.`tblstockadjustmentitem`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblstockcyclecount`
--

/*!50001 DROP VIEW IF EXISTS `tblstockcyclecount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblstockcyclecount` AS select `schshared`.`tblstockcyclecount`.`id` AS `id`,`schshared`.`tblstockcyclecount`.`intTenantID` AS `intTenantID`,`schshared`.`tblstockcyclecount`.`dblPrice` AS `dblPrice`,`schshared`.`tblstockcyclecount`.`dtmDateCounted` AS `dtmDateCounted`,`schshared`.`tblstockcyclecount`.`intCountedBy` AS `intCountedBy`,`schshared`.`tblstockcyclecount`.`intCycleCountID` AS `intCycleCountID`,`schshared`.`tblstockcyclecount`.`intStockID` AS `intStockID`,`schshared`.`tblstockcyclecount`.`intUpdated` AS `intUpdated`,`schshared`.`tblstockcyclecount`.`qtyExpected` AS `qtyExpected`,`schshared`.`tblstockcyclecount`.`qtyStockCount` AS `qtyStockCount`,`schshared`.`tblstockcyclecount`.`strUuid` AS `strUuid` from `schshared`.`tblstockcyclecount` where (`schshared`.`tblstockcyclecount`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblstockhistory`
--

/*!50001 DROP VIEW IF EXISTS `tblstockhistory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblstockhistory` AS select `schshared`.`tblstockhistory`.`id` AS `id`,`schshared`.`tblstockhistory`.`intTenantID` AS `intTenantID`,`schshared`.`tblstockhistory`.`dblLastPrice` AS `dblLastPrice`,`schshared`.`tblstockhistory`.`dtmDate` AS `dtmDate`,`schshared`.`tblstockhistory`.`intInventoryMethodType` AS `intInventoryMethodType`,`schshared`.`tblstockhistory`.`intStockID` AS `intStockID`,`schshared`.`tblstockhistory`.`intStockTxID` AS `intStockTxID`,`schshared`.`tblstockhistory`.`intStockTxTypeID` AS `intStockTxTypeID`,`schshared`.`tblstockhistory`.`intUpdated` AS `intUpdated`,`schshared`.`tblstockhistory`.`intUserID` AS `intUserID`,`schshared`.`tblstockhistory`.`qtyAfter` AS `qtyAfter`,`schshared`.`tblstockhistory`.`qtyBefore` AS `qtyBefore`,`schshared`.`tblstockhistory`.`qtyMethodQty` AS `qtyMethodQty`,`schshared`.`tblstockhistory`.`qtyQuantity` AS `qtyQuantity`,`schshared`.`tblstockhistory`.`strDescription` AS `strDescription` from `schshared`.`tblstockhistory` where (`schshared`.`tblstockhistory`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblstockpurchaseitem`
--

/*!50001 DROP VIEW IF EXISTS `tblstockpurchaseitem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblstockpurchaseitem` AS select `schshared`.`tblstockpurchaseitem`.`id` AS `id`,`schshared`.`tblstockpurchaseitem`.`intTenantID` AS `intTenantID`,`schshared`.`tblstockpurchaseitem`.`bolMigrated` AS `bolMigrated`,`schshared`.`tblstockpurchaseitem`.`dblPurchasePricePerUnit` AS `dblPurchasePricePerUnit`,`schshared`.`tblstockpurchaseitem`.`dblPurchasePriceTotal` AS `dblPurchasePriceTotal`,`schshared`.`tblstockpurchaseitem`.`dtmDateExpiryOfInventoryItems` AS `dtmDateExpiryOfInventoryItems`,`schshared`.`tblstockpurchaseitem`.`dtmDateOrdered` AS `dtmDateOrdered`,`schshared`.`tblstockpurchaseitem`.`dtmDateReceived` AS `dtmDateReceived`,`schshared`.`tblstockpurchaseitem`.`intAssetID` AS `intAssetID`,`schshared`.`tblstockpurchaseitem`.`intBusinessID` AS `intBusinessID`,`schshared`.`tblstockpurchaseitem`.`intPurchaseCurrencyID` AS `intPurchaseCurrencyID`,`schshared`.`tblstockpurchaseitem`.`intStockID` AS `intStockID`,`schshared`.`tblstockpurchaseitem`.`intUserID` AS `intUserID`,`schshared`.`tblstockpurchaseitem`.`intV2ID` AS `intV2ID`,`schshared`.`tblstockpurchaseitem`.`qtyQuantity` AS `qtyQuantity`,`schshared`.`tblstockpurchaseitem`.`qtyQuantityLeft` AS `qtyQuantityLeft`,`schshared`.`tblstockpurchaseitem`.`qtyQuantityLeftAtTimeOfOrder` AS `qtyQuantityLeftAtTimeOfOrder`,`schshared`.`tblstockpurchaseitem`.`qtyQuantityOrdered` AS `qtyQuantityOrdered`,`schshared`.`tblstockpurchaseitem`.`qtyQuantityPurchased` AS `qtyQuantityPurchased`,`schshared`.`tblstockpurchaseitem`.`qtyQuantityUsed` AS `qtyQuantityUsed` from `schshared`.`tblstockpurchaseitem` where (`schshared`.`tblstockpurchaseitem`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblstocktxtype`
--

/*!50001 DROP VIEW IF EXISTS `tblstocktxtype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblstocktxtype` AS select `schshared`.`tblstocktxtype`.`id` AS `id`,`schshared`.`tblstocktxtype`.`intTenantID` AS `intTenantID`,`schshared`.`tblstocktxtype`.`strName` AS `strName` from `schshared`.`tblstocktxtype` where ((`schshared`.`tblstocktxtype`.`intTenantID` is null) or (`schshared`.`tblstocktxtype`.`intTenantID` = `ma_get_current_tenant`())) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblsubscriptionplan`
--

/*!50001 DROP VIEW IF EXISTS `tblsubscriptionplan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblsubscriptionplan` AS select `schshared`.`tblsubscriptionplan`.`id` AS `id`,`schshared`.`tblsubscriptionplan`.`intTenantID` AS `intTenantID`,`schshared`.`tblsubscriptionplan`.`dtmActiveFromDate` AS `dtmActiveFromDate`,`schshared`.`tblsubscriptionplan`.`dtmActiveToDate` AS `dtmActiveToDate`,`schshared`.`tblsubscriptionplan`.`dtmFeaturesProvisioned` AS `dtmFeaturesProvisioned`,`schshared`.`tblsubscriptionplan`.`dtmFeaturesProvisioningDate` AS `dtmFeaturesProvisioningDate`,`schshared`.`tblsubscriptionplan`.`dtmNextOrderDate` AS `dtmNextOrderDate`,`schshared`.`tblsubscriptionplan`.`dtmScheduledDate` AS `dtmScheduledDate`,`schshared`.`tblsubscriptionplan`.`dtmSubscriptionCreated` AS `dtmSubscriptionCreated`,`schshared`.`tblsubscriptionplan`.`intCreatedByUserID` AS `intCreatedByUserID`,`schshared`.`tblsubscriptionplan`.`intIssuedByTenantID` AS `intIssuedByTenantID`,`schshared`.`tblsubscriptionplan`.`intMarketingProgramID` AS `intMarketingProgramID`,`schshared`.`tblsubscriptionplan`.`intQuoteID` AS `intQuoteID`,`schshared`.`tblsubscriptionplan`.`intRecurringTypeID` AS `intRecurringTypeID`,`schshared`.`tblsubscriptionplan`.`intReplacedBySubscriptionPlanID` AS `intReplacedBySubscriptionPlanID`,`schshared`.`tblsubscriptionplan`.`intSubscriptionStatusID` AS `intSubscriptionStatusID`,`schshared`.`tblsubscriptionplan`.`strDelinquentStatus` AS `strDelinquentStatus`,`schshared`.`tblsubscriptionplan`.`strPoNumber` AS `strPoNumber`,`schshared`.`tblsubscriptionplan`.`strSubscriptionKey` AS `strSubscriptionKey` from `schshared`.`tblsubscriptionplan` where (`schshared`.`tblsubscriptionplan`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblsubscriptionstatus`
--

/*!50001 DROP VIEW IF EXISTS `tblsubscriptionstatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblsubscriptionstatus` AS select `schshared`.`tblsubscriptionstatus`.`id` AS `id`,`schshared`.`tblsubscriptionstatus`.`strName` AS `strName` from `schshared`.`tblsubscriptionstatus` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblsystemmessageuser`
--

/*!50001 DROP VIEW IF EXISTS `tblsystemmessageuser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblsystemmessageuser` AS select `schshared`.`tblsystemmessageuser`.`id` AS `id`,`schshared`.`tblsystemmessageuser`.`intTenantID` AS `intTenantID`,`schshared`.`tblsystemmessageuser`.`bolDeleted` AS `bolDeleted`,`schshared`.`tblsystemmessageuser`.`bolOpened` AS `bolOpened`,`schshared`.`tblsystemmessageuser`.`intMessageID` AS `intMessageID`,`schshared`.`tblsystemmessageuser`.`intUserID` AS `intUserID` from `schshared`.`tblsystemmessageuser` where (`schshared`.`tblsystemmessageuser`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblsystemsetting`
--

/*!50001 DROP VIEW IF EXISTS `tblsystemsetting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblsystemsetting` AS select `schshared`.`tblsystemsetting`.`id` AS `id`,`schshared`.`tblsystemsetting`.`intTenantID` AS `intTenantID`,`schshared`.`tblsystemsetting`.`intSysCode` AS `intSysCode`,`schshared`.`tblsystemsetting`.`bolAddRequestorToNotificationsOnWorkReq` AS `bolAddRequestorToNotificationsOnWorkReq`,`schshared`.`tblsystemsetting`.`bolDemoDatabase` AS `bolDemoDatabase`,`schshared`.`tblsystemsetting`.`bolDisableBrowserPasswordCaching` AS `bolDisableBrowserPasswordCaching`,`schshared`.`tblsystemsetting`.`bolEmailWRPeopleOnCompletion` AS `bolEmailWRPeopleOnCompletion`,`schshared`.`tblsystemsetting`.`bolEnableAllowNegativeStocks` AS `bolEnableAllowNegativeStocks`,`schshared`.`tblsystemsetting`.`bolEnableAssignedToOnWorkReq` AS `bolEnableAssignedToOnWorkReq`,`schshared`.`tblsystemsetting`.`bolEnableAuditLogging` AS `bolEnableAuditLogging`,`schshared`.`tblsystemsetting`.`bolEnableBlockWhenOutOfStock` AS `bolEnableBlockWhenOutOfStock`,`schshared`.`tblsystemsetting`.`bolEnableBusinessTracking` AS `bolEnableBusinessTracking`,`schshared`.`tblsystemsetting`.`bolEnableBusinessTrackingShowCustomer` AS `bolEnableBusinessTrackingShowCustomer`,`schshared`.`tblsystemsetting`.`bolEnableBusinessTrackingShowVendor` AS `bolEnableBusinessTrackingShowVendor`,`schshared`.`tblsystemsetting`.`bolEnableCaptchaGuestWorkReq` AS `bolEnableCaptchaGuestWorkReq`,`schshared`.`tblsystemsetting`.`bolEnableForcePasswordChange` AS `bolEnableForcePasswordChange`,`schshared`.`tblsystemsetting`.`bolEnableGoogleTranslate` AS `bolEnableGoogleTranslate`,`schshared`.`tblsystemsetting`.`bolEnableInspectionTaskNAOption` AS `bolEnableInspectionTaskNAOption`,`schshared`.`tblsystemsetting`.`bolEnableInventoryMethodFifo` AS `bolEnableInventoryMethodFifo`,`schshared`.`tblsystemsetting`.`bolEnableKeepMeLoggedIn` AS `bolEnableKeepMeLoggedIn`,`schshared`.`tblsystemsetting`.`bolEnableLabsGhgCalculator` AS `bolEnableLabsGhgCalculator`,`schshared`.`tblsystemsetting`.`bolEnableMoveControl` AS `bolEnableMoveControl`,`schshared`.`tblsystemsetting`.`bolEnableMoveTracking` AS `bolEnableMoveTracking`,`schshared`.`tblsystemsetting`.`bolEnableMultiAttachAction` AS `bolEnableMultiAttachAction`,`schshared`.`tblsystemsetting`.`bolEnablePromptUnsaved` AS `bolEnablePromptUnsaved`,`schshared`.`tblsystemsetting`.`bolEnablePromptWhenOutOfStock` AS `bolEnablePromptWhenOutOfStock`,`schshared`.`tblsystemsetting`.`bolEnableStateControl` AS `bolEnableStateControl`,`schshared`.`tblsystemsetting`.`bolEnableStockDisassociationInPOsAndRFQs` AS `bolEnableStockDisassociationInPOsAndRFQs`,`schshared`.`tblsystemsetting`.`bolEnableTrackForUserOnWorkReq` AS `bolEnableTrackForUserOnWorkReq`,`schshared`.`tblsystemsetting`.`bolEnableVendorAmazon` AS `bolEnableVendorAmazon`,`schshared`.`tblsystemsetting`.`bolEnableVendorGrainger` AS `bolEnableVendorGrainger`,`schshared`.`tblsystemsetting`.`bolEnableVendorMACMMS` AS `bolEnableVendorMACMMS`,`schshared`.`tblsystemsetting`.`bolEnableVendorSolr` AS `bolEnableVendorSolr`,`schshared`.`tblsystemsetting`.`bolGuestMrAssetScanPermission` AS `bolGuestMrAssetScanPermission`,`schshared`.`tblsystemsetting`.`bolGuestMrEmailRequired` AS `bolGuestMrEmailRequired`,`schshared`.`tblsystemsetting`.`bolGuestMrNotificationOnAssigned` AS `bolGuestMrNotificationOnAssigned`,`schshared`.`tblsystemsetting`.`bolGuestMrNotificationOnCompleted` AS `bolGuestMrNotificationOnCompleted`,`schshared`.`tblsystemsetting`.`bolGuestMrNotificationOnSubmit` AS `bolGuestMrNotificationOnSubmit`,`schshared`.`tblsystemsetting`.`bolGuestMrShowCompletionNotes` AS `bolGuestMrShowCompletionNotes`,`schshared`.`tblsystemsetting`.`bolOnlyAdministratorCanCustomizeUserInterface` AS `bolOnlyAdministratorCanCustomizeUserInterface`,`schshared`.`tblsystemsetting`.`bolRequireCompletionNotesForCompletion` AS `bolRequireCompletionNotesForCompletion`,`schshared`.`tblsystemsetting`.`bolRequireCompletionNotesForCompletionStateControl` AS `bolRequireCompletionNotesForCompletionStateControl`,`schshared`.`tblsystemsetting`.`bolRequiredContactInfo` AS `bolRequiredContactInfo`,`schshared`.`tblsystemsetting`.`bolTimeGeneratedWO` AS `bolTimeGeneratedWO`,`schshared`.`tblsystemsetting`.`bolToolbarEnableGrainger` AS `bolToolbarEnableGrainger`,`schshared`.`tblsystemsetting`.`bolUsersCanEditDashboards` AS `bolUsersCanEditDashboards`,`schshared`.`tblsystemsetting`.`bolWOEnableLocking` AS `bolWOEnableLocking`,`schshared`.`tblsystemsetting`.`bolWOEnableRCA` AS `bolWOEnableRCA`,`schshared`.`tblsystemsetting`.`bolWOEnableRCASearch` AS `bolWOEnableRCASearch`,`schshared`.`tblsystemsetting`.`bolWOEnableRCAStrictMode` AS `bolWOEnableRCAStrictMode`,`schshared`.`tblsystemsetting`.`bolWRAssetInputRequired` AS `bolWRAssetInputRequired`,`schshared`.`tblsystemsetting`.`bolWRAssetInputShow` AS `bolWRAssetInputShow`,`schshared`.`tblsystemsetting`.`bolWRAutoRouting` AS `bolWRAutoRouting`,`schshared`.`tblsystemsetting`.`bolWRMaintenanceTypeShow` AS `bolWRMaintenanceTypeShow`,`schshared`.`tblsystemsetting`.`bolWRPriorityShow` AS `bolWRPriorityShow`,`schshared`.`tblsystemsetting`.`bolWRSuggestedTimeShow` AS `bolWRSuggestedTimeShow`,`schshared`.`tblsystemsetting`.`dtmAnnualUsageFrom` AS `dtmAnnualUsageFrom`,`schshared`.`tblsystemsetting`.`dtmAnnualUsageTo` AS `dtmAnnualUsageTo`,`schshared`.`tblsystemsetting`.`dtmLastApplicationNotification` AS `dtmLastApplicationNotification`,`schshared`.`tblsystemsetting`.`dtmLastSMThreadRun` AS `dtmLastSMThreadRun`,`schshared`.`tblsystemsetting`.`dtmLastSyncThreadRun` AS `dtmLastSyncThreadRun`,`schshared`.`tblsystemsetting`.`dtmMoveToCloudEndDate` AS `dtmMoveToCloudEndDate`,`schshared`.`tblsystemsetting`.`dtmMoveToCloudStartDate` AS `dtmMoveToCloudStartDate`,`schshared`.`tblsystemsetting`.`dtmPartForecasterReportDate` AS `dtmPartForecasterReportDate`,`schshared`.`tblsystemsetting`.`intBusinessServersID` AS `intBusinessServersID`,`schshared`.`tblsystemsetting`.`intClassAOutset` AS `intClassAOutset`,`schshared`.`tblsystemsetting`.`intClassBOutset` AS `intClassBOutset`,`schshared`.`tblsystemsetting`.`intClassCOutset` AS `intClassCOutset`,`schshared`.`tblsystemsetting`.`intCreateBackupEveryHours` AS `intCreateBackupEveryHours`,`schshared`.`tblsystemsetting`.`intDefaultCurrencyID` AS `intDefaultCurrencyID`,`schshared`.`tblsystemsetting`.`intDefaultLocalizationID` AS `intDefaultLocalizationID`,`schshared`.`tblsystemsetting`.`intDefaultWorkOrderStatusID` AS `intDefaultWorkOrderStatusID`,`schshared`.`tblsystemsetting`.`intDefaultWorkRequestStatusID` AS `intDefaultWorkRequestStatusID`,`schshared`.`tblsystemsetting`.`intGenerateWOBefore` AS `intGenerateWOBefore`,`schshared`.`tblsystemsetting`.`intGenerateWOBeforeTime` AS `intGenerateWOBeforeTime`,`schshared`.`tblsystemsetting`.`intKeepBackupForDays` AS `intKeepBackupForDays`,`schshared`.`tblsystemsetting`.`intNumDaysForPasswordExpiry` AS `intNumDaysForPasswordExpiry`,`schshared`.`tblsystemsetting`.`intPoolRFQsTime` AS `intPoolRFQsTime`,`schshared`.`tblsystemsetting`.`intRFQNumberDaysForQuoteResponse` AS `intRFQNumberDaysForQuoteResponse`,`schshared`.`tblsystemsetting`.`intStartPurchaseOrderNumberingAtValue` AS `intStartPurchaseOrderNumberingAtValue`,`schshared`.`tblsystemsetting`.`intUnitPricePrecision` AS `intUnitPricePrecision`,`schshared`.`tblsystemsetting`.`strAssetInsightReportDay` AS `strAssetInsightReportDay`,`schshared`.`tblsystemsetting`.`strAssetInsightSelection` AS `strAssetInsightSelection`,`schshared`.`tblsystemsetting`.`strBackupLocation` AS `strBackupLocation`,`schshared`.`tblsystemsetting`.`strDatabaseBuildNumber` AS `strDatabaseBuildNumber`,`schshared`.`tblsystemsetting`.`strDatabaseVersion` AS `strDatabaseVersion`,`schshared`.`tblsystemsetting`.`strGenerateWO` AS `strGenerateWO`,`schshared`.`tblsystemsetting`.`strGenerateWOBefore` AS `strGenerateWOBefore`,`schshared`.`tblsystemsetting`.`strGenerateWOWhen` AS `strGenerateWOWhen`,`schshared`.`tblsystemsetting`.`strGraingerAccountNum` AS `strGraingerAccountNum`,`schshared`.`tblsystemsetting`.`strGuestMrFeatureLevel` AS `strGuestMrFeatureLevel`,`schshared`.`tblsystemsetting`.`strGuestMrListViewType` AS `strGuestMrListViewType`,`schshared`.`tblsystemsetting`.`strLockingEnabledWorkOrderStatusIds` AS `strLockingEnabledWorkOrderStatusIds`,`schshared`.`tblsystemsetting`.`strPartForecasterReportFrequency` AS `strPartForecasterReportFrequency`,`schshared`.`tblsystemsetting`.`strPartForecastorSelection` AS `strPartForecastorSelection`,`schshared`.`tblsystemsetting`.`strPoolRFQsAndSendOn` AS `strPoolRFQsAndSendOn`,`schshared`.`tblsystemsetting`.`strSendRFQImmediately` AS `strSendRFQImmediately`,`schshared`.`tblsystemsetting`.`strSettings` AS `strSettings`,`schshared`.`tblsystemsetting`.`strShowContactInfoInputs` AS `strShowContactInfoInputs`,`schshared`.`tblsystemsetting`.`strUserGroupsIdsWithCloseAndReopenWorkOrder` AS `strUserGroupsIdsWithCloseAndReopenWorkOrder`,`schshared`.`tblsystemsetting`.`strUserGroupsIdsWithCloseWorkOrder` AS `strUserGroupsIdsWithCloseWorkOrder`,`schshared`.`tblsystemsetting`.`strV2SettingsXml` AS `strV2SettingsXml`,`schshared`.`tblsystemsetting`.`strV6ReportingDefaultDashboard` AS `strV6ReportingDefaultDashboard`,`schshared`.`tblsystemsetting`.`strWOCF1` AS `strWOCF1`,`schshared`.`tblsystemsetting`.`strWOCF2` AS `strWOCF2`,`schshared`.`tblsystemsetting`.`strWOCF3` AS `strWOCF3`,`schshared`.`tblsystemsetting`.`strWOCF4` AS `strWOCF4`,`schshared`.`tblsystemsetting`.`strWOCFSeparator` AS `strWOCFSeparator`,`schshared`.`tblsystemsetting`.`strWOCFSeparatorType` AS `strWOCFSeparatorType` from `schshared`.`tblsystemsetting` where (`schshared`.`tblsystemsetting`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltask`
--

/*!50001 DROP VIEW IF EXISTS `tbltask`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltask` AS select `schshared`.`tbltask`.`id` AS `id`,`schshared`.`tbltask`.`intTenantID` AS `intTenantID`,`schshared`.`tbltask`.`dblTimeEstimatedHours` AS `dblTimeEstimatedHours`,`schshared`.`tbltask`.`intMasterID` AS `intMasterID`,`schshared`.`tbltask`.`intMeterReadingUnitID` AS `intMeterReadingUnitID`,`schshared`.`tbltask`.`intOrder` AS `intOrder`,`schshared`.`tbltask`.`intTaskGroupID` AS `intTaskGroupID`,`schshared`.`tbltask`.`intTaskType` AS `intTaskType`,`schshared`.`tbltask`.`strDescription` AS `strDescription` from `schshared`.`tbltask` where (`schshared`.`tbltask`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltaskfile`
--

/*!50001 DROP VIEW IF EXISTS `tbltaskfile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltaskfile` AS select `schshared`.`tbltaskfile`.`id` AS `id`,`schshared`.`tbltaskfile`.`intTenantID` AS `intTenantID`,`schshared`.`tbltaskfile`.`intFileID` AS `intFileID`,`schshared`.`tbltaskfile`.`intOrder` AS `intOrder`,`schshared`.`tbltaskfile`.`intTaskID` AS `intTaskID` from `schshared`.`tbltaskfile` where (`schshared`.`tbltaskfile`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltaskgroup`
--

/*!50001 DROP VIEW IF EXISTS `tbltaskgroup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltaskgroup` AS select `schshared`.`tbltaskgroup`.`id` AS `id`,`schshared`.`tbltaskgroup`.`intTenantID` AS `intTenantID`,`schshared`.`tbltaskgroup`.`bolHasUnConfiguredTasks` AS `bolHasUnConfiguredTasks`,`schshared`.`tbltaskgroup`.`dtmLastUpdated` AS `dtmLastUpdated`,`schshared`.`tbltaskgroup`.`intCreatedByUserID` AS `intCreatedByUserID`,`schshared`.`tbltaskgroup`.`intLastUpdatedByUserID` AS `intLastUpdatedByUserID`,`schshared`.`tbltaskgroup`.`intMasterID` AS `intMasterID`,`schshared`.`tbltaskgroup`.`intUpdated` AS `intUpdated`,`schshared`.`tbltaskgroup`.`strName` AS `strName`,`schshared`.`tbltaskgroup`.`strUuid` AS `strUuid` from `schshared`.`tbltaskgroup` where (`schshared`.`tbltaskgroup`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltaskgroupassetcategory`
--

/*!50001 DROP VIEW IF EXISTS `tbltaskgroupassetcategory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltaskgroupassetcategory` AS select `schshared`.`tbltaskgroupassetcategory`.`id` AS `id`,`schshared`.`tbltaskgroupassetcategory`.`intTenantID` AS `intTenantID`,`schshared`.`tbltaskgroupassetcategory`.`bolIncludeChildCategories` AS `bolIncludeChildCategories`,`schshared`.`tbltaskgroupassetcategory`.`intAssetCategoryID` AS `intAssetCategoryID`,`schshared`.`tbltaskgroupassetcategory`.`intTaskGroupID` AS `intTaskGroupID` from `schshared`.`tbltaskgroupassetcategory` where (`schshared`.`tbltaskgroupassetcategory`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltaskresultconfiguration`
--

/*!50001 DROP VIEW IF EXISTS `tbltaskresultconfiguration`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltaskresultconfiguration` AS select `schshared`.`tbltaskresultconfiguration`.`id` AS `id`,`schshared`.`tbltaskresultconfiguration`.`intTenantID` AS `intTenantID`,`schshared`.`tbltaskresultconfiguration`.`intTaskResultValueID` AS `intTaskResultValueID`,`schshared`.`tbltaskresultconfiguration`.`strAction` AS `strAction`,`schshared`.`tbltaskresultconfiguration`.`strParamValue` AS `strParamValue` from `schshared`.`tbltaskresultconfiguration` where (`schshared`.`tbltaskresultconfiguration`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltaskresultvalue`
--

/*!50001 DROP VIEW IF EXISTS `tbltaskresultvalue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltaskresultvalue` AS select `schshared`.`tbltaskresultvalue`.`id` AS `id`,`schshared`.`tbltaskresultvalue`.`intTenantID` AS `intTenantID`,`schshared`.`tbltaskresultvalue`.`intScheduledTaskID` AS `intScheduledTaskID`,`schshared`.`tbltaskresultvalue`.`intTaskID` AS `intTaskID`,`schshared`.`tbltaskresultvalue`.`intWorkOrderTaskID` AS `intWorkOrderTaskID`,`schshared`.`tbltaskresultvalue`.`strLabel` AS `strLabel`,`schshared`.`tbltaskresultvalue`.`strTaskResult` AS `strTaskResult` from `schshared`.`tbltaskresultvalue` where (`schshared`.`tbltaskresultvalue`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltemplate`
--

/*!50001 DROP VIEW IF EXISTS `tbltemplate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltemplate` AS select `schshared`.`tbltemplate`.`id` AS `id`,`schshared`.`tbltemplate`.`intTenantID` AS `intTenantID`,`schshared`.`tbltemplate`.`intSysCode` AS `intSysCode`,`schshared`.`tbltemplate`.`intTemplateCategoryID` AS `intTemplateCategoryID`,`schshared`.`tbltemplate`.`strContents` AS `strContents`,`schshared`.`tbltemplate`.`strName` AS `strName`,`schshared`.`tbltemplate`.`strPushNotification` AS `strPushNotification`,`schshared`.`tbltemplate`.`strSubject` AS `strSubject` from `schshared`.`tbltemplate` where (`schshared`.`tbltemplate`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltemplatecategory`
--

/*!50001 DROP VIEW IF EXISTS `tbltemplatecategory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltemplatecategory` AS select `schshared`.`tbltemplatecategory`.`id` AS `id`,`schshared`.`tbltemplatecategory`.`intTenantID` AS `intTenantID`,`schshared`.`tbltemplatecategory`.`strName` AS `strName` from `schshared`.`tbltemplatecategory` where (`schshared`.`tbltemplatecategory`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltenantdashboard`
--

/*!50001 DROP VIEW IF EXISTS `tbltenantdashboard`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltenantdashboard` AS select `schshared`.`tbltenantdashboard`.`id` AS `id`,`schshared`.`tbltenantdashboard`.`intTenantID` AS `intTenantID`,`schshared`.`tbltenantdashboard`.`intDashboardID` AS `intDashboardID` from `schshared`.`tbltenantdashboard` where (`schshared`.`tbltenantdashboard`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltenantdistributioncampaign`
--

/*!50001 DROP VIEW IF EXISTS `tbltenantdistributioncampaign`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltenantdistributioncampaign` AS select `schshared`.`tbltenantdistributioncampaign`.`id` AS `id`,`schshared`.`tbltenantdistributioncampaign`.`intTenantID` AS `intTenantID`,`schshared`.`tbltenantdistributioncampaign`.`bolActive` AS `bolActive`,`schshared`.`tbltenantdistributioncampaign`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tbltenantdistributioncampaign`.`intDistributionID` AS `intDistributionID`,`schshared`.`tbltenantdistributioncampaign`.`strCampaignCode` AS `strCampaignCode`,`schshared`.`tbltenantdistributioncampaign`.`strCampaignName` AS `strCampaignName` from `schshared`.`tbltenantdistributioncampaign` where (`schshared`.`tbltenantdistributioncampaign`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltenantfeature`
--

/*!50001 DROP VIEW IF EXISTS `tbltenantfeature`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltenantfeature` AS select `schshared`.`tbltenantfeature`.`id` AS `id`,`schshared`.`tbltenantfeature`.`intTenantID` AS `intTenantID`,`schshared`.`tbltenantfeature`.`bolAvailable` AS `bolAvailable`,`schshared`.`tbltenantfeature`.`bolSeatMultiplier` AS `bolSeatMultiplier`,`schshared`.`tbltenantfeature`.`dblOverageUnitCost` AS `dblOverageUnitCost`,`schshared`.`tbltenantfeature`.`dtmDateUpdated` AS `dtmDateUpdated`,`schshared`.`tbltenantfeature`.`intAddedFromPricingTierFeatureID` AS `intAddedFromPricingTierFeatureID`,`schshared`.`tbltenantfeature`.`intCreatedByUserID` AS `intCreatedByUserID`,`schshared`.`tbltenantfeature`.`intFeatureID` AS `intFeatureID`,`schshared`.`tbltenantfeature`.`intFeatureValuePeriodTypeID` AS `intFeatureValuePeriodTypeID`,`schshared`.`tbltenantfeature`.`intFeatureValueTypeID` AS `intFeatureValueTypeID`,`schshared`.`tbltenantfeature`.`intOverageControlTypeID` AS `intOverageControlTypeID`,`schshared`.`tbltenantfeature`.`intOverageUnitCostThresholdTypeID` AS `intOverageUnitCostThresholdTypeID`,`schshared`.`tbltenantfeature`.`intUpdatedByUserID` AS `intUpdatedByUserID`,`schshared`.`tbltenantfeature`.`qtyOverageUnitCostThreshold` AS `qtyOverageUnitCostThreshold`,`schshared`.`tbltenantfeature`.`qtyValue` AS `qtyValue`,`schshared`.`tbltenantfeature`.`strNotes` AS `strNotes`,`schshared`.`tbltenantfeature`.`strUuid` AS `strUuid` from `schshared`.`tbltenantfeature` where (`schshared`.`tbltenantfeature`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltenantlineitem`
--

/*!50001 DROP VIEW IF EXISTS `tbltenantlineitem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltenantlineitem` AS select `schshared`.`tbltenantlineitem`.`id` AS `id`,`schshared`.`tbltenantlineitem`.`intTenantID` AS `intTenantID`,`schshared`.`tbltenantlineitem`.`dblDiscount` AS `dblDiscount`,`schshared`.`tbltenantlineitem`.`dblPrice` AS `dblPrice`,`schshared`.`tbltenantlineitem`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tbltenantlineitem`.`dtmDateUpdated` AS `dtmDateUpdated`,`schshared`.`tbltenantlineitem`.`intQuantity` AS `intQuantity`,`schshared`.`tbltenantlineitem`.`intReferenceOrderID` AS `intReferenceOrderID`,`schshared`.`tbltenantlineitem`.`intTenantOrderID` AS `intTenantOrderID`,`schshared`.`tbltenantlineitem`.`intUpdatedByUserID` AS `intUpdatedByUserID`,`schshared`.`tbltenantlineitem`.`strName` AS `strName`,`schshared`.`tbltenantlineitem`.`strNotes` AS `strNotes` from `schshared`.`tbltenantlineitem` where (`schshared`.`tbltenantlineitem`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltenantorder`
--

/*!50001 DROP VIEW IF EXISTS `tbltenantorder`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltenantorder` AS select `schshared`.`tbltenantorder`.`id` AS `id`,`schshared`.`tbltenantorder`.`intTenantID` AS `intTenantID`,`schshared`.`tbltenantorder`.`dblSubtotalAmount` AS `dblSubtotalAmount`,`schshared`.`tbltenantorder`.`dblTaxAmount` AS `dblTaxAmount`,`schshared`.`tbltenantorder`.`dblTotalAmount` AS `dblTotalAmount`,`schshared`.`tbltenantorder`.`dtmDateClose` AS `dtmDateClose`,`schshared`.`tbltenantorder`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tbltenantorder`.`dtmDateOpen` AS `dtmDateOpen`,`schshared`.`tbltenantorder`.`dtmDatePaid` AS `dtmDatePaid`,`schshared`.`tbltenantorder`.`dtmDateRefunded` AS `dtmDateRefunded`,`schshared`.`tbltenantorder`.`dtmDateSentOrder` AS `dtmDateSentOrder`,`schshared`.`tbltenantorder`.`dtmDateSentReceipt` AS `dtmDateSentReceipt`,`schshared`.`tbltenantorder`.`dtmDateUpdated` AS `dtmDateUpdated`,`schshared`.`tbltenantorder`.`intPaymentProfileID` AS `intPaymentProfileID`,`schshared`.`tbltenantorder`.`intTenantOrderTypeID` AS `intTenantOrderTypeID`,`schshared`.`tbltenantorder`.`strNotes` AS `strNotes` from `schshared`.`tbltenantorder` where (`schshared`.`tbltenantorder`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltenantordertype`
--

/*!50001 DROP VIEW IF EXISTS `tbltenantordertype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltenantordertype` AS select `schshared`.`tbltenantordertype`.`id` AS `id`,`schshared`.`tbltenantordertype`.`strName` AS `strName` from `schshared`.`tbltenantordertype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltenantrelationship`
--

/*!50001 DROP VIEW IF EXISTS `tbltenantrelationship`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltenantrelationship` AS select `schshared`.`tbltenantrelationship`.`id` AS `id`,`schshared`.`tbltenantrelationship`.`dtmActiveFromDate` AS `dtmActiveFromDate`,`schshared`.`tbltenantrelationship`.`dtmActiveToDate` AS `dtmActiveToDate`,`schshared`.`tbltenantrelationship`.`intDistributionId` AS `intDistributionId`,`schshared`.`tbltenantrelationship`.`intMasterTenantID` AS `intMasterTenantID`,`schshared`.`tbltenantrelationship`.`intSlaveTenantID` AS `intSlaveTenantID`,`schshared`.`tbltenantrelationship`.`intTenantDistributionCampaignId` AS `intTenantDistributionCampaignId`,`schshared`.`tbltenantrelationship`.`intTenantRelationshipTypeID` AS `intTenantRelationshipTypeID` from `schshared`.`tbltenantrelationship` where ((`schshared`.`tbltenantrelationship`.`intMasterTenantID` is null) or (`schshared`.`tbltenantrelationship`.`intMasterTenantID` = `ma_get_current_tenant`())) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltenantrelationshiptype`
--

/*!50001 DROP VIEW IF EXISTS `tbltenantrelationshiptype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltenantrelationshiptype` AS select `schshared`.`tbltenantrelationshiptype`.`id` AS `id`,`schshared`.`tbltenantrelationshiptype`.`strDescription` AS `strDescription`,`schshared`.`tbltenantrelationshiptype`.`strName` AS `strName` from `schshared`.`tbltenantrelationshiptype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltenantreport`
--

/*!50001 DROP VIEW IF EXISTS `tbltenantreport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltenantreport` AS select `schshared`.`tbltenantreport`.`id` AS `id`,`schshared`.`tbltenantreport`.`intTenantID` AS `intTenantID`,`schshared`.`tbltenantreport`.`intReportTemplateID` AS `intReportTemplateID` from `schshared`.`tbltenantreport` where (`schshared`.`tbltenantreport`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltenantsystemproperty`
--

/*!50001 DROP VIEW IF EXISTS `tbltenantsystemproperty`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltenantsystemproperty` AS select `schshared`.`tbltenantsystemproperty`.`id` AS `id`,`schshared`.`tbltenantsystemproperty`.`intTenantID` AS `intTenantID`,`schshared`.`tbltenantsystemproperty`.`dtmLastUpdated` AS `dtmLastUpdated`,`schshared`.`tbltenantsystemproperty`.`intSystemID` AS `intSystemID`,`schshared`.`tbltenantsystemproperty`.`strPropertyName` AS `strPropertyName`,`schshared`.`tbltenantsystemproperty`.`strPropertyValue` AS `strPropertyValue` from `schshared`.`tbltenantsystemproperty` where (`schshared`.`tbltenantsystemproperty`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltenantsystempropertylog`
--

/*!50001 DROP VIEW IF EXISTS `tbltenantsystempropertylog`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltenantsystempropertylog` AS select `schshared`.`tbltenantsystempropertylog`.`id` AS `id`,`schshared`.`tbltenantsystempropertylog`.`intTenantID` AS `intTenantID`,`schshared`.`tbltenantsystempropertylog`.`dtmUpdated` AS `dtmUpdated`,`schshared`.`tbltenantsystempropertylog`.`intSystemID` AS `intSystemID`,`schshared`.`tbltenantsystempropertylog`.`strPropertyName` AS `strPropertyName`,`schshared`.`tbltenantsystempropertylog`.`strPropertyValue` AS `strPropertyValue` from `schshared`.`tbltenantsystempropertylog` where (`schshared`.`tbltenantsystempropertylog`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltenanttransaction`
--

/*!50001 DROP VIEW IF EXISTS `tbltenanttransaction`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltenanttransaction` AS select `schshared`.`tbltenanttransaction`.`id` AS `id`,`schshared`.`tbltenanttransaction`.`intTenantID` AS `intTenantID`,`schshared`.`tbltenanttransaction`.`dblTotalAmount` AS `dblTotalAmount`,`schshared`.`tbltenanttransaction`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tbltenanttransaction`.`dtmDatePaid` AS `dtmDatePaid`,`schshared`.`tbltenanttransaction`.`intPaidByUserID` AS `intPaidByUserID`,`schshared`.`tbltenanttransaction`.`intPaymentProfileID` AS `intPaymentProfileID`,`schshared`.`tbltenanttransaction`.`intTenantOrderID` AS `intTenantOrderID`,`schshared`.`tbltenanttransaction`.`strNotes` AS `strNotes`,`schshared`.`tbltenanttransaction`.`strTransactionReference` AS `strTransactionReference` from `schshared`.`tbltenanttransaction` where (`schshared`.`tbltenanttransaction`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltenantwidget`
--

/*!50001 DROP VIEW IF EXISTS `tbltenantwidget`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltenantwidget` AS select `schshared`.`tbltenantwidget`.`id` AS `id`,`schshared`.`tbltenantwidget`.`intTenantID` AS `intTenantID`,`schshared`.`tbltenantwidget`.`intWidgetID` AS `intWidgetID` from `schshared`.`tbltenantwidget` where (`schshared`.`tbltenantwidget`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltestingblack`
--

/*!50001 DROP VIEW IF EXISTS `tbltestingblack`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltestingblack` AS select `schshared`.`tbltestingblack`.`id` AS `id`,`schshared`.`tbltestingblack`.`intTenantID` AS `intTenantID`,`schshared`.`tbltestingblack`.`intSysCode` AS `intSysCode`,`schshared`.`tbltestingblack`.`intBlackCascadeID` AS `intBlackCascadeID`,`schshared`.`tbltestingblack`.`intBlackRestrictID` AS `intBlackRestrictID`,`schshared`.`tbltestingblack`.`intBlackSetNullID` AS `intBlackSetNullID`,`schshared`.`tbltestingblack`.`intLongValue` AS `intLongValue`,`schshared`.`tbltestingblack`.`intWhiteCascadeID` AS `intWhiteCascadeID`,`schshared`.`tbltestingblack`.`qtyQuantityValue` AS `qtyQuantityValue`,`schshared`.`tbltestingblack`.`strCode` AS `strCode`,`schshared`.`tbltestingblack`.`strStringValue` AS `strStringValue` from `schshared`.`tbltestingblack` where (`schshared`.`tbltestingblack`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltestingredc`
--

/*!50001 DROP VIEW IF EXISTS `tbltestingredc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltestingredc` AS select `schshared`.`tbltestingredc`.`id` AS `id`,`schshared`.`tbltestingredc`.`intTenantID` AS `intTenantID`,`schshared`.`tbltestingredc`.`bolRareBooleanIndexed` AS `bolRareBooleanIndexed`,`schshared`.`tbltestingredc`.`intBlackCascadeID` AS `intBlackCascadeID`,`schshared`.`tbltestingredc`.`intBlackRestrictID` AS `intBlackRestrictID`,`schshared`.`tbltestingredc`.`intBlackSetNullID` AS `intBlackSetNullID`,`schshared`.`tbltestingredc`.`intLongValueIndexed` AS `intLongValueIndexed`,`schshared`.`tbltestingredc`.`intLongValueNotIndexed` AS `intLongValueNotIndexed`,`schshared`.`tbltestingredc`.`intWhiteCCascadeID` AS `intWhiteCCascadeID`,`schshared`.`tbltestingredc`.`intWhiteCRestrictID` AS `intWhiteCRestrictID`,`schshared`.`tbltestingredc`.`intWhiteCSetNullID` AS `intWhiteCSetNullID` from `schshared`.`tbltestingredc` where (`schshared`.`tbltestingredc`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltestingwhitec`
--

/*!50001 DROP VIEW IF EXISTS `tbltestingwhitec`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltestingwhitec` AS select `schshared`.`tbltestingwhitec`.`id` AS `id`,`schshared`.`tbltestingwhitec`.`intTenantID` AS `intTenantID`,`schshared`.`tbltestingwhitec`.`intSysCode` AS `intSysCode`,`schshared`.`tbltestingwhitec`.`intBlackCascadeID` AS `intBlackCascadeID`,`schshared`.`tbltestingwhitec`.`intLongValue` AS `intLongValue`,`schshared`.`tbltestingwhitec`.`intLongValueIndexed` AS `intLongValueIndexed`,`schshared`.`tbltestingwhitec`.`qtyQuantityValue` AS `qtyQuantityValue`,`schshared`.`tbltestingwhitec`.`strCode` AS `strCode`,`schshared`.`tbltestingwhitec`.`strStringValue` AS `strStringValue` from `schshared`.`tbltestingwhitec` where (`schshared`.`tbltestingwhitec`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltestingyellow`
--

/*!50001 DROP VIEW IF EXISTS `tbltestingyellow`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltestingyellow` AS select `schshared`.`tbltestingyellow`.`id` AS `id`,`schshared`.`tbltestingyellow`.`intTenantID` AS `intTenantID`,`schshared`.`tbltestingyellow`.`intBlackCascadeID` AS `intBlackCascadeID`,`schshared`.`tbltestingyellow`.`intBlackRestrictID` AS `intBlackRestrictID`,`schshared`.`tbltestingyellow`.`intBlackSetNullID` AS `intBlackSetNullID`,`schshared`.`tbltestingyellow`.`intLongValue` AS `intLongValue`,`schshared`.`tbltestingyellow`.`intWhiteCCascadeID` AS `intWhiteCCascadeID`,`schshared`.`tbltestingyellow`.`intWhiteCRestrictID` AS `intWhiteCRestrictID`,`schshared`.`tbltestingyellow`.`intWhiteCSetNullID` AS `intWhiteCSetNullID` from `schshared`.`tbltestingyellow` where (`schshared`.`tbltestingyellow`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbltesttable`
--

/*!50001 DROP VIEW IF EXISTS `tbltesttable`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbltesttable` AS select `schshared`.`tbltesttable`.`id` AS `id`,`schshared`.`tbltesttable`.`intTenantID` AS `intTenantID`,`schshared`.`tbltesttable`.`bolYo` AS `bolYo`,`schshared`.`tbltesttable`.`datYo` AS `datYo`,`schshared`.`tbltesttable`.`dblYo` AS `dblYo`,`schshared`.`tbltesttable`.`dtmYo` AS `dtmYo`,`schshared`.`tbltesttable`.`intUserID` AS `intUserID`,`schshared`.`tbltesttable`.`intYo` AS `intYo`,`schshared`.`tbltesttable`.`intYoInteger` AS `intYoInteger`,`schshared`.`tbltesttable`.`qtyYo` AS `qtyYo`,`schshared`.`tbltesttable`.`strYo` AS `strYo`,`schshared`.`tbltesttable`.`strYoLong` AS `strYoLong` from `schshared`.`tbltesttable` where (`schshared`.`tbltesttable`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbluicprofile`
--

/*!50001 DROP VIEW IF EXISTS `tbluicprofile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbluicprofile` AS select `schshared`.`tbluicprofile`.`id` AS `id`,`schshared`.`tbluicprofile`.`intTenantID` AS `intTenantID`,`schshared`.`tbluicprofile`.`intUserID` AS `intUserID`,`schshared`.`tbluicprofile`.`strUics` AS `strUics` from `schshared`.`tbluicprofile` where (`schshared`.`tbluicprofile`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbluser`
--

/*!50001 DROP VIEW IF EXISTS `tbluser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbluser` AS select `schshared`.`tbluser`.`id` AS `id`,`schshared`.`tbluser`.`intTenantID` AS `intTenantID`,`schshared`.`tbluser`.`intSysCode` AS `intSysCode`,`schshared`.`tbluser`.`bolApiApplicationUser` AS `bolApiApplicationUser`,`schshared`.`tbluser`.`bolApiManaged` AS `bolApiManaged`,`schshared`.`tbluser`.`bolEmailAllAlerts` AS `bolEmailAllAlerts`,`schshared`.`tbluser`.`bolEmailAllMessages` AS `bolEmailAllMessages`,`schshared`.`tbluser`.`bolEmailSystemErrors` AS `bolEmailSystemErrors`,`schshared`.`tbluser`.`bolForceResetPassword` AS `bolForceResetPassword`,`schshared`.`tbluser`.`bolGroup` AS `bolGroup`,`schshared`.`tbluser`.`bolInternalMailAllMessages` AS `bolInternalMailAllMessages`,`schshared`.`tbluser`.`bolIsCrmAccountOwner` AS `bolIsCrmAccountOwner`,`schshared`.`tbluser`.`bolIsLocalizing` AS `bolIsLocalizing`,`schshared`.`tbluser`.`bolIsVirtuallyDeleted` AS `bolIsVirtuallyDeleted`,`schshared`.`tbluser`.`bolNotifyOnDWOE` AS `bolNotifyOnDWOE`,`schshared`.`tbluser`.`bolNotifyOnWOAssigned` AS `bolNotifyOnWOAssigned`,`schshared`.`tbluser`.`bolNotifyOnWOCompleted` AS `bolNotifyOnWOCompleted`,`schshared`.`tbluser`.`bolNotifyOnWODraft` AS `bolNotifyOnWODraft`,`schshared`.`tbluser`.`bolNotifyOnWOOnHold` AS `bolNotifyOnWOOnHold`,`schshared`.`tbluser`.`bolNotifyOnWOOpen` AS `bolNotifyOnWOOpen`,`schshared`.`tbluser`.`bolNotifyOnWORequested` AS `bolNotifyOnWORequested`,`schshared`.`tbluser`.`bolNotifyOnWOWithNoAsset` AS `bolNotifyOnWOWithNoAsset`,`schshared`.`tbluser`.`bolNotifyOnWOWorkInProgress` AS `bolNotifyOnWOWorkInProgress`,`schshared`.`tbluser`.`bolProgressMeterNoticeDisplayed` AS `bolProgressMeterNoticeDisplayed`,`schshared`.`tbluser`.`bolPushNotificationMessages` AS `bolPushNotificationMessages`,`schshared`.`tbluser`.`bolSendEmailOnExpire` AS `bolSendEmailOnExpire`,`schshared`.`tbluser`.`bolShowHoverWindows` AS `bolShowHoverWindows`,`schshared`.`tbluser`.`bolSystemLevelUser` AS `bolSystemLevelUser`,`schshared`.`tbluser`.`bolWebInterfaceContact` AS `bolWebInterfaceContact`,`schshared`.`tbluser`.`bolWelcomeEmailSent` AS `bolWelcomeEmailSent`,`schshared`.`tbluser`.`dblHourlyRate` AS `dblHourlyRate`,`schshared`.`tbluser`.`dtmBusinessApprove` AS `dtmBusinessApprove`,`schshared`.`tbluser`.`dtmDateAccountExpire` AS `dtmDateAccountExpire`,`schshared`.`tbluser`.`dtmDateActivated` AS `dtmDateActivated`,`schshared`.`tbluser`.`dtmDateApprovalExpire` AS `dtmDateApprovalExpire`,`schshared`.`tbluser`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tbluser`.`dtmDateDeactivated` AS `dtmDateDeactivated`,`schshared`.`tbluser`.`dtmDateRequest` AS `dtmDateRequest`,`schshared`.`tbluser`.`dtmLastLogin` AS `dtmLastLogin`,`schshared`.`tbluser`.`dtmLastNagScreenTime` AS `dtmLastNagScreenTime`,`schshared`.`tbluser`.`dtmLastPasswordChange` AS `dtmLastPasswordChange`,`schshared`.`tbluser`.`dtmUserApprove` AS `dtmUserApprove`,`schshared`.`tbluser`.`dtmV6LastLogin` AS `dtmV6LastLogin`,`schshared`.`tbluser`.`intBgImageFileID` AS `intBgImageFileID`,`schshared`.`tbluser`.`intBusinessApproveStatus` AS `intBusinessApproveStatus`,`schshared`.`tbluser`.`intCountryID` AS `intCountryID`,`schshared`.`tbluser`.`intCurrencyID` AS `intCurrencyID`,`schshared`.`tbluser`.`intLocalizationID` AS `intLocalizationID`,`schshared`.`tbluser`.`intMenuType` AS `intMenuType`,`schshared`.`tbluser`.`intNotifyExpireDaysBefore` AS `intNotifyExpireDaysBefore`,`schshared`.`tbluser`.`intRecordsPerPage` AS `intRecordsPerPage`,`schshared`.`tbluser`.`intSSOImplementationID` AS `intSSOImplementationID`,`schshared`.`tbluser`.`intSessionTimeoutSeconds` AS `intSessionTimeoutSeconds`,`schshared`.`tbluser`.`intSkinID` AS `intSkinID`,`schshared`.`tbluser`.`intUpdated` AS `intUpdated`,`schshared`.`tbluser`.`intUserApproveStatus` AS `intUserApproveStatus`,`schshared`.`tbluser`.`intUserStatusID` AS `intUserStatusID`,`schshared`.`tbluser`.`strAddress1` AS `strAddress1`,`schshared`.`tbluser`.`strAddress2` AS `strAddress2`,`schshared`.`tbluser`.`strBusinessIds` AS `strBusinessIds`,`schshared`.`tbluser`.`strBusinessUserPrivateKey` AS `strBusinessUserPrivateKey`,`schshared`.`tbluser`.`strBusinesses` AS `strBusinesses`,`schshared`.`tbluser`.`strCity` AS `strCity`,`schshared`.`tbluser`.`strDefaultLoginLocation` AS `strDefaultLoginLocation`,`schshared`.`tbluser`.`strEmailAddress` AS `strEmailAddress`,`schshared`.`tbluser`.`strFormLayoutType` AS `strFormLayoutType`,`schshared`.`tbluser`.`strFullName` AS `strFullName`,`schshared`.`tbluser`.`strNotes` AS `strNotes`,`schshared`.`tbluser`.`strNotifyOnWOAsset` AS `strNotifyOnWOAsset`,`schshared`.`tbluser`.`strOneSignalPlayerIDs` AS `strOneSignalPlayerIDs`,`schshared`.`tbluser`.`strPassword` AS `strPassword`,`schshared`.`tbluser`.`strPersonnelCode` AS `strPersonnelCode`,`schshared`.`tbluser`.`strPlayerID` AS `strPlayerID`,`schshared`.`tbluser`.`strPostalCode` AS `strPostalCode`,`schshared`.`tbluser`.`strPreferences` AS `strPreferences`,`schshared`.`tbluser`.`strRequestNotes` AS `strRequestNotes`,`schshared`.`tbluser`.`strRoleUuid` AS `strRoleUuid`,`schshared`.`tbluser`.`strState` AS `strState`,`schshared`.`tbluser`.`strSubmenuType` AS `strSubmenuType`,`schshared`.`tbluser`.`strTelephone` AS `strTelephone`,`schshared`.`tbluser`.`strTelephone2` AS `strTelephone2`,`schshared`.`tbluser`.`strUserName` AS `strUserName`,`schshared`.`tbluser`.`strUserTitle` AS `strUserTitle`,`schshared`.`tbluser`.`strUuid` AS `strUuid` from `schshared`.`tbluser` where (`schshared`.`tbluser`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbluseranalyticspermission`
--

/*!50001 DROP VIEW IF EXISTS `tbluseranalyticspermission`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbluseranalyticspermission` AS select `schshared`.`tbluseranalyticspermission`.`id` AS `id`,`schshared`.`tbluseranalyticspermission`.`intTenantID` AS `intTenantID`,`schshared`.`tbluseranalyticspermission`.`dtmFirstAssignedDate` AS `dtmFirstAssignedDate`,`schshared`.`tbluseranalyticspermission`.`dtmLastUpdatedDate` AS `dtmLastUpdatedDate`,`schshared`.`tbluseranalyticspermission`.`intUserID` AS `intUserID`,`schshared`.`tbluseranalyticspermission`.`strPermissionLevel` AS `strPermissionLevel` from `schshared`.`tbluseranalyticspermission` where (`schshared`.`tbluseranalyticspermission`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbluserapiconsumerpermission`
--

/*!50001 DROP VIEW IF EXISTS `tbluserapiconsumerpermission`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbluserapiconsumerpermission` AS select `schshared`.`tbluserapiconsumerpermission`.`id` AS `id`,`schshared`.`tbluserapiconsumerpermission`.`intTenantID` AS `intTenantID`,`schshared`.`tbluserapiconsumerpermission`.`intApiConsumerID` AS `intApiConsumerID`,`schshared`.`tbluserapiconsumerpermission`.`intUserID` AS `intUserID`,`schshared`.`tbluserapiconsumerpermission`.`strPermissionName` AS `strPermissionName` from `schshared`.`tbluserapiconsumerpermission` where (`schshared`.`tbluserapiconsumerpermission`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblusercertification`
--

/*!50001 DROP VIEW IF EXISTS `tblusercertification`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblusercertification` AS select `schshared`.`tblusercertification`.`id` AS `id`,`schshared`.`tblusercertification`.`intTenantID` AS `intTenantID`,`schshared`.`tblusercertification`.`datValidFrom` AS `datValidFrom`,`schshared`.`tblusercertification`.`datValidTo` AS `datValidTo`,`schshared`.`tblusercertification`.`dtmExpiryNotificationSent` AS `dtmExpiryNotificationSent`,`schshared`.`tblusercertification`.`intCertificationID` AS `intCertificationID`,`schshared`.`tblusercertification`.`intFileContentsID` AS `intFileContentsID`,`schshared`.`tblusercertification`.`intUserID` AS `intUserID`,`schshared`.`tblusercertification`.`strDescription` AS `strDescription`,`schshared`.`tblusercertification`.`strName` AS `strName` from `schshared`.`tblusercertification` where (`schshared`.`tblusercertification`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbluserclockinout`
--

/*!50001 DROP VIEW IF EXISTS `tbluserclockinout`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbluserclockinout` AS select `schshared`.`tbluserclockinout`.`id` AS `id`,`schshared`.`tbluserclockinout`.`intTenantID` AS `intTenantID`,`schshared`.`tbluserclockinout`.`dtmClockInTime` AS `dtmClockInTime`,`schshared`.`tbluserclockinout`.`dtmClockOutTime` AS `dtmClockOutTime`,`schshared`.`tbluserclockinout`.`intFacilityID` AS `intFacilityID`,`schshared`.`tbluserclockinout`.`intUserID` AS `intUserID` from `schshared`.`tbluserclockinout` where (`schshared`.`tbluserclockinout`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbluserepicfeaturenotice`
--

/*!50001 DROP VIEW IF EXISTS `tbluserepicfeaturenotice`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbluserepicfeaturenotice` AS select `schshared`.`tbluserepicfeaturenotice`.`id` AS `id`,`schshared`.`tbluserepicfeaturenotice`.`intTenantID` AS `intTenantID`,`schshared`.`tbluserepicfeaturenotice`.`bolDontShowAgain` AS `bolDontShowAgain`,`schshared`.`tbluserepicfeaturenotice`.`dtmDateViewed` AS `dtmDateViewed`,`schshared`.`tbluserepicfeaturenotice`.`intDashboardFeatureNoticeID` AS `intDashboardFeatureNoticeID`,`schshared`.`tbluserepicfeaturenotice`.`intEpicFeatureNoticeID` AS `intEpicFeatureNoticeID`,`schshared`.`tbluserepicfeaturenotice`.`intNumberViews` AS `intNumberViews`,`schshared`.`tbluserepicfeaturenotice`.`intUserID` AS `intUserID` from `schshared`.`tbluserepicfeaturenotice` where (`schshared`.`tbluserepicfeaturenotice`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblusergroupdashboardpersona`
--

/*!50001 DROP VIEW IF EXISTS `tblusergroupdashboardpersona`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblusergroupdashboardpersona` AS select `schshared`.`tblusergroupdashboardpersona`.`id` AS `id`,`schshared`.`tblusergroupdashboardpersona`.`intTenantID` AS `intTenantID`,`schshared`.`tblusergroupdashboardpersona`.`intDashboardPersonaID` AS `intDashboardPersonaID`,`schshared`.`tblusergroupdashboardpersona`.`intUserGroupID` AS `intUserGroupID` from `schshared`.`tblusergroupdashboardpersona` where (`schshared`.`tblusergroupdashboardpersona`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblusermasourcestart`
--

/*!50001 DROP VIEW IF EXISTS `tblusermasourcestart`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblusermasourcestart` AS select `schshared`.`tblusermasourcestart`.`id` AS `id`,`schshared`.`tblusermasourcestart`.`intTenantID` AS `intTenantID`,`schshared`.`tblusermasourcestart`.`bolDontShowAgain` AS `bolDontShowAgain`,`schshared`.`tblusermasourcestart`.`dtmDateViewed` AS `dtmDateViewed`,`schshared`.`tblusermasourcestart`.`intNumberViews` AS `intNumberViews`,`schshared`.`tblusermasourcestart`.`intUserID` AS `intUserID` from `schshared`.`tblusermasourcestart` where (`schshared`.`tblusermasourcestart`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblusermilestone`
--

/*!50001 DROP VIEW IF EXISTS `tblusermilestone`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblusermilestone` AS select `schshared`.`tblusermilestone`.`id` AS `id`,`schshared`.`tblusermilestone`.`intTenantID` AS `intTenantID`,`schshared`.`tblusermilestone`.`bolCompleted` AS `bolCompleted`,`schshared`.`tblusermilestone`.`bolIgnored` AS `bolIgnored`,`schshared`.`tblusermilestone`.`dtmCompleted` AS `dtmCompleted`,`schshared`.`tblusermilestone`.`dtmIgnored` AS `dtmIgnored`,`schshared`.`tblusermilestone`.`intMilestoneID` AS `intMilestoneID`,`schshared`.`tblusermilestone`.`intUserID` AS `intUserID` from `schshared`.`tblusermilestone` where (`schshared`.`tblusermilestone`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbluserpermission`
--

/*!50001 DROP VIEW IF EXISTS `tbluserpermission`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbluserpermission` AS select `schshared`.`tbluserpermission`.`id` AS `id`,`schshared`.`tbluserpermission`.`intTenantID` AS `intTenantID`,`schshared`.`tbluserpermission`.`intPermissionID` AS `intPermissionID`,`schshared`.`tbluserpermission`.`intUserID` AS `intUserID` from `schshared`.`tbluserpermission` where (`schshared`.`tbluserpermission`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbluserpurchaseorderstatustransitionpermission`
--

/*!50001 DROP VIEW IF EXISTS `tbluserpurchaseorderstatustransitionpermission`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbluserpurchaseorderstatustransitionpermission` AS select `schshared`.`tbluserpurchaseorderstatustransitionpermission`.`id` AS `id`,`schshared`.`tbluserpurchaseorderstatustransitionpermission`.`intTenantID` AS `intTenantID`,`schshared`.`tbluserpurchaseorderstatustransitionpermission`.`intPermissionID` AS `intPermissionID`,`schshared`.`tbluserpurchaseorderstatustransitionpermission`.`intUserID` AS `intUserID` from `schshared`.`tbluserpurchaseorderstatustransitionpermission` where (`schshared`.`tbluserpurchaseorderstatustransitionpermission`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbluserreportstouser`
--

/*!50001 DROP VIEW IF EXISTS `tbluserreportstouser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbluserreportstouser` AS select `schshared`.`tbluserreportstouser`.`id` AS `id`,`schshared`.`tbluserreportstouser`.`intTenantID` AS `intTenantID`,`schshared`.`tbluserreportstouser`.`dtmCreatedOnDate` AS `dtmCreatedOnDate`,`schshared`.`tbluserreportstouser`.`intReportsToID` AS `intReportsToID`,`schshared`.`tbluserreportstouser`.`intUserID` AS `intUserID` from `schshared`.`tbluserreportstouser` where (`schshared`.`tbluserreportstouser`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tbluserrole`
--

/*!50001 DROP VIEW IF EXISTS `tbluserrole`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tbluserrole` AS select `schshared`.`tbluserrole`.`id` AS `id`,`schshared`.`tbluserrole`.`intTenantID` AS `intTenantID`,`schshared`.`tbluserrole`.`intRoleID` AS `intRoleID`,`schshared`.`tbluserrole`.`intUpdated` AS `intUpdated`,`schshared`.`tbluserrole`.`intUserID` AS `intUserID`,`schshared`.`tbluserrole`.`strRoleUuid` AS `strRoleUuid` from `schshared`.`tbluserrole` where (`schshared`.`tbluserrole`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblusersetting`
--

/*!50001 DROP VIEW IF EXISTS `tblusersetting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblusersetting` AS select `schshared`.`tblusersetting`.`id` AS `id`,`schshared`.`tblusersetting`.`intTenantID` AS `intTenantID`,`schshared`.`tblusersetting`.`intUserID` AS `intUserID`,`schshared`.`tblusersetting`.`strName` AS `strName`,`schshared`.`tblusersetting`.`strValue` AS `strValue` from `schshared`.`tblusersetting` where (`schshared`.`tblusersetting`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblusersystemproperty`
--

/*!50001 DROP VIEW IF EXISTS `tblusersystemproperty`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblusersystemproperty` AS select `schshared`.`tblusersystemproperty`.`id` AS `id`,`schshared`.`tblusersystemproperty`.`intTenantID` AS `intTenantID`,`schshared`.`tblusersystemproperty`.`dtmLastUpdated` AS `dtmLastUpdated`,`schshared`.`tblusersystemproperty`.`intSystemID` AS `intSystemID`,`schshared`.`tblusersystemproperty`.`intUserID` AS `intUserID`,`schshared`.`tblusersystemproperty`.`strPropertyName` AS `strPropertyName`,`schshared`.`tblusersystemproperty`.`strPropertyValue` AS `strPropertyValue` from `schshared`.`tblusersystemproperty` where (`schshared`.`tblusersystemproperty`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblusersystempropertylog`
--

/*!50001 DROP VIEW IF EXISTS `tblusersystempropertylog`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblusersystempropertylog` AS select `schshared`.`tblusersystempropertylog`.`id` AS `id`,`schshared`.`tblusersystempropertylog`.`intTenantID` AS `intTenantID`,`schshared`.`tblusersystempropertylog`.`dtmUpdated` AS `dtmUpdated`,`schshared`.`tblusersystempropertylog`.`intSystemID` AS `intSystemID`,`schshared`.`tblusersystempropertylog`.`intUserID` AS `intUserID`,`schshared`.`tblusersystempropertylog`.`strPropertyName` AS `strPropertyName`,`schshared`.`tblusersystempropertylog`.`strPropertyValue` AS `strPropertyValue` from `schshared`.`tblusersystempropertylog` where (`schshared`.`tblusersystempropertylog`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblv6apiapplicationusermapping`
--

/*!50001 DROP VIEW IF EXISTS `tblv6apiapplicationusermapping`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblv6apiapplicationusermapping` AS select `schshared`.`tblv6apiapplicationusermapping`.`id` AS `id`,`schshared`.`tblv6apiapplicationusermapping`.`intTenantID` AS `intTenantID`,`schshared`.`tblv6apiapplicationusermapping`.`intUpdated` AS `intUpdated`,`schshared`.`tblv6apiapplicationusermapping`.`intUserID` AS `intUserID`,`schshared`.`tblv6apiapplicationusermapping`.`strApiApplicationClientId` AS `strApiApplicationClientId`,`schshared`.`tblv6apiapplicationusermapping`.`strApiApplicationUuid` AS `strApiApplicationUuid`,`schshared`.`tblv6apiapplicationusermapping`.`strTenantUuid` AS `strTenantUuid` from `schshared`.`tblv6apiapplicationusermapping` where (`schshared`.`tblv6apiapplicationusermapping`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblv6rolepermissionlookup`
--

/*!50001 DROP VIEW IF EXISTS `tblv6rolepermissionlookup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblv6rolepermissionlookup` AS select `schshared`.`tblv6rolepermissionlookup`.`id` AS `id`,`schshared`.`tblv6rolepermissionlookup`.`intTenantID` AS `intTenantID`,`schshared`.`tblv6rolepermissionlookup`.`intRoleID` AS `intRoleID`,`schshared`.`tblv6rolepermissionlookup`.`strPermission` AS `strPermission`,`schshared`.`tblv6rolepermissionlookup`.`strRoleUuid` AS `strRoleUuid` from `schshared`.`tblv6rolepermissionlookup` where (`schshared`.`tblv6rolepermissionlookup`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblv6tenantuserinactivitytimeout`
--

/*!50001 DROP VIEW IF EXISTS `tblv6tenantuserinactivitytimeout`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblv6tenantuserinactivitytimeout` AS select `schshared`.`tblv6tenantuserinactivitytimeout`.`id` AS `id`,`schshared`.`tblv6tenantuserinactivitytimeout`.`intTenantID` AS `intTenantID`,`schshared`.`tblv6tenantuserinactivitytimeout`.`intSessionTimeoutSeconds` AS `intSessionTimeoutSeconds`,`schshared`.`tblv6tenantuserinactivitytimeout`.`intUpdated` AS `intUpdated` from `schshared`.`tblv6tenantuserinactivitytimeout` where (`schshared`.`tblv6tenantuserinactivitytimeout`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblv6userdeletiontracking`
--

/*!50001 DROP VIEW IF EXISTS `tblv6userdeletiontracking`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblv6userdeletiontracking` AS select `schshared`.`tblv6userdeletiontracking`.`id` AS `id`,`schshared`.`tblv6userdeletiontracking`.`intTenantID` AS `intTenantID`,`schshared`.`tblv6userdeletiontracking`.`dtmDeletionDate` AS `dtmDeletionDate`,`schshared`.`tblv6userdeletiontracking`.`intUserID` AS `intUserID` from `schshared`.`tblv6userdeletiontracking` where (`schshared`.`tblv6userdeletiontracking`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblwarranty`
--

/*!50001 DROP VIEW IF EXISTS `tblwarranty`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblwarranty` AS select `schshared`.`tblwarranty`.`id` AS `id`,`schshared`.`tblwarranty`.`intTenantID` AS `intTenantID`,`schshared`.`tblwarranty`.`dtmDateAdded` AS `dtmDateAdded`,`schshared`.`tblwarranty`.`dtmExpiryDate` AS `dtmExpiryDate`,`schshared`.`tblwarranty`.`intAssetID` AS `intAssetID`,`schshared`.`tblwarranty`.`intMeterReadingUnitsID` AS `intMeterReadingUnitsID`,`schshared`.`tblwarranty`.`intProvider` AS `intProvider`,`schshared`.`tblwarranty`.`intWarrantyTypeID` AS `intWarrantyTypeID`,`schshared`.`tblwarranty`.`intWarrantyUsageTermTypeID` AS `intWarrantyUsageTermTypeID`,`schshared`.`tblwarranty`.`strCertificateNumber` AS `strCertificateNumber`,`schshared`.`tblwarranty`.`strDescription` AS `strDescription`,`schshared`.`tblwarranty`.`strMeterReadingValueLimit` AS `strMeterReadingValueLimit`,`schshared`.`tblwarranty`.`strUuid` AS `strUuid` from `schshared`.`tblwarranty` where (`schshared`.`tblwarranty`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblwarrantytype`
--

/*!50001 DROP VIEW IF EXISTS `tblwarrantytype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblwarrantytype` AS select `schshared`.`tblwarrantytype`.`id` AS `id`,`schshared`.`tblwarrantytype`.`strName` AS `strName` from `schshared`.`tblwarrantytype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblwarrantyusagetermtype`
--

/*!50001 DROP VIEW IF EXISTS `tblwarrantyusagetermtype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblwarrantyusagetermtype` AS select `schshared`.`tblwarrantyusagetermtype`.`id` AS `id`,`schshared`.`tblwarrantyusagetermtype`.`strName` AS `strName` from `schshared`.`tblwarrantyusagetermtype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblworkflow`
--

/*!50001 DROP VIEW IF EXISTS `tblworkflow`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblworkflow` AS select `schshared`.`tblworkflow`.`id` AS `id`,`schshared`.`tblworkflow`.`intTenantID` AS `intTenantID`,`schshared`.`tblworkflow`.`bolActive` AS `bolActive`,`schshared`.`tblworkflow`.`bolSystem` AS `bolSystem`,`schshared`.`tblworkflow`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblworkflow`.`dtmTbeLastTriggerDate` AS `dtmTbeLastTriggerDate`,`schshared`.`tblworkflow`.`intCreatedByUserID` AS `intCreatedByUserID`,`schshared`.`tblworkflow`.`intDeResourceID` AS `intDeResourceID`,`schshared`.`tblworkflow`.`intTbeEveryXxxSeconds` AS `intTbeEveryXxxSeconds`,`schshared`.`tblworkflow`.`intWorkflowTriggerTypeID` AS `intWorkflowTriggerTypeID`,`schshared`.`tblworkflow`.`strDeExtraInfo` AS `strDeExtraInfo`,`schshared`.`tblworkflow`.`strName` AS `strName` from `schshared`.`tblworkflow` where (`schshared`.`tblworkflow`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblworkflowactivity`
--

/*!50001 DROP VIEW IF EXISTS `tblworkflowactivity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblworkflowactivity` AS select `schshared`.`tblworkflowactivity`.`id` AS `id`,`schshared`.`tblworkflowactivity`.`intTenantID` AS `intTenantID`,`schshared`.`tblworkflowactivity`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblworkflowactivity`.`intCreatedByUserID` AS `intCreatedByUserID`,`schshared`.`tblworkflowactivity`.`intIntegrationActionID` AS `intIntegrationActionID`,`schshared`.`tblworkflowactivity`.`intIntegrationID` AS `intIntegrationID`,`schshared`.`tblworkflowactivity`.`intIntegrationTemplateID` AS `intIntegrationTemplateID`,`schshared`.`tblworkflowactivity`.`intOrder` AS `intOrder`,`schshared`.`tblworkflowactivity`.`intParentWorkflowActivityID` AS `intParentWorkflowActivityID`,`schshared`.`tblworkflowactivity`.`intParentWorkflowID` AS `intParentWorkflowID`,`schshared`.`tblworkflowactivity`.`intWorkflowActivityTypeGroupID` AS `intWorkflowActivityTypeGroupID`,`schshared`.`tblworkflowactivity`.`intWorkflowActivityTypeID` AS `intWorkflowActivityTypeID`,`schshared`.`tblworkflowactivity`.`strName` AS `strName`,`schshared`.`tblworkflowactivity`.`strRole` AS `strRole` from `schshared`.`tblworkflowactivity` where (`schshared`.`tblworkflowactivity`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblworkflowactivitytype`
--

/*!50001 DROP VIEW IF EXISTS `tblworkflowactivitytype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblworkflowactivitytype` AS select `schshared`.`tblworkflowactivitytype`.`id` AS `id`,`schshared`.`tblworkflowactivitytype`.`intWorkflowActivityTypeGroupID` AS `intWorkflowActivityTypeGroupID`,`schshared`.`tblworkflowactivitytype`.`strDescription` AS `strDescription`,`schshared`.`tblworkflowactivitytype`.`strName` AS `strName` from `schshared`.`tblworkflowactivitytype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblworkflowactivitytypegroup`
--

/*!50001 DROP VIEW IF EXISTS `tblworkflowactivitytypegroup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblworkflowactivitytypegroup` AS select `schshared`.`tblworkflowactivitytypegroup`.`id` AS `id`,`schshared`.`tblworkflowactivitytypegroup`.`strName` AS `strName` from `schshared`.`tblworkflowactivitytypegroup` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblworkflowcomment`
--

/*!50001 DROP VIEW IF EXISTS `tblworkflowcomment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblworkflowcomment` AS select `schshared`.`tblworkflowcomment`.`id` AS `id`,`schshared`.`tblworkflowcomment`.`intTenantID` AS `intTenantID`,`schshared`.`tblworkflowcomment`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblworkflowcomment`.`intCommentedByUser` AS `intCommentedByUser`,`schshared`.`tblworkflowcomment`.`intPkPoLogId` AS `intPkPoLogId`,`schshared`.`tblworkflowcomment`.`intPkPurchaseOrderId` AS `intPkPurchaseOrderId`,`schshared`.`tblworkflowcomment`.`strComment` AS `strComment` from `schshared`.`tblworkflowcomment` where (`schshared`.`tblworkflowcomment`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblworkflowexecution`
--

/*!50001 DROP VIEW IF EXISTS `tblworkflowexecution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblworkflowexecution` AS select `schshared`.`tblworkflowexecution`.`id` AS `id`,`schshared`.`tblworkflowexecution`.`intTenantID` AS `intTenantID`,`schshared`.`tblworkflowexecution`.`bolSuccess` AS `bolSuccess`,`schshared`.`tblworkflowexecution`.`dtmEndTime` AS `dtmEndTime`,`schshared`.`tblworkflowexecution`.`dtmStartTime` AS `dtmStartTime`,`schshared`.`tblworkflowexecution`.`intWorkflowID` AS `intWorkflowID`,`schshared`.`tblworkflowexecution`.`strLog` AS `strLog` from `schshared`.`tblworkflowexecution` where (`schshared`.`tblworkflowexecution`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblworkflowtriggertype`
--

/*!50001 DROP VIEW IF EXISTS `tblworkflowtriggertype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblworkflowtriggertype` AS select `schshared`.`tblworkflowtriggertype`.`id` AS `id`,`schshared`.`tblworkflowtriggertype`.`intWorkflowTriggerTypeGroupID` AS `intWorkflowTriggerTypeGroupID`,`schshared`.`tblworkflowtriggertype`.`strName` AS `strName` from `schshared`.`tblworkflowtriggertype` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblworkflowtriggertypegroup`
--

/*!50001 DROP VIEW IF EXISTS `tblworkflowtriggertypegroup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblworkflowtriggertypegroup` AS select `schshared`.`tblworkflowtriggertypegroup`.`id` AS `id`,`schshared`.`tblworkflowtriggertypegroup`.`strName` AS `strName` from `schshared`.`tblworkflowtriggertypegroup` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblworkorder`
--

/*!50001 DROP VIEW IF EXISTS `tblworkorder`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblworkorder` AS select `schshared`.`tblworkorder`.`id` AS `id`,`schshared`.`tblworkorder`.`intTenantID` AS `intTenantID`,`schshared`.`tblworkorder`.`bolLocked` AS `bolLocked`,`schshared`.`tblworkorder`.`bolRequiresSignature` AS `bolRequiresSignature`,`schshared`.`tblworkorder`.`datForDate` AS `datForDate`,`schshared`.`tblworkorder`.`dblAssetProductionTime` AS `dblAssetProductionTime`,`schshared`.`tblworkorder`.`dblSuggestedTime` AS `dblSuggestedTime`,`schshared`.`tblworkorder`.`dblTimeEstimatedHours` AS `dblTimeEstimatedHours`,`schshared`.`tblworkorder`.`dblTimeSpentHours` AS `dblTimeSpentHours`,`schshared`.`tblworkorder`.`dblTotalMaintHoursOffline` AS `dblTotalMaintHoursOffline`,`schshared`.`tblworkorder`.`dblTotalMaintHoursOnline` AS `dblTotalMaintHoursOnline`,`schshared`.`tblworkorder`.`dtmDateCompleted` AS `dtmDateCompleted`,`schshared`.`tblworkorder`.`dtmDateCreated` AS `dtmDateCreated`,`schshared`.`tblworkorder`.`dtmDateLastModified` AS `dtmDateLastModified`,`schshared`.`tblworkorder`.`dtmDateSigned` AS `dtmDateSigned`,`schshared`.`tblworkorder`.`dtmSuggestedCompletionDate` AS `dtmSuggestedCompletionDate`,`schshared`.`tblworkorder`.`dtmSuggestedStartDate` AS `dtmSuggestedStartDate`,`schshared`.`tblworkorder`.`intAccountID` AS `intAccountID`,`schshared`.`tblworkorder`.`intChargeDepartmentID` AS `intChargeDepartmentID`,`schshared`.`tblworkorder`.`intCompletedByUserID` AS `intCompletedByUserID`,`schshared`.`tblworkorder`.`intDWOENotificationsSent` AS `intDWOENotificationsSent`,`schshared`.`tblworkorder`.`intLastModifiedByUserID` AS `intLastModifiedByUserID`,`schshared`.`tblworkorder`.`intMaintenanceTypeID` AS `intMaintenanceTypeID`,`schshared`.`tblworkorder`.`intOriginWorkOrderTaskID` AS `intOriginWorkOrderTaskID`,`schshared`.`tblworkorder`.`intPriorityID` AS `intPriorityID`,`schshared`.`tblworkorder`.`intProjectID` AS `intProjectID`,`schshared`.`tblworkorder`.`intRCAActionID` AS `intRCAActionID`,`schshared`.`tblworkorder`.`intRCACauseID` AS `intRCACauseID`,`schshared`.`tblworkorder`.`intRCAProblemID` AS `intRCAProblemID`,`schshared`.`tblworkorder`.`intRequestedByUserID` AS `intRequestedByUserID`,`schshared`.`tblworkorder`.`intScheduledMaintenanceID` AS `intScheduledMaintenanceID`,`schshared`.`tblworkorder`.`intSignedByUserID` AS `intSignedByUserID`,`schshared`.`tblworkorder`.`intSiteID` AS `intSiteID`,`schshared`.`tblworkorder`.`intUpdated` AS `intUpdated`,`schshared`.`tblworkorder`.`intWorkOrderStatusGroup` AS `intWorkOrderStatusGroup`,`schshared`.`tblworkorder`.`intWorkOrderStatusID` AS `intWorkOrderStatusID`,`schshared`.`tblworkorder`.`strAdminNotes` AS `strAdminNotes`,`schshared`.`tblworkorder`.`strAssetIds` AS `strAssetIds`,`schshared`.`tblworkorder`.`strAssets` AS `strAssets`,`schshared`.`tblworkorder`.`strAssignedUserIds` AS `strAssignedUserIds`,`schshared`.`tblworkorder`.`strAssignedUsers` AS `strAssignedUsers`,`schshared`.`tblworkorder`.`strCode` AS `strCode`,`schshared`.`tblworkorder`.`strCompletedByUserIds` AS `strCompletedByUserIds`,`schshared`.`tblworkorder`.`strCompletedByUsers` AS `strCompletedByUsers`,`schshared`.`tblworkorder`.`strCompletionNotes` AS `strCompletionNotes`,`schshared`.`tblworkorder`.`strCustomerIds` AS `strCustomerIds`,`schshared`.`tblworkorder`.`strCustomers` AS `strCustomers`,`schshared`.`tblworkorder`.`strDescription` AS `strDescription`,`schshared`.`tblworkorder`.`strEmailUserGuest` AS `strEmailUserGuest`,`schshared`.`tblworkorder`.`strNameUserGuest` AS `strNameUserGuest`,`schshared`.`tblworkorder`.`strPhoneUserGuest` AS `strPhoneUserGuest`,`schshared`.`tblworkorder`.`strProblem` AS `strProblem`,`schshared`.`tblworkorder`.`strRootCause` AS `strRootCause`,`schshared`.`tblworkorder`.`strSolution` AS `strSolution`,`schshared`.`tblworkorder`.`strSysCustomColumnValues` AS `strSysCustomColumnValues`,`schshared`.`tblworkorder`.`strUuid` AS `strUuid`,`schshared`.`tblworkorder`.`strVendorIds` AS `strVendorIds`,`schshared`.`tblworkorder`.`strVendors` AS `strVendors` from `schshared`.`tblworkorder` where (`schshared`.`tblworkorder`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblworkorderasset`
--

/*!50001 DROP VIEW IF EXISTS `tblworkorderasset`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblworkorderasset` AS select `schshared`.`tblworkorderasset`.`id` AS `id`,`schshared`.`tblworkorderasset`.`intTenantID` AS `intTenantID`,`schshared`.`tblworkorderasset`.`intAssetID` AS `intAssetID`,`schshared`.`tblworkorderasset`.`intUpdated` AS `intUpdated`,`schshared`.`tblworkorderasset`.`intWorkOrderID` AS `intWorkOrderID` from `schshared`.`tblworkorderasset` where (`schshared`.`tblworkorderasset`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblworkorderbusiness`
--

/*!50001 DROP VIEW IF EXISTS `tblworkorderbusiness`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblworkorderbusiness` AS select `schshared`.`tblworkorderbusiness`.`id` AS `id`,`schshared`.`tblworkorderbusiness`.`intTenantID` AS `intTenantID`,`schshared`.`tblworkorderbusiness`.`bolPrimary` AS `bolPrimary`,`schshared`.`tblworkorderbusiness`.`intAssetID` AS `intAssetID`,`schshared`.`tblworkorderbusiness`.`intBusinessGroupID` AS `intBusinessGroupID`,`schshared`.`tblworkorderbusiness`.`intBusinessID` AS `intBusinessID`,`schshared`.`tblworkorderbusiness`.`intUpdated` AS `intUpdated`,`schshared`.`tblworkorderbusiness`.`intWorkOrderID` AS `intWorkOrderID` from `schshared`.`tblworkorderbusiness` where (`schshared`.`tblworkorderbusiness`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblworkorderlog`
--

/*!50001 DROP VIEW IF EXISTS `tblworkorderlog`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblworkorderlog` AS select `schshared`.`tblworkorderlog`.`id` AS `id`,`schshared`.`tblworkorderlog`.`intTenantID` AS `intTenantID`,`schshared`.`tblworkorderlog`.`dblHoursTaken` AS `dblHoursTaken`,`schshared`.`tblworkorderlog`.`dblInventoryCost` AS `dblInventoryCost`,`schshared`.`tblworkorderlog`.`dblPricePerUnit` AS `dblPricePerUnit`,`schshared`.`tblworkorderlog`.`dtmLogDate` AS `dtmLogDate`,`schshared`.`tblworkorderlog`.`intAssetID` AS `intAssetID`,`schshared`.`tblworkorderlog`.`intCostTypeID` AS `intCostTypeID`,`schshared`.`tblworkorderlog`.`intCurrencyID` AS `intCurrencyID`,`schshared`.`tblworkorderlog`.`intLogTypeID` AS `intLogTypeID`,`schshared`.`tblworkorderlog`.`intMaintenanceTypeID` AS `intMaintenanceTypeID`,`schshared`.`tblworkorderlog`.`intStockID` AS `intStockID`,`schshared`.`tblworkorderlog`.`intUserID` AS `intUserID`,`schshared`.`tblworkorderlog`.`intWorkOrderID` AS `intWorkOrderID`,`schshared`.`tblworkorderlog`.`qtyQuantityUsed` AS `qtyQuantityUsed`,`schshared`.`tblworkorderlog`.`strCompletionNotes` AS `strCompletionNotes` from `schshared`.`tblworkorderlog` where (`schshared`.`tblworkorderlog`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblworkorderpart`
--

/*!50001 DROP VIEW IF EXISTS `tblworkorderpart`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblworkorderpart` AS select `schshared`.`tblworkorderpart`.`id` AS `id`,`schshared`.`tblworkorderpart`.`intTenantID` AS `intTenantID`,`schshared`.`tblworkorderpart`.`intAssetID` AS `intAssetID`,`schshared`.`tblworkorderpart`.`intPartID` AS `intPartID`,`schshared`.`tblworkorderpart`.`intStockID` AS `intStockID`,`schshared`.`tblworkorderpart`.`intUpdated` AS `intUpdated`,`schshared`.`tblworkorderpart`.`intWorkOrderID` AS `intWorkOrderID`,`schshared`.`tblworkorderpart`.`qtyActualQuantityUsed` AS `qtyActualQuantityUsed`,`schshared`.`tblworkorderpart`.`qtySuggestedQuantity` AS `qtySuggestedQuantity` from `schshared`.`tblworkorderpart` where (`schshared`.`tblworkorderpart`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblworkorderstatus`
--

/*!50001 DROP VIEW IF EXISTS `tblworkorderstatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblworkorderstatus` AS select `schshared`.`tblworkorderstatus`.`id` AS `id`,`schshared`.`tblworkorderstatus`.`intTenantID` AS `intTenantID`,`schshared`.`tblworkorderstatus`.`intSysCode` AS `intSysCode`,`schshared`.`tblworkorderstatus`.`intControlID` AS `intControlID`,`schshared`.`tblworkorderstatus`.`intUpdated` AS `intUpdated`,`schshared`.`tblworkorderstatus`.`strName` AS `strName`,`schshared`.`tblworkorderstatus`.`strUuid` AS `strUuid` from `schshared`.`tblworkorderstatus` where (`schshared`.`tblworkorderstatus`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblworkorderstatustransition`
--

/*!50001 DROP VIEW IF EXISTS `tblworkorderstatustransition`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblworkorderstatustransition` AS select `schshared`.`tblworkorderstatustransition`.`id` AS `id`,`schshared`.`tblworkorderstatustransition`.`intTenantID` AS `intTenantID`,`schshared`.`tblworkorderstatustransition`.`dtmDate` AS `dtmDate`,`schshared`.`tblworkorderstatustransition`.`intFromWorkOrderStatusID` AS `intFromWorkOrderStatusID`,`schshared`.`tblworkorderstatustransition`.`intToWorkOrderStatusID` AS `intToWorkOrderStatusID`,`schshared`.`tblworkorderstatustransition`.`intUserID` AS `intUserID`,`schshared`.`tblworkorderstatustransition`.`intWorkOrderID` AS `intWorkOrderID` from `schshared`.`tblworkorderstatustransition` where (`schshared`.`tblworkorderstatustransition`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblworkordertask`
--

/*!50001 DROP VIEW IF EXISTS `tblworkordertask`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblworkordertask` AS select `schshared`.`tblworkordertask`.`id` AS `id`,`schshared`.`tblworkordertask`.`intTenantID` AS `intTenantID`,`schshared`.`tblworkordertask`.`bolHasWorkOrderInfo` AS `bolHasWorkOrderInfo`,`schshared`.`tblworkordertask`.`dblTimeEstimatedHours` AS `dblTimeEstimatedHours`,`schshared`.`tblworkordertask`.`dblTimeSpentHours` AS `dblTimeSpentHours`,`schshared`.`tblworkordertask`.`dtmDateCompleted` AS `dtmDateCompleted`,`schshared`.`tblworkordertask`.`dtmStartDate` AS `dtmStartDate`,`schshared`.`tblworkordertask`.`intAssetID` AS `intAssetID`,`schshared`.`tblworkordertask`.`intAssignedToUserID` AS `intAssignedToUserID`,`schshared`.`tblworkordertask`.`intCompletedByUserID` AS `intCompletedByUserID`,`schshared`.`tblworkordertask`.`intMeterReadingUnitID` AS `intMeterReadingUnitID`,`schshared`.`tblworkordertask`.`intOrder` AS `intOrder`,`schshared`.`tblworkordertask`.`intParentWorkOrderTaskID` AS `intParentWorkOrderTaskID`,`schshared`.`tblworkordertask`.`intTaskGroupControlID` AS `intTaskGroupControlID`,`schshared`.`tblworkordertask`.`intTaskResultValueID` AS `intTaskResultValueID`,`schshared`.`tblworkordertask`.`intTaskType` AS `intTaskType`,`schshared`.`tblworkordertask`.`intUpdated` AS `intUpdated`,`schshared`.`tblworkordertask`.`intWorkOrderID` AS `intWorkOrderID`,`schshared`.`tblworkordertask`.`strDescription` AS `strDescription`,`schshared`.`tblworkordertask`.`strResult` AS `strResult`,`schshared`.`tblworkordertask`.`strTaskNotesCompletion` AS `strTaskNotesCompletion`,`schshared`.`tblworkordertask`.`strUuid` AS `strUuid` from `schshared`.`tblworkordertask` where (`schshared`.`tblworkordertask`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblworkordertaskadditionalproperties`
--

/*!50001 DROP VIEW IF EXISTS `tblworkordertaskadditionalproperties`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblworkordertaskadditionalproperties` AS select `schshared`.`tblworkordertaskadditionalproperties`.`id` AS `id`,`schshared`.`tblworkordertaskadditionalproperties`.`intTenantID` AS `intTenantID`,`schshared`.`tblworkordertaskadditionalproperties`.`bolIsCompletable` AS `bolIsCompletable`,`schshared`.`tblworkordertaskadditionalproperties`.`intWorkOrderTaskID` AS `intWorkOrderTaskID` from `schshared`.`tblworkordertaskadditionalproperties` where (`schshared`.`tblworkordertaskadditionalproperties`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblworkordertaskfile`
--

/*!50001 DROP VIEW IF EXISTS `tblworkordertaskfile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblworkordertaskfile` AS select `schshared`.`tblworkordertaskfile`.`id` AS `id`,`schshared`.`tblworkordertaskfile`.`intTenantID` AS `intTenantID`,`schshared`.`tblworkordertaskfile`.`intFileID` AS `intFileID`,`schshared`.`tblworkordertaskfile`.`intOrder` AS `intOrder`,`schshared`.`tblworkordertaskfile`.`intWorkOrderTaskID` AS `intWorkOrderTaskID` from `schshared`.`tblworkordertaskfile` where (`schshared`.`tblworkordertaskfile`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblworkordertaskuser`
--

/*!50001 DROP VIEW IF EXISTS `tblworkordertaskuser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblworkordertaskuser` AS select `schshared`.`tblworkordertaskuser`.`id` AS `id`,`schshared`.`tblworkordertaskuser`.`intTenantID` AS `intTenantID`,`schshared`.`tblworkordertaskuser`.`intPriority` AS `intPriority`,`schshared`.`tblworkordertaskuser`.`intUserID` AS `intUserID`,`schshared`.`tblworkordertaskuser`.`intWorkOrderTaskID` AS `intWorkOrderTaskID` from `schshared`.`tblworkordertaskuser` where (`schshared`.`tblworkordertaskuser`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblworkorderuser`
--

/*!50001 DROP VIEW IF EXISTS `tblworkorderuser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblworkorderuser` AS select `schshared`.`tblworkorderuser`.`id` AS `id`,`schshared`.`tblworkorderuser`.`intTenantID` AS `intTenantID`,`schshared`.`tblworkorderuser`.`bolCanUpdateOrClose` AS `bolCanUpdateOrClose`,`schshared`.`tblworkorderuser`.`bolNotifyOnAssignment` AS `bolNotifyOnAssignment`,`schshared`.`tblworkorderuser`.`bolNotifyOnCompletion` AS `bolNotifyOnCompletion`,`schshared`.`tblworkorderuser`.`bolNotifyOnOnlineOffline` AS `bolNotifyOnOnlineOffline`,`schshared`.`tblworkorderuser`.`bolNotifyOnStatusChange` AS `bolNotifyOnStatusChange`,`schshared`.`tblworkorderuser`.`bolNotifyOnTaskCompleted` AS `bolNotifyOnTaskCompleted`,`schshared`.`tblworkorderuser`.`bolPrimaryTechnician` AS `bolPrimaryTechnician`,`schshared`.`tblworkorderuser`.`intUserID` AS `intUserID`,`schshared`.`tblworkorderuser`.`intWorkOrderID` AS `intWorkOrderID` from `schshared`.`tblworkorderuser` where (`schshared`.`tblworkorderuser`.`intTenantID` = `ma_get_current_tenant`()) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tblyemo`
--

/*!50001 DROP VIEW IF EXISTS `tblyemo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tblyemo` AS select `schshared`.`tblyemo`.`id` AS `id`,`schshared`.`tblyemo`.`Date` AS `Date`,`schshared`.`tblyemo`.`month` AS `month`,`schshared`.`tblyemo`.`monthName` AS `monthName`,`schshared`.`tblyemo`.`year` AS `year` from `schshared`.`tblyemo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vworkorder`
--

/*!50001 DROP VIEW IF EXISTS `vworkorder`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`usrAdmin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vworkorder` AS select `wo`.`id` AS `id`,`wo`.`intTenantID` AS `intTenantID`,`wo`.`bolLocked` AS `bolLocked`,`wo`.`bolRequiresSignature` AS `bolRequiresSignature`,`wo`.`datForDate` AS `datForDate`,`wo`.`dblAssetProductionTime` AS `dblAssetProductionTime`,`wo`.`dblSuggestedTime` AS `dblSuggestedTime`,`wo`.`dblTimeEstimatedHours` AS `dblTimeEstimatedHours`,`wo`.`dblTimeSpentHours` AS `dblTimeSpentHours`,`wo`.`dblTotalMaintHoursOffline` AS `dblTotalMaintHoursOffline`,`wo`.`dblTotalMaintHoursOnline` AS `dblTotalMaintHoursOnline`,`wo`.`dtmDateCompleted` AS `dtmDateCompleted`,`wo`.`dtmDateCreated` AS `dtmDateCreated`,`wo`.`dtmDateLastModified` AS `dtmDateLastModified`,`wo`.`dtmDateSigned` AS `dtmDateSigned`,`wo`.`dtmSuggestedCompletionDate` AS `dtmSuggestedCompletionDate`,`wo`.`dtmSuggestedStartDate` AS `dtmSuggestedStartDate`,`wo`.`intAccountID` AS `intAccountID`,`wo`.`intChargeDepartmentID` AS `intChargeDepartmentID`,`wo`.`intCompletedByUserID` AS `intCompletedByUserID`,`wo`.`intDWOENotificationsSent` AS `intDWOENotificationsSent`,`wo`.`intLastModifiedByUserID` AS `intLastModifiedByUserID`,`wo`.`intMaintenanceTypeID` AS `intMaintenanceTypeID`,`wo`.`intOriginWorkOrderTaskID` AS `intOriginWorkOrderTaskID`,`wo`.`intPriorityID` AS `intPriorityID`,`wo`.`intProjectID` AS `intProjectID`,`wo`.`intRCAActionID` AS `intRCAActionID`,`wo`.`intRCACauseID` AS `intRCACauseID`,`wo`.`intRCAProblemID` AS `intRCAProblemID`,`wo`.`intRequestedByUserID` AS `intRequestedByUserID`,`wo`.`intScheduledMaintenanceID` AS `intScheduledMaintenanceID`,`wo`.`intSignedByUserID` AS `intSignedByUserID`,`wo`.`intSiteID` AS `intSiteID`,`wo`.`intUpdated` AS `intUpdated`,`wo`.`intWorkOrderStatusGroup` AS `intWorkOrderStatusGroup`,`wo`.`intWorkOrderStatusID` AS `intWorkOrderStatusID`,`wo`.`strAdminNotes` AS `strAdminNotes`,`wo`.`strAssetIds` AS `strAssetIds`,`wo`.`strAssets` AS `strAssets`,`wo`.`strAssignedUserIds` AS `strAssignedUserIds`,`wo`.`strAssignedUsers` AS `strAssignedUsers`,`wo`.`strCode` AS `strCode`,`wo`.`strCompletedByUserIds` AS `strCompletedByUserIds`,`wo`.`strCompletedByUsers` AS `strCompletedByUsers`,`wo`.`strCompletionNotes` AS `strCompletionNotes`,`wo`.`strCustomerIds` AS `strCustomerIds`,`wo`.`strCustomers` AS `strCustomers`,`wo`.`strDescription` AS `strDescription`,`wo`.`strEmailUserGuest` AS `strEmailUserGuest`,`wo`.`strNameUserGuest` AS `strNameUserGuest`,`wo`.`strPhoneUserGuest` AS `strPhoneUserGuest`,`wo`.`strProblem` AS `strProblem`,`wo`.`strRootCause` AS `strRootCause`,`wo`.`strSolution` AS `strSolution`,`wo`.`strSysCustomColumnValues` AS `strSysCustomColumnValues`,`wo`.`strUuid` AS `strUuid`,`wo`.`strVendorIds` AS `strVendorIds`,`wo`.`strVendors` AS `strVendors`,`wos`.`intControlID` AS `intControlID`,`wos`.`intTenantID` AS `intTenantIDFromWorkOrderStatus` from (`tblworkorder` `wo` join `tblworkorderstatus` `wos`) where ((`wo`.`intWorkOrderStatusID` = `wos`.`id`) and (`wo`.`intTenantID` = `ma_get_current_tenant`()) and (`wos`.`intTenantID` = `wo`.`intTenantID`) and (`wos`.`intTenantID` = `ma_get_current_tenant`())) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-29 13:28:58
