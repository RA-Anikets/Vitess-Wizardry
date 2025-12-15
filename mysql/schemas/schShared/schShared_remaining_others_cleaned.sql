

SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardBI` BEFORE INSERT ON `tbldashboard` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardBU` BEFORE UPDATE ON `tbldashboard` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardBD` BEFORE DELETE ON `tbldashboard` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;

SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardDashboardPersonaBI` BEFORE INSERT ON `tbldashboarddashboardpersona` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardDashboardPersonaBU` BEFORE UPDATE ON `tbldashboarddashboardpersona` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardDashboardPersonaBD` BEFORE DELETE ON `tbldashboarddashboardpersona` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;

SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardFeatureNoticeBI` BEFORE INSERT ON `tbldashboardfeaturenotice` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardFeatureNoticeBU` BEFORE UPDATE ON `tbldashboardfeaturenotice` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardFeatureNoticeBD` BEFORE DELETE ON `tbldashboardfeaturenotice` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;

SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardWidgetBI` BEFORE INSERT ON `tbldashboardwidget` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardWidgetBU` BEFORE UPDATE ON `tbldashboardwidget` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardWidgetBD` BEFORE DELETE ON `tbldashboardwidget` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;

SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardWidgetDashboardPersonaBI` BEFORE INSERT ON `tbldashboardwidgetdashboardpersona` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardWidgetDashboardPersonaBU` BEFORE UPDATE ON `tbldashboardwidgetdashboardpersona` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardWidgetDashboardPersonaBD` BEFORE DELETE ON `tbldashboardwidgetdashboardpersona` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;

SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardWidgetParameterBI` BEFORE INSERT ON `tbldashboardwidgetparameter` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardWidgetParameterBU` BEFORE UPDATE ON `tbldashboardwidgetparameter` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardWidgetParameterBD` BEFORE DELETE ON `tbldashboardwidgetparameter` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;

SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardWidgetQueryBI` BEFORE INSERT ON `tbldashboardwidgetquery` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardWidgetQueryBU` BEFORE UPDATE ON `tbldashboardwidgetquery` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDashboardWidgetQueryBD` BEFORE DELETE ON `tbldashboardwidgetquery` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;

SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDdColumnBI` BEFORE INSERT ON `tblddcolumn` FOR EACH ROW BEGIN 
	IF NEW.intTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDdColumnBU` BEFORE UPDATE ON `tblddcolumn` FOR EACH ROW BEGIN 
	IF NEW.intTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDdColumnBD` BEFORE DELETE ON `tblddcolumn` FOR EACH ROW BEGIN 
	IF OLD.intTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;

SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDdTableBI` BEFORE INSERT ON `tblddtable` FOR EACH ROW BEGIN 
	IF NEW.intTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDdTableBU` BEFORE UPDATE ON `tblddtable` FOR EACH ROW BEGIN 
	IF NEW.intTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblDdTableBD` BEFORE DELETE ON `tblddtable` FOR EACH ROW BEGIN 
	IF OLD.intTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;

SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblEpicFeatureNoticeBI` BEFORE INSERT ON `tblepicfeaturenotice` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblEpicFeatureNoticeBU` BEFORE UPDATE ON `tblepicfeaturenotice` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblEpicFeatureNoticeBD` BEFORE DELETE ON `tblepicfeaturenotice` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;

SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblFeaturePropertyBI` BEFORE INSERT ON `tblfeatureproperty` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblFeaturePropertyBU` BEFORE UPDATE ON `tblfeatureproperty` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblFeaturePropertyBD` BEFORE DELETE ON `tblfeatureproperty` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;

SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblLocalizationBI` BEFORE INSERT ON `tbllocalization` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblLocalizationBU` BEFORE UPDATE ON `tbllocalization` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblLocalizationBD` BEFORE DELETE ON `tbllocalization` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;

SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblLocalizationArchiveBI` BEFORE INSERT ON `tbllocalizationarchive` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblLocalizationArchiveBU` BEFORE UPDATE ON `tbllocalizationarchive` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblLocalizationArchiveBD` BEFORE DELETE ON `tbllocalizationarchive` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;

SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblReportTemplateBI` BEFORE INSERT ON `tblreporttemplate` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblReportTemplateBU` BEFORE UPDATE ON `tblreporttemplate` FOR EACH ROW BEGIN 
	IF NEW.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblReportTemplateBD` BEFORE DELETE ON `tblreporttemplate` FOR EACH ROW BEGIN 
	IF OLD.intOwnerTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;

SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblStockTxTypeBI` BEFORE INSERT ON `tblstocktxtype` FOR EACH ROW BEGIN 
	IF NEW.intTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblStockTxTypeBU` BEFORE UPDATE ON `tblstocktxtype` FOR EACH ROW BEGIN 
	IF NEW.intTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblStockTxTypeBD` BEFORE DELETE ON `tblstocktxtype` FOR EACH ROW BEGIN 
	IF OLD.intTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;

SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblTenantRelationshipBI` BEFORE INSERT ON `tbltenantrelationship` FOR EACH ROW BEGIN 
	IF NEW.intMasterTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_insert_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblTenantRelationshipBU` BEFORE UPDATE ON `tbltenantrelationship` FOR EACH ROW BEGIN 
	IF NEW.intMasterTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_update_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE' ;
DELIMITER ;;
CREATE TRIGGER `trgMatblTenantRelationshipBD` BEFORE DELETE ON `tbltenantrelationship` FOR EACH ROW BEGIN 
	IF OLD.intMasterTenantID IS NULL AND @i_ma_current_tenant_id IS NOT NULL THEN 
		CALL ma_delete_prevented(); 
	END IF; 
END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;

DROP TABLE IF EXISTS `vworkorder`;
DROP VIEW IF EXISTS `vworkorder`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
CREATE VIEW `vworkorder` AS SELECT 
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
 1 AS `intTenantIDFromWorkOrderStatus`;
SET character_set_client = @saved_cs_client;
DROP PROCEDURE IF EXISTS `delete_data`;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' ;
DELIMITER ;;
CREATE PROCEDURE `delete_data`(     IN inputTenantId bigint )
BEGIN      DECLARE done INT DEFAULT 0;     DECLARE v_tableName varchar(200);     DECLARE v_isBatchDelete INT;     DECLARE info TEXT;     DECLARE db_cursor CURSOR FOR SELECT strTableName, isBatchDeleteApplicable FROM tblTenantDeleteTableNames;     DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;      OPEN db_cursor;     read_loop: LOOP  	    FETCH db_cursor INTO v_tableName, v_isBatchDelete;  	    call isTenantDeleteExecutionValid(@isValid);          IF done OR !@isValid THEN             LEAVE read_loop;         END IF;    		call delete_table_data(inputTenantId, v_tableName, v_isBatchDelete);      END LOOP;     CLOSE db_cursor; END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
DROP PROCEDURE IF EXISTS `delete_table_data`;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' ;
DELIMITER ;;
CREATE PROCEDURE `delete_table_data`( IN inputTenantId bigint, IN inputTable varchar(500), IN isBatchDelete int )
proc_Exit: BEGIN  	DECLARE batch_size INT DEFAULT 1000;     DECLARE isDeletionPaused INT;     DECLARE selectCountQuery VARCHAR(1000);     DECLARE row_count INT DEFAULT 1;     DECLARE isPresent INT DEFAULT 0;      SELECT FIND_IN_SET(inputTable, 'tblActivityLog,tblApiConsumer,tblApiConsumerUsage,tblApiUsage,tblAsset,tblAssetActivityLog,tblAssetBusiness,tblAssetCategory,tblAssetCategoryBarcodeFormatType,tblAssetCategoryResolved,tblAssetClassification,tblAssetClassificationLog,tblAssetConsumingReference,tblAssetDepletionTracking,tblAssetEvent,tblAssetEventType,tblAssetEventTypeAsset,tblAssetOfflineTracker,tblAssetProperty,tblAssetPropertyDomainElement,tblAssetPropertyValue,tblAssetPurchaseTracking,tblAssetResolved,tblAssetSelection,tblAssetUser,tblAuditLog,tblAuditLogArchive,tblAuthorization,tblBillingTerm,tblBOMGroup,tblBOMGroupPart,tblBranding,tblBusiness,tblBusinessContact,tblBusinessGroup,tblBusinessRole,tblCalendarEvent,tblCategorySetting,tblCertification,tblChargeDepartment,tblClientSession,tblCounter,tblCreditCard,tblCrmMetrics,tblCustomField,tblCustomFieldValue,tblCustomQuery,tblCycleCount,tblDashboardPersona,tblDashboardWidgetPosition,tblDashboardWidgetPositionFilter,tblDashboardWidgetPositionParameter,tblDatabaseExport,tblDdColumn,tblDdCustomTableRow,tblDdTable,tblDistribution,tblDistributionPaymentMethod,tblDistributionPricingTier,tblDistributionRecurringType,tblDistributionUnitPricingRule,tblEmailAttachment,tblEmailMessage,tblEvent,tblFile,tblFileContents,tblFirewall,tblFirewallLog,tblFirewallRule,tblGHGCalcAsset,tblGroupPermissions,tblGuestActions,tblGuestMrFormField,tblIntegration,tblIntegrationAction,tblIntegrationActionLog,tblIntegrationConfigurableProperty,tblIntegrationParameter,tblInventoryTransaction,tblKpiResult,tblLastMeterReading,tblLineItem,tblLocalizationPermission,tblLogAlert,tblLogMonitoring,tblLogSavedSearch,tblLogSavedSearchUser,tblLogUser,tblLookupTableSync,tblMaintenanceType,tblMASourceCounter,tblMASourceListing,tblMASourceSeller,tblMASourceWarranty,tblMessage,tblMeterReading,tblMeterReadingUnit,tblMiscCost,tblMiscCostType,tblMove,tblMoveAsset,tblMoveBack,tblMoveBackAsset,tblMoveSiteManager,tblMoveStatus,tblOrder,tblOrderRefund,tblOrderSystemProperty,tblPartner,tblPartsSelection,tblPaymentProfile,tblPerRecordValue,tblPriority,tblProductTimeTracking,tblProject,tblProjectUser,tblPurchaseOrder,tblPurchaseOrderAdditionalCost,tblPurchaseOrderAdditionalCostType,tblPurchaseOrderLineItem,tblPurchaseOrderLineItemRfq,tblPurchaseOrderLog,tblPurchaseOrderStatus,tblPurchaseOrderStatusTransition,tblPurchaseOrderStatusTransitionPermission,tblPurchaseOrderUser,tblQuote,tblRCAAction,tblRCACause,tblRCAGrouping,tblRCAGroupingAction,tblRCAGroupingCause,tblRCAProblem,tblReasonToSetAssetOffline,tblReasonToSetAssetOnline,tblReceipt,tblReceiptLineItem,tblReceiptStatus,tblReceiptStatusTransition,tblReconciliationControl,tblRegionUser,tblRegionUserGroup,tblRemoteEntityIdMapping,tblReportPreset,tblReportPresetParameter,tblReportsToResolved,tblResource,tblRFQ,tblRFQAsset,tblRFQLineItem,tblRFQQueue,tblRFQStatus,tblRFQStatusTransition,tblRole,tblRolePermission,tblSalesAccountTracking,tblScheduledMaintenance,tblScheduledMaintenanceActivityLog,tblScheduledMaintenanceAsset,tblScheduledMaintenanceBusiness,tblScheduledMaintenanceNesting,tblScheduledMaintenancePart,tblScheduledMaintenanceUser,tblScheduledReport,tblScheduledReportUser,tblScheduledTask,tblScheduledTaskFile,tblScheduleTrigger,tblServerSetting,tblShippingType,tblSiteAvailability,tblSiteSetting,tblSiteStock,tblSiteUser,tblSiteUserGroup,tblSmtpProvider,tblStock,tblStockAdjustmentItem,tblStockCycleCount,tblStockHistory,tblStockPurchaseItem,tblStockTxType,tblSystemMessageUser,tblTask,tblTaskFile,tblTaskGroup,tblTaskGroupAssetCategory,tblTaskResultConfiguration,tblTaskResultValue,tblTemplate,tblTemplateCategory,tblTestingBlack,tblTestingRedC,tblTestingWhiteC,tblTestingYellow,tblTestTable,tblUicProfile,tblUsageLog,tblV5DataToV5EventsConversionStatus,tblV6ApiApplicationUserMapping,tblV6RolePermissionLookup,tblV6TenantUserInactivityTimeout,tblV6TenantUserMgmtMigration,tblV6UserDeletionTracking,tblWarranty,tblWorkflow,tblWorkflowActivity,tblWorkflowComment,tblWorkflowExecution,tblWorkOrder,tblWorkOrderAsset,tblWorkOrderBusiness,tblWorkOrderLog,tblWorkOrderPart,tblWorkOrderStatus,tblWorkOrderStatusTransition,tblWorkOrderTask,tblWorkOrderTaskAdditionalProperties,tblWorkOrderTaskFile,tblWorkOrderTaskUser,tblWorkOrderUser')         into @isPresent;      IF @isPresent != 0 THEN          SET @beforeState = 'Before';         SET @afterState = 'After';         SET SESSION foreign_key_checks=OFF;         SET SESSION innodb_lock_wait_timeout = 1073741824;         SET @tableName = inputTable;          call isTenantDeleteExecutionValid(@isValid);          IF @isValid THEN  	        SET @insert1 = concat('INSERT INTO tblTenantPurgeRecordCount(intTenantID, strTableName, strState,intRecords,dtmCreated) '); 	        SET @select1 = concat('SELECT "', inputTenantId, '","', inputTable,  '","' , @beforeState, '", COUNT(1), now()  FROM ', inputTable, ' WHERE intTenantID = ', inputTenantId); 	        SET @sql1 = concat(@insert1, @select1); 	        PREPARE beforeStmt FROM @sql1; 	        EXECUTE beforeStmt; 	        DEALLOCATE PREPARE beforeStmt;         END IF;          IF isBatchDelete THEN              WHILE (row_count > 0) DO                  call isTenantDeleteExecutionValid(@isValid);                  IF !@isValid THEN                     UPDATE tblTenantDeleteStatus set strComment = "Tenant Data Deletion Paused" where intTenantID = inputTenantId;                     LEAVE proc_Exit;                 ELSE                     SET @selectCountQuery = concat('SELECT count(1) INTO @row_count FROM ', inputTable , ' WHERE intTenantID =  ', inputTenantId);                     PREPARE stmt FROM @selectCountQuery;                     EXECUTE stmt;                     DEALLOCATE PREPARE stmt;                      SET row_count = @row_count;                     IF row_count > 0 THEN                         SET @deleteVar = concat(' DELETE FROM ', inputTable , ' WHERE intTenantID =  ', inputTenantId, ' LIMIT ' , batch_size);                         PREPARE deleteStmt FROM @deleteVar;                         EXECUTE deleteStmt;                         DEALLOCATE PREPARE deleteStmt;                         DO SLEEP(1);                     END IF;                 END IF;             END WHILE;          ELSE              call isTenantDeleteExecutionValid(@isValid);              IF !@isValid THEN                 UPDATE tblTenantDeleteStatus set strComment = "Tenant Data Deletion Paused" where intTenantID = inputTenantId;                 LEAVE proc_Exit;             ELSE                 SET @deleteVar = concat(' DELETE FROM ', inputTable , ' WHERE intTenantID =  ', inputTenantId);                 PREPARE deleteStmt FROM @deleteVar;                 EXECUTE deleteStmt;                 DEALLOCATE PREPARE deleteStmt;             END IF;          END IF;          call isTenantDeleteExecutionValid(@isValid);          IF @isValid THEN             SET @insert2 = concat('INSERT INTO tblTenantPurgeRecordCount(intTenantID, strTableName, strState,intRecords,dtmCreated) ');             SET @select2 = concat('SELECT "', inputTenantId, '","', inputTable,  '","' , @afterState, '", COUNT(1), now()  FROM ', inputTable, ' WHERE intTenantID = ', inputTenantId);             SET @sql2 = concat(@insert2, @select2);             PREPARE afterStmt FROM @sql2;             EXECUTE afterStmt;             DEALLOCATE PREPARE afterStmt;         END IF;      END IF; END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
DROP PROCEDURE IF EXISTS `isTenantDeleteExecutionValid`;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' ;
DELIMITER ;;
CREATE PROCEDURE `isTenantDeleteExecutionValid`( OUT isValid INT)
BEGIN 	SELECT intIntValue INTO @isDeletePausedByUser FROM  tblBorgSetting where strName = 'Disable in-progress data deletion';  	SELECT (DAYOFWEEK(NOW()) BETWEEN 3 AND 7 AND HOUR(NOW()) >= 0 AND HOUR(NOW()) < 8)            OR DAYOFWEEK(NOW()) = 7 OR DAYOFWEEK(NOW()) = 1 OR (DAYOFWEEK(NOW()) = 2 AND HOUR(NOW()) < 8) into @isDeletionValidByTime;      SELECT @isDeletionValidByTime AND !@isDeletePausedByUser into isValid; END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
DROP PROCEDURE IF EXISTS `optimize_tables_after_delete`;
SET @saved_cs_client      = @@character_set_client ;
SET @saved_cs_results     = @@character_set_results ;
SET @saved_col_connection = @@collation_connection ;
SET character_set_client  = utf8mb4 ;
SET character_set_results = utf8mb4 ;
SET collation_connection  = utf8mb4_0900_ai_ci ;
SET @saved_sql_mode       = @@sql_mode ;
SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' ;
DELIMITER ;;
CREATE PROCEDURE `optimize_tables_after_delete`(IN tableName varchar(500))
BEGIN  	if tableName = "ALL_TABLES" THEN  	    SET SESSION foreign_key_checks=OFF;  		OPTIMIZE TABLE  tblActivityLog ; 		OPTIMIZE TABLE  tblApiConsumer ; 		OPTIMIZE TABLE  tblApiConsumerUsage ; 		OPTIMIZE TABLE  tblApiUsage ; 		OPTIMIZE TABLE  tblAsset ; 		OPTIMIZE TABLE  tblAssetActivityLog ; 		OPTIMIZE TABLE  tblAssetBusiness ; 		OPTIMIZE TABLE  tblAssetCategory ; 		OPTIMIZE TABLE  tblAssetCategoryBarcodeFormatType ; 		OPTIMIZE TABLE  tblAssetCategoryResolved ; 		OPTIMIZE TABLE  tblAssetClassification ; 		OPTIMIZE TABLE  tblAssetClassificationLog ; 		OPTIMIZE TABLE  tblAssetConsumingReference ; 		OPTIMIZE TABLE  tblAssetDepletionTracking ; 		OPTIMIZE TABLE  tblAssetEvent ; 		OPTIMIZE TABLE  tblAssetEventType ; 		OPTIMIZE TABLE  tblAssetEventTypeAsset ; 		OPTIMIZE TABLE  tblAssetOfflineTracker ; 		OPTIMIZE TABLE  tblAssetProperty ; 		OPTIMIZE TABLE  tblAssetPropertyDomainElement ; 		OPTIMIZE TABLE  tblAssetPropertyValue ; 		OPTIMIZE TABLE  tblAssetPurchaseTracking ; 		OPTIMIZE TABLE  tblAssetResolved ; 		OPTIMIZE TABLE  tblAssetSelection ; 		OPTIMIZE TABLE  tblAssetUser ; 		OPTIMIZE TABLE  tblAuditLog ; 	    OPTIMIZE TABLE  tblAuditLogArchive ; 		OPTIMIZE TABLE  tblAuthorization ; 		OPTIMIZE TABLE  tblBillingTerm ; 		OPTIMIZE TABLE  tblBOMGroup ; 		OPTIMIZE TABLE  tblBOMGroupPart ; 		OPTIMIZE TABLE  tblBranding ; 		OPTIMIZE TABLE  tblBusiness ; 		OPTIMIZE TABLE  tblBusinessContact ; 		OPTIMIZE TABLE  tblBusinessGroup ; 		OPTIMIZE TABLE  tblBusinessRole ; 		OPTIMIZE TABLE  tblCalendarEvent ; 		OPTIMIZE TABLE  tblCategorySetting ; 		OPTIMIZE TABLE  tblCertification ; 		OPTIMIZE TABLE  tblChargeDepartment ; 		OPTIMIZE TABLE  tblClientSession ; 		OPTIMIZE TABLE  tblCounter ; 		OPTIMIZE TABLE  tblCreditCard ; 		OPTIMIZE TABLE  tblCrmMetrics ; 		OPTIMIZE TABLE  tblCustomField ; 		OPTIMIZE TABLE  tblCustomFieldValue ; 		OPTIMIZE TABLE  tblCustomQuery ; 		OPTIMIZE TABLE  tblCycleCount ; 		OPTIMIZE TABLE  tblDashboardPersona ; 		OPTIMIZE TABLE  tblDashboardWidgetPosition ; 		OPTIMIZE TABLE  tblDashboardWidgetPositionFilter ; 		OPTIMIZE TABLE  tblDashboardWidgetPositionParameter ; 		OPTIMIZE TABLE  tblDatabaseExport ; 		OPTIMIZE TABLE  tblDdColumn ; 		OPTIMIZE TABLE  tblDdCustomTableRow ; 		OPTIMIZE TABLE  tblDdTable ; 		OPTIMIZE TABLE  tblDistribution ; 		OPTIMIZE TABLE  tblDistributionPaymentMethod ; 		OPTIMIZE TABLE  tblDistributionPricingTier ; 		OPTIMIZE TABLE  tblDistributionRecurringType ; 		OPTIMIZE TABLE  tblDistributionUnitPricingRule ; 		OPTIMIZE TABLE  tblEmailAttachment ; 		OPTIMIZE TABLE  tblEmailMessage ; 		OPTIMIZE TABLE  tblEvent ; 		OPTIMIZE TABLE  tblFile ; 		OPTIMIZE TABLE  tblFileContents ; 		OPTIMIZE TABLE  tblFirewall ; 		OPTIMIZE TABLE  tblFirewallLog ; 		OPTIMIZE TABLE  tblFirewallRule ; 		OPTIMIZE TABLE  tblGHGCalcAsset ; 		OPTIMIZE TABLE  tblGroupPermissions ; 		OPTIMIZE TABLE  tblGuestActions ; 		OPTIMIZE TABLE  tblGuestMrFormField ; 		OPTIMIZE TABLE  tblIntegration ; 		OPTIMIZE TABLE  tblIntegrationAction ; 		OPTIMIZE TABLE  tblIntegrationActionLog ; 		OPTIMIZE TABLE  tblIntegrationConfigurableProperty ; 		OPTIMIZE TABLE  tblIntegrationParameter ; 		OPTIMIZE TABLE  tblInventoryTransaction ; 		OPTIMIZE TABLE  tblKpiResult ; 		OPTIMIZE TABLE  tblLastMeterReading ; 		OPTIMIZE TABLE  tblLineItem ; 		OPTIMIZE TABLE  tblLocalizationPermission ; 		OPTIMIZE TABLE  tblLogAlert ; 		OPTIMIZE TABLE  tblLogMonitoring ; 		OPTIMIZE TABLE  tblLogSavedSearch ; 		OPTIMIZE TABLE  tblLogSavedSearchUser ; 		OPTIMIZE TABLE  tblLogUser ; 		OPTIMIZE TABLE  tblLookupTableSync ; 		OPTIMIZE TABLE  tblMaintenanceType ; 		OPTIMIZE TABLE  tblMASourceCounter ; 		OPTIMIZE TABLE  tblMASourceListing ; 		OPTIMIZE TABLE  tblMASourceSeller ; 		OPTIMIZE TABLE  tblMASourceWarranty ; 		OPTIMIZE TABLE  tblMessage ; 		OPTIMIZE TABLE  tblMeterReading ; 		OPTIMIZE TABLE  tblMeterReadingUnit ; 		OPTIMIZE TABLE  tblMiscCost ; 		OPTIMIZE TABLE  tblMiscCostType ; 		OPTIMIZE TABLE  tblMove ; 		OPTIMIZE TABLE  tblMoveAsset ; 		OPTIMIZE TABLE  tblMoveBack ; 		OPTIMIZE TABLE  tblMoveBackAsset ; 		OPTIMIZE TABLE  tblMoveSiteManager ; 		OPTIMIZE TABLE  tblMoveStatus ; 		OPTIMIZE TABLE  tblOrder ; 		OPTIMIZE TABLE  tblOrderRefund ; 		OPTIMIZE TABLE  tblOrderSystemProperty ; 		OPTIMIZE TABLE  tblPartner ; 		OPTIMIZE TABLE  tblPartsSelection ; 		OPTIMIZE TABLE  tblPaymentProfile ; 		OPTIMIZE TABLE  tblPerRecordValue ; 		OPTIMIZE TABLE  tblPriority ; 		OPTIMIZE TABLE  tblProductTimeTracking ; 		OPTIMIZE TABLE  tblProject ; 		OPTIMIZE TABLE  tblProjectUser ; 		OPTIMIZE TABLE  tblPurchaseOrder ; 		OPTIMIZE TABLE  tblPurchaseOrderAdditionalCost ; 		OPTIMIZE TABLE  tblPurchaseOrderAdditionalCostType ; 		OPTIMIZE TABLE  tblPurchaseOrderLineItem ; 		OPTIMIZE TABLE  tblPurchaseOrderLineItemRfq ; 		OPTIMIZE TABLE  tblPurchaseOrderLog ; 		OPTIMIZE TABLE  tblPurchaseOrderStatus ; 		OPTIMIZE TABLE  tblPurchaseOrderStatusTransition ; 		OPTIMIZE TABLE  tblPurchaseOrderStatusTransitionPermission ; 		OPTIMIZE TABLE  tblPurchaseOrderUser ; 		OPTIMIZE TABLE  tblQuote ; 		OPTIMIZE TABLE  tblRCAAction ; 		OPTIMIZE TABLE  tblRCACause ; 		OPTIMIZE TABLE  tblRCAGrouping ; 		OPTIMIZE TABLE  tblRCAGroupingAction ; 		OPTIMIZE TABLE  tblRCAGroupingCause ; 		OPTIMIZE TABLE  tblRCAProblem ; 		OPTIMIZE TABLE  tblReasonToSetAssetOffline ; 		OPTIMIZE TABLE  tblReasonToSetAssetOnline ; 		OPTIMIZE TABLE  tblReceipt ; 		OPTIMIZE TABLE  tblReceiptLineItem ; 		OPTIMIZE TABLE  tblReceiptStatus ; 		OPTIMIZE TABLE  tblReceiptStatusTransition ; 		OPTIMIZE TABLE  tblReconciliationControl ; 		OPTIMIZE TABLE  tblRegionUser ; 		OPTIMIZE TABLE  tblRegionUserGroup ; 		OPTIMIZE TABLE  tblRemoteEntityIdMapping ; 		OPTIMIZE TABLE  tblReportPreset ; 		OPTIMIZE TABLE  tblReportPresetParameter ; 		OPTIMIZE TABLE  tblReportsToResolved ; 		OPTIMIZE TABLE  tblResource ; 		OPTIMIZE TABLE  tblRFQ ; 		OPTIMIZE TABLE  tblRFQAsset ; 		OPTIMIZE TABLE  tblRFQLineItem ; 		OPTIMIZE TABLE  tblRFQQueue ; 		OPTIMIZE TABLE  tblRFQStatus ; 		OPTIMIZE TABLE  tblRFQStatusTransition ; 		OPTIMIZE TABLE  tblRole ; 		OPTIMIZE TABLE  tblRolePermission ; 		OPTIMIZE TABLE  tblSalesAccountTracking ; 		OPTIMIZE TABLE  tblScheduledMaintenance ; 		OPTIMIZE TABLE  tblScheduledMaintenanceActivityLog ; 		OPTIMIZE TABLE  tblScheduledMaintenanceAsset ; 		OPTIMIZE TABLE  tblScheduledMaintenanceBusiness ; 		OPTIMIZE TABLE  tblScheduledMaintenanceNesting ; 		OPTIMIZE TABLE  tblScheduledMaintenancePart ; 		OPTIMIZE TABLE  tblScheduledMaintenanceUser ; 		OPTIMIZE TABLE  tblScheduledReport ; 		OPTIMIZE TABLE  tblScheduledReportUser ; 		OPTIMIZE TABLE  tblScheduledTask ; 		OPTIMIZE TABLE  tblScheduledTaskFile ; 		OPTIMIZE TABLE  tblScheduleTrigger ; 		OPTIMIZE TABLE  tblServerSetting ; 		OPTIMIZE TABLE  tblShippingType ; 		OPTIMIZE TABLE  tblSiteAvailability ; 		OPTIMIZE TABLE  tblSiteSetting ; 		OPTIMIZE TABLE  tblSiteStock ; 		OPTIMIZE TABLE  tblSiteUser ; 		OPTIMIZE TABLE  tblSiteUserGroup ; 		OPTIMIZE TABLE  tblSmtpProvider ; 		OPTIMIZE TABLE  tblStock ; 		OPTIMIZE TABLE  tblStockAdjustmentItem ; 		OPTIMIZE TABLE  tblStockCycleCount ; 		OPTIMIZE TABLE  tblStockHistory ; 		OPTIMIZE TABLE  tblStockPurchaseItem ; 		OPTIMIZE TABLE  tblStockTxType ; 		OPTIMIZE TABLE  tblSystemMessageUser ; 		OPTIMIZE TABLE  tblTask ; 		OPTIMIZE TABLE  tblTaskFile ; 		OPTIMIZE TABLE  tblTaskGroup ; 		OPTIMIZE TABLE  tblTaskGroupAssetCategory ; 		OPTIMIZE TABLE  tblTaskResultConfiguration ; 		OPTIMIZE TABLE  tblTaskResultValue ; 		OPTIMIZE TABLE  tblTemplate ; 		OPTIMIZE TABLE  tblTemplateCategory ; 		OPTIMIZE TABLE  tblTestingBlack ; 		OPTIMIZE TABLE  tblTestingRedC ; 		OPTIMIZE TABLE  tblTestingWhiteC ; 		OPTIMIZE TABLE  tblTestingYellow ; 		OPTIMIZE TABLE  tblTestTable ; 		OPTIMIZE TABLE  tblUicProfile ; 		OPTIMIZE TABLE  tblUsageLog ; 		OPTIMIZE TABLE  tblV5DataToV5EventsConversionStatus ; 		OPTIMIZE TABLE  tblV6ApiApplicationUserMapping ; 		OPTIMIZE TABLE  tblV6RolePermissionLookup ; 		OPTIMIZE TABLE  tblV6TenantUserInactivityTimeout ; 		OPTIMIZE TABLE  tblV6TenantUserMgmtMigration ; 		OPTIMIZE TABLE  tblV6UserDeletionTracking ; 		OPTIMIZE TABLE  tblWarranty ; 		OPTIMIZE TABLE  tblWorkflow ; 		OPTIMIZE TABLE  tblWorkflowActivity ; 		OPTIMIZE TABLE  tblWorkflowComment ; 		OPTIMIZE TABLE  tblWorkflowExecution ; 		OPTIMIZE TABLE  tblWorkOrder ; 		OPTIMIZE TABLE  tblWorkOrderAsset ; 		OPTIMIZE TABLE  tblWorkOrderBusiness ; 		OPTIMIZE TABLE  tblWorkOrderLog ; 		OPTIMIZE TABLE  tblWorkOrderPart ; 		OPTIMIZE TABLE  tblWorkOrderStatus ; 		OPTIMIZE TABLE  tblWorkOrderStatusTransition ; 		OPTIMIZE TABLE  tblWorkOrderTask ; 		OPTIMIZE TABLE  tblWorkOrderTaskAdditionalProperties ; 		OPTIMIZE TABLE  tblWorkOrderTaskFile ; 		OPTIMIZE TABLE  tblWorkOrderTaskUser ; 		OPTIMIZE TABLE  tblWorkOrderUser ;  	ELSE  		SET @table_list = CONCAT('''',REPLACE(REPLACE(tableName ,' ',''),',',QUOTE(',')),''''); 	    SET @table_stub = REPLACE(@table_list,',',''); 	    SET @array_count = LENGTH(@table_list) - LENGTH(@table_stub) + 1;  	    SET @x = 0; 	    WHILE @x < @array_count DO  	        SET @x = @x + 1; 	        SET @sql = CONCAT('SELECT ELT(',@x,',',@table_list,') INTO @tb'); 	        PREPARE s FROM @sql; 	    	EXECUTE s; 	    	DEALLOCATE PREPARE s;  	      	SELECT FIND_IN_SET(@tb, 'tblActivityLog,tblApiConsumer,tblApiConsumerUsage,tblApiUsage,tblAsset,tblAssetActivityLog,tblAssetBusiness,tblAssetCategory,tblAssetCategoryBarcodeFormatType,tblAssetCategoryResolved,tblAssetClassification,tblAssetClassificationLog,tblAssetConsumingReference,tblAssetDepletionTracking,tblAssetEvent,tblAssetEventType,tblAssetEventTypeAsset,tblAssetOfflineTracker,tblAssetProperty,tblAssetPropertyDomainElement,tblAssetPropertyValue,tblAssetPurchaseTracking,tblAssetResolved,tblAssetSelection,tblAssetUser,tblAuditLog,tblAuditLogArchive,tblAuthorization,tblBillingTerm,tblBOMGroup,tblBOMGroupPart,tblBranding,tblBusiness,tblBusinessContact,tblBusinessGroup,tblBusinessRole,tblCalendarEvent,tblCategorySetting,tblCertification,tblChargeDepartment,tblClientSession,tblCounter,tblCreditCard,tblCrmMetrics,tblCustomField,tblCustomFieldValue,tblCustomQuery,tblCycleCount,tblDashboardPersona,tblDashboardWidgetPosition,tblDashboardWidgetPositionFilter,tblDashboardWidgetPositionParameter,tblDatabaseExport,tblDdColumn,tblDdCustomTableRow,tblDdTable,tblDistribution,tblDistributionPaymentMethod,tblDistributionPricingTier,tblDistributionRecurringType,tblDistributionUnitPricingRule,tblEmailAttachment,tblEmailMessage,tblEvent,tblFile,tblFileContents,tblFirewall,tblFirewallLog,tblFirewallRule,tblGHGCalcAsset,tblGroupPermissions,tblGuestActions,tblGuestMrFormField,tblIntegration,tblIntegrationAction,tblIntegrationActionLog,tblIntegrationConfigurableProperty,tblIntegrationParameter,tblInventoryTransaction,tblKpiResult,tblLastMeterReading,tblLineItem,tblLocalizationPermission,tblLogAlert,tblLogMonitoring,tblLogSavedSearch,tblLogSavedSearchUser,tblLogUser,tblLookupTableSync,tblMaintenanceType,tblMASourceCounter,tblMASourceListing,tblMASourceSeller,tblMASourceWarranty,tblMessage,tblMeterReading,tblMeterReadingUnit,tblMiscCost,tblMiscCostType,tblMove,tblMoveAsset,tblMoveBack,tblMoveBackAsset,tblMoveSiteManager,tblMoveStatus,tblOrder,tblOrderRefund,tblOrderSystemProperty,tblPartner,tblPartsSelection,tblPaymentProfile,tblPerRecordValue,tblPriority,tblProductTimeTracking,tblProject,tblProjectUser,tblPurchaseOrder,tblPurchaseOrderAdditionalCost,tblPurchaseOrderAdditionalCostType,tblPurchaseOrderLineItem,tblPurchaseOrderLineItemRfq,tblPurchaseOrderLog,tblPurchaseOrderStatus,tblPurchaseOrderStatusTransition,tblPurchaseOrderStatusTransitionPermission,tblPurchaseOrderUser,tblQuote,tblRCAAction,tblRCACause,tblRCAGrouping,tblRCAGroupingAction,tblRCAGroupingCause,tblRCAProblem,tblReasonToSetAssetOffline,tblReasonToSetAssetOnline,tblReceipt,tblReceiptLineItem,tblReceiptStatus,tblReceiptStatusTransition,tblReconciliationControl,tblRegionUser,tblRegionUserGroup,tblRemoteEntityIdMapping,tblReportPreset,tblReportPresetParameter,tblReportsToResolved,tblResource,tblRFQ,tblRFQAsset,tblRFQLineItem,tblRFQQueue,tblRFQStatus,tblRFQStatusTransition,tblRole,tblRolePermission,tblSalesAccountTracking,tblScheduledMaintenance,tblScheduledMaintenanceActivityLog,tblScheduledMaintenanceAsset,tblScheduledMaintenanceBusiness,tblScheduledMaintenanceNesting,tblScheduledMaintenancePart,tblScheduledMaintenanceUser,tblScheduledReport,tblScheduledReportUser,tblScheduledTask,tblScheduledTaskFile,tblScheduleTrigger,tblServerSetting,tblShippingType,tblSiteAvailability,tblSiteSetting,tblSiteStock,tblSiteUser,tblSiteUserGroup,tblSmtpProvider,tblStock,tblStockAdjustmentItem,tblStockCycleCount,tblStockHistory,tblStockPurchaseItem,tblStockTxType,tblSystemMessageUser,tblTask,tblTaskFile,tblTaskGroup,tblTaskGroupAssetCategory,tblTaskResultConfiguration,tblTaskResultValue,tblTemplate,tblTemplateCategory,tblTestingBlack,tblTestingRedC,tblTestingWhiteC,tblTestingYellow,tblTestTable,tblUicProfile,tblUsageLog,tblV5DataToV5EventsConversionStatus,tblV6ApiApplicationUserMapping,tblV6RolePermissionLookup,tblV6TenantUserInactivityTimeout,tblV6TenantUserMgmtMigration,tblV6UserDeletionTracking,tblWarranty,tblWorkflow,tblWorkflowActivity,tblWorkflowComment,tblWorkflowExecution,tblWorkOrder,tblWorkOrderAsset,tblWorkOrderBusiness,tblWorkOrderLog,tblWorkOrderPart,tblWorkOrderStatus,tblWorkOrderStatusTransition,tblWorkOrderTask,tblWorkOrderTaskAdditionalProperties,tblWorkOrderTaskFile,tblWorkOrderTaskUser,tblWorkOrderUser') 	        	into @isPresent;  		    IF @isPresent != 0 THEN  				SET SESSION foreign_key_checks=OFF; 				SET @optimizeQuery = concat('Optimize table ', @tb); 			    PREPARE stmt FROM @optimizeQuery; 			    EXECUTE stmt; 			    DEALLOCATE PREPARE stmt;  			END IF; 	    END WHILE; 	END IF;  END;
DELIMITER ;;
SET sql_mode              = @saved_sql_mode ;
SET character_set_client  = @saved_cs_client ;
SET character_set_results = @saved_cs_results ;
SET collation_connection  = @saved_col_connection ;
DROP VIEW IF EXISTS `vworkorder`;
SET @saved_cs_client          = @@character_set_client;
SET @saved_cs_results         = @@character_set_results;
SET @saved_col_connection     = @@collation_connection;
SET character_set_client      = utf8mb4;
SET character_set_results     = utf8mb4;
SET collation_connection      = utf8mb4_0900_ai_ci;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER
VIEW `vworkorder` AS select `wo`.`id` AS `id`,`wo`.`intTenantID` AS `intTenantID`,`wo`.`bolLocked` AS `bolLocked`,`wo`.`bolRequiresSignature` AS `bolRequiresSignature`,`wo`.`datForDate` AS `datForDate`,`wo`.`dblAssetProductionTime` AS `dblAssetProductionTime`,`wo`.`dblSuggestedTime` AS `dblSuggestedTime`,`wo`.`dblTimeEstimatedHours` AS `dblTimeEstimatedHours`,`wo`.`dblTimeSpentHours` AS `dblTimeSpentHours`,`wo`.`dblTotalMaintHoursOffline` AS `dblTotalMaintHoursOffline`,`wo`.`dblTotalMaintHoursOnline` AS `dblTotalMaintHoursOnline`,`wo`.`dtmDateCompleted` AS `dtmDateCompleted`,`wo`.`dtmDateCreated` AS `dtmDateCreated`,`wo`.`dtmDateLastModified` AS `dtmDateLastModified`,`wo`.`dtmDateSigned` AS `dtmDateSigned`,`wo`.`dtmSuggestedCompletionDate` AS `dtmSuggestedCompletionDate`,`wo`.`dtmSuggestedStartDate` AS `dtmSuggestedStartDate`,`wo`.`intAccountID` AS `intAccountID`,`wo`.`intChargeDepartmentID` AS `intChargeDepartmentID`,`wo`.`intCompletedByUserID` AS `intCompletedByUserID`,`wo`.`intDWOENotificationsSent` AS `intDWOENotificationsSent`,`wo`.`intLastModifiedByUserID` AS `intLastModifiedByUserID`,`wo`.`intMaintenanceTypeID` AS `intMaintenanceTypeID`,`wo`.`intOriginWorkOrderTaskID` AS `intOriginWorkOrderTaskID`,`wo`.`intPriorityID` AS `intPriorityID`,`wo`.`intProjectID` AS `intProjectID`,`wo`.`intRCAActionID` AS `intRCAActionID`,`wo`.`intRCACauseID` AS `intRCACauseID`,`wo`.`intRCAProblemID` AS `intRCAProblemID`,`wo`.`intRequestedByUserID` AS `intRequestedByUserID`,`wo`.`intScheduledMaintenanceID` AS `intScheduledMaintenanceID`,`wo`.`intSignedByUserID` AS `intSignedByUserID`,`wo`.`intSiteID` AS `intSiteID`,`wo`.`intUpdated` AS `intUpdated`,`wo`.`intWorkOrderStatusGroup` AS `intWorkOrderStatusGroup`,`wo`.`intWorkOrderStatusID` AS `intWorkOrderStatusID`,`wo`.`strAdminNotes` AS `strAdminNotes`,`wo`.`strAssetIds` AS `strAssetIds`,`wo`.`strAssets` AS `strAssets`,`wo`.`strAssignedUserIds` AS `strAssignedUserIds`,`wo`.`strAssignedUsers` AS `strAssignedUsers`,`wo`.`strCode` AS `strCode`,`wo`.`strCompletedByUserIds` AS `strCompletedByUserIds`,`wo`.`strCompletedByUsers` AS `strCompletedByUsers`,`wo`.`strCompletionNotes` AS `strCompletionNotes`,`wo`.`strCustomerIds` AS `strCustomerIds`,`wo`.`strCustomers` AS `strCustomers`,`wo`.`strDescription` AS `strDescription`,`wo`.`strEmailUserGuest` AS `strEmailUserGuest`,`wo`.`strNameUserGuest` AS `strNameUserGuest`,`wo`.`strPhoneUserGuest` AS `strPhoneUserGuest`,`wo`.`strProblem` AS `strProblem`,`wo`.`strRootCause` AS `strRootCause`,`wo`.`strSolution` AS `strSolution`,`wo`.`strSysCustomColumnValues` AS `strSysCustomColumnValues`,`wo`.`strUuid` AS `strUuid`,`wo`.`strVendorIds` AS `strVendorIds`,`wo`.`strVendors` AS `strVendors`,`wos`.`intControlID` AS `intControlID`,`wos`.`intTenantID` AS `intTenantIDFromWorkOrderStatus` from (`tblworkorder` `wo` join `tblworkorderstatus` `wos`) where (`wo`.`intWorkOrderStatusID` = `wos`.`id`);
SET character_set_client      = @saved_cs_client;
SET character_set_results     = @saved_cs_results;
SET collation_connection      = @saved_col_connection;
SET TIME_ZONE=@OLD_TIME_ZONE;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
SET SQL_NOTES=@OLD_SQL_NOTES;

