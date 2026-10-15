# Microsoft Fabric Mini Project — Complete Student Execution Guide

## Project Name
Retail Daily Sales Monitoring System

## Final Outcome

```text
Raw Files → Fabric Pipeline → Bronze Tables → Silver Views/Tables → Gold Views/Tables → Semantic Model → Power BI Report
```

---

# Part A — Create the Fabric Project

## Step 1 — Create Workspace
Create a Microsoft Fabric workspace named:

```text
FABRIC_MINI_RETAIL_DEMO
```

## Step 2 — Create Lakehouse
Create a Lakehouse named:

```text
RetailMiniLakehouse
```

## Step 3 — Create Folders
Inside Lakehouse Files, create:

```text
Files/raw/incoming/csv/
Files/raw/incoming/json/
Files/raw/incoming/parquet/
Files/raw/incoming/custom_layout/
Files/processed/
Files/archive/
```

---

# Part B — Upload Source Files

## CSV files
Upload into `Files/raw/incoming/csv/`:

```text
customers.csv
products.csv
stores.csv
sales_day_01.csv
sales_day_02.csv
sales_bad_data_for_cleaning_demo.csv
```

## JSON file
Upload into `Files/raw/incoming/json/`:

```text
returns.json
```

## Parquet files
Upload into `Files/raw/incoming/parquet/`:

```text
sales_day_01.parquet
sales_day_02.parquet
customers.parquet
```

## Custom layout files
Upload into `Files/raw/incoming/custom_layout/`:

```text
inventory_pipe_delimited.psv
inventory_fixed_width.txt
```

---

# Part C — Build Pipelines

## Pipeline 1 — CSV Sales
Create:

```text
PL_01_INGEST_CSV_SALES
```

Load:

```text
sales_day_01.csv → bronze_sales
sales_day_02.csv → bronze_sales
```

## Pipeline 2 — Reference Data
Create:

```text
PL_02_INGEST_REFERENCE_DATA
```

Load:

```text
customers.csv → bronze_customers
products.csv → bronze_products
stores.csv → bronze_stores
```

## Pipeline 3 — JSON Returns
Create:

```text
PL_03_INGEST_JSON_RETURNS
```

Load:

```text
returns.json → bronze_returns
```

## Pipeline 4 — Custom Layout Inventory
Create:

```text
PL_04_INGEST_CUSTOM_LAYOUT_INVENTORY
```

Load:

```text
inventory_pipe_delimited.psv → bronze_inventory
```

Use `|` as the delimiter.

## Optional Pipeline 5 — Parquet
Create:

```text
PL_05_INGEST_PARQUET_SALES
```

Load:

```text
sales_day_01.parquet → bronze_sales_parquet
sales_day_02.parquet → bronze_sales_parquet
```

---

# Part D — Create Silver Layer
Run:

```text
sql_scripts/02_fabric_create_silver_views.sql
```

Expected objects:

```text
silver_sales
silver_customers
silver_products
silver_stores
```

---

# Part E — Create Gold Layer
Run:

```text
sql_scripts/03_fabric_create_gold_views.sql
```

Expected objects:

```text
dim_customer
dim_product
dim_store
fact_sales
gold_daily_sales
```

---

# Part F — Data Quality Checks
Run:

```text
sql_scripts/04_data_quality_checks.sql
```

Take screenshots of:

1. Bronze row count
2. Silver row count
3. Duplicate check
4. Invalid record check
5. Daily sales total

---

# Part G — Semantic Model
Create relationships:

```text
fact_sales.customer_id → dim_customer.customer_id
fact_sales.product_id → dim_product.product_id
fact_sales.store_id → dim_store.store_id
```

Add DAX measures from:

```text
sql_scripts/05_power_bi_dax_measures.txt
```

---

# Part H — Power BI Report
Create:

```text
Retail Daily Sales Dashboard
```

Required pages:

1. Executive Summary
2. Product and Store Analysis
3. Technical Architecture

---

# Part I — Final Demo
Show:

1. Upload a new file
2. Run pipeline
3. Show Bronze update
4. Show Silver/Gold update
5. Refresh dashboard
6. Show changed result
