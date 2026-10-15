/* Gold layer views for reporting */
CREATE OR ALTER VIEW dim_customer AS SELECT customer_id, customer_name, city, province, country, customer_segment FROM silver_customers;
CREATE OR ALTER VIEW dim_product AS SELECT product_id, product_name, category, unit_price FROM silver_products;
CREATE OR ALTER VIEW dim_store AS SELECT store_id, store_name, city, province FROM silver_stores;
CREATE OR ALTER VIEW fact_sales AS SELECT order_id, order_date, store_id, product_id, customer_id, quantity, sales_amount FROM silver_sales;
CREATE OR ALTER VIEW gold_daily_sales AS SELECT order_date, SUM(sales_amount) AS total_sales, COUNT(DISTINCT order_id) AS total_orders, SUM(quantity) AS total_quantity FROM silver_sales GROUP BY order_date;
