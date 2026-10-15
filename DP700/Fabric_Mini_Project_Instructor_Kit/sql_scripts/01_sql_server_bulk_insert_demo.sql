/* SQL Server BULK INSERT demo. Update file paths before running. */
BULK INSERT dbo.Customers FROM 'C:\FabricDemo\customers.csv' WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '0x0a', TABLOCK);
BULK INSERT dbo.Products FROM 'C:\FabricDemo\products.csv' WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '0x0a', TABLOCK);
BULK INSERT dbo.SalesOrders FROM 'C:\FabricDemo\sales_day_01.csv' WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '0x0a', TABLOCK);
