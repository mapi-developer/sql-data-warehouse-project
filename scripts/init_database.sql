/*
============================================================
Create Database and Schemas
============================================================
Script Purpose:
  This script creates a new databse named 'DataWarehouse' after checking if it already exists.
  If database exists, it is dropped and recreated. Additionaly, the script sets up threee schemas:
  'bronze', 'silver', 'gold'.
WARNING:
  Running this script will drop the entire 'DataWarehouse' databse if it exists.
*/

USE master;
GO

-- drop table if exists
IF EXISTS (SELECT 1 from sys.databases WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

-- create table
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- crate schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
