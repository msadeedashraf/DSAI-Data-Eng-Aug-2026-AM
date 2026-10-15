/* Run after Bronze tables exist. Adjust names if needed. */
CREATE OR ALTER VIEW silver_sales AS
SELECT DISTINCT CAST(order_id AS INT) AS order_id, TRY_CAST(order_date AS DATE) AS order_date, CAST(store_id AS INT) AS store_id, CAST(product_id AS INT) AS product_id, CAST(customer_id AS INT) AS customer_id, CAST(quantity AS INT) AS quantity, CAST(sales_amount AS DECIMAL(18,2)) AS sales_amount
FROM bronze_sales
WHERE TRY_CAST(order_date AS DATE) IS NOT NULL AND CAST(quantity AS INT) > 0 AND CAST(sales_amount AS DECIMAL(18,2)) > 0;
CREATE OR ALTER VIEW silver_customers AS SELECT DISTINCT CAST(customer_id AS INT) AS customer_id, customer_name, city, province, country, customer_segment FROM bronze_customers WHERE customer_id IS NOT NULL;
CREATE OR ALTER VIEW silver_products AS SELECT DISTINCT CAST(product_id AS INT) AS product_id, product_name, category, CAST(unit_price AS DECIMAL(18,2)) AS unit_price FROM bronze_products WHERE product_id IS NOT NULL;
CREATE OR ALTER VIEW silver_stores AS SELECT DISTINCT CAST(store_id AS INT) AS store_id, store_name, city, province FROM bronze_stores WHERE store_id IS NOT NULL;
