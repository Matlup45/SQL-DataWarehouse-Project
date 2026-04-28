
SHOW VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = 1;
SET GLOBAL local_infile = 1;



-- =====================================================
-- Bronze Layer Data Load Script
-- Truncate tables before loading
-- =====================================================

SET @v_start_time = NOW();

SELECT '====================================' AS Message;
SELECT 'Starting Bronze Layer Load Process' AS Message;
SELECT CONCAT('Start Time : ', @v_start_time) AS Message;
SELECT '====================================' AS Message;


-- =====================================================
-- crm_cust_info
-- =====================================================
SELECT 'Truncating bronze.crm_cust_info...' AS Message;
TRUNCATE TABLE bronze.crm_cust_info;

SELECT 'Loading bronze.crm_cust_info...' AS Message;
LOAD DATA LOCAL INFILE 'E:/Projects/SQL_DW_DE/sql-data-warehouse-project-main/sql-data-warehouse-project-main/datasets/source_crm/cust_info.csv'
INTO TABLE bronze.crm_cust_info
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT 'Completed bronze.crm_cust_info' AS Message;


-- =====================================================
-- crm_prd_info
-- =====================================================
SELECT 'Truncating bronze.crm_prd_info...' AS Message;
TRUNCATE TABLE bronze.crm_prd_info;

SELECT 'Loading bronze.crm_prd_info...' AS Message;
LOAD DATA LOCAL INFILE 'E:/Projects/SQL_DW_DE/sql-data-warehouse-project-main/sql-data-warehouse-project-main/datasets/source_crm/prd_info.csv'
INTO TABLE bronze.crm_prd_info
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT 'Completed bronze.crm_prd_info' AS Message;


-- =====================================================
-- crm_sale_details_info
-- =====================================================
SELECT 'Truncating bronze.crm_sale_details_info...' AS Message;
TRUNCATE TABLE bronze.crm_sale_details_info;

SELECT 'Loading bronze.crm_sale_details_info...' AS Message;
LOAD DATA LOCAL INFILE 'E:/Projects/SQL_DW_DE/sql-data-warehouse-project-main/sql-data-warehouse-project-main/datasets/source_crm/sales_details.csv'
INTO TABLE bronze.crm_sale_details_info
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT 'Completed bronze.crm_sale_details_info' AS Message;


-- =====================================================
-- erp_cust_az12
-- =====================================================
SELECT 'Truncating bronze.erp_cust_az12...' AS Message;
TRUNCATE TABLE bronze.erp_cust_az12;

SELECT 'Loading bronze.erp_cust_az12...' AS Message;
LOAD DATA LOCAL INFILE 'E:/Projects/SQL_DW_DE/sql-data-warehouse-project-main/sql-data-warehouse-project-main/datasets/source_erp/CUST_AZ12.csv'
INTO TABLE bronze.erp_cust_az12
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT 'Completed bronze.erp_cust_az12' AS Message;


-- =====================================================
-- erp_loc_a101
-- =====================================================
SELECT 'Truncating bronze.erp_loc_a101...' AS Message;
TRUNCATE TABLE bronze.erp_loc_a101;

SELECT 'Loading bronze.erp_loc_a101...' AS Message;
LOAD DATA LOCAL INFILE 'E:/Projects/SQL_DW_DE/sql-data-warehouse-project-main/sql-data-warehouse-project-main/datasets/source_erp/LOC_A101.csv'
INTO TABLE bronze.erp_loc_a101
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT 'Completed bronze.erp_loc_a101' AS Message;


-- =====================================================
-- erp_px_g1v2
-- =====================================================
SELECT 'Truncating bronze.erp_px_g1v2...' AS Message;
TRUNCATE TABLE bronze.erp_px_g1v2;

SELECT 'Loading bronze.erp_px_g1v2...' AS Message;
LOAD DATA LOCAL INFILE 'E:/Projects/SQL_DW_DE/sql-data-warehouse-project-main/sql-data-warehouse-project-main/datasets/source_erp/PX_CAT_G1V2.csv'
INTO TABLE bronze.erp_px_g1v2
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT 'Completed bronze.erp_px_g1v2' AS Message;


-- =====================================================
-- End Time
-- =====================================================
SET @v_end_time = NOW();

SELECT '====================================' AS Message;
SELECT 'Bronze Layer Load Completed Successfully' AS Message;
SELECT CONCAT('Start Time : ', @v_start_time) AS Message;
SELECT CONCAT('End Time   : ', @v_end_time) AS Message;
SELECT CONCAT('Duration   : ', TIMESTAMPDIFF(SECOND, @v_start_time, @v_end_time), ' Seconds') AS Message;
SELECT '====================================' AS Message;
