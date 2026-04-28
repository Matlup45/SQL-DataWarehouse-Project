





If Exists (select 1 from sys.databases where name = 'DataWarehouse')
Begin
  Alter Database Datawarehouse set Single_User with rollbaack immediate;
  drop database DataWarehouse;
End;
-- 
Create Database DataWarehouse;
--
Use DataWarehouse;
--
Create Schema bronze;
--
create schema silver;
--
creatre schema gold;
