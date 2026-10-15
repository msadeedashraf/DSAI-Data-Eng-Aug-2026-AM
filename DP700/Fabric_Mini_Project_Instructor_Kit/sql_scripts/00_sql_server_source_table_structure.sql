/* SQL Server source table structure for teaching source-system design */
CREATE TABLE dbo.Customers (customer_id INT PRIMARY KEY, customer_name NVARCHAR(100), city NVARCHAR(50), province NVARCHAR(50), country NVARCHAR(50), customer_segment NVARCHAR(20));
CREATE TABLE dbo.Products (product_id INT PRIMARY KEY, product_name NVARCHAR(100), category NVARCHAR(50), unit_price DECIMAL(10,2));
CREATE TABLE dbo.Stores (store_id INT PRIMARY KEY, store_name NVARCHAR(100), city NVARCHAR(50), province NVARCHAR(50));
CREATE TABLE dbo.SalesOrders (order_id INT PRIMARY KEY, order_date DATE, store_id INT, product_id INT, customer_id INT, quantity INT, sales_amount DECIMAL(10,2));
CREATE TABLE dbo.InventorySnapshot (product_id INT, store_id INT, stock_quantity INT, reorder_level INT, snapshot_date DATE);
CREATE TABLE dbo.Returns (return_id INT PRIMARY KEY, order_id INT, return_date DATE, return_reason NVARCHAR(200), refund_amount DECIMAL(10,2));
