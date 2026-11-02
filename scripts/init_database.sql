USE	master;
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse') #el script se fija si existe una base de datos llamada Datawarehouse y si esxiste la elimina.
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
