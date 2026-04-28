create table bronze.crm_cust_info (
cst_id int,
cst_key nvarchar(50),
cst_firstname nvarchar(50),
cst_lastname nvarchar(50),
cst_material_status nvarchar(50),
cst_gnder nvarchar(50),
cst_create_date date
);

DROP TABLE IF EXISTS bronze.crm_prd_info;
create table bronze.crm_prd_info (
prd_id int,
prd_key nvarchar(50),
prd_nm nvarchar(50),
prd_cost int,
prd_line nvarchar(50),
prd_start_dt datetime,
prd_end_dt datetime
);

DROP TABLE IF EXISTS bronze.crm_sale_details_info;
create table bronze.crm_sale_details_info (
sls_ord_num nvarchar(50),
sls_prd_key nvarchar(50),
sls_cust_id int,
sls_order_dt int,
sls_ship_dt int,
sls_due_dt int,
sls_sales int,
sls_quantity int,
sls_price int
);

DROP TABLE IF EXISTS bronze.erp_loc_a101;
create table bronze.erp_loc_a101(
cid nvarchar(50),
cntry nvarchar(50)
);

DROP TABLE IF EXISTS bronze.erp_cust_az12;
create table bronze.erp_cust_az12(
cid nvarchar(50),
bdate date,
gen nvarchar(50)
);

DROP TABLE IF EXISTS bronze.erp_px_g1v2;
create table bronze.erp_px_g1v2(
id nvarchar(50),
cat nvarchar(50),
subcat nvarchar(50),
maintenance nvarchar(50)
);
