SELECT COUNT(*) AS bronze_sales_rows FROM bronze_sales;
SELECT COUNT(*) AS silver_sales_rows FROM silver_sales;
SELECT order_id, COUNT(*) AS duplicate_count FROM bronze_sales GROUP BY order_id HAVING COUNT(*) > 1;
SELECT * FROM bronze_sales WHERE TRY_CAST(order_date AS DATE) IS NULL OR CAST(quantity AS INT) <= 0 OR CAST(sales_amount AS DECIMAL(18,2)) <= 0;
SELECT order_date, SUM(sales_amount) AS daily_sales FROM silver_sales GROUP BY order_date ORDER BY order_date;
