# Instructor Demo Script — Fabric Mini Project

## Teaching Story
A retail company receives daily files from sales, returns, inventory, and reference systems. We are building a mini data platform, not just a dashboard.

## Demo Order

1. Draw architecture: Files → Pipelines → Bronze → Silver → Gold → Semantic Model → Power BI.
2. Create workspace `FABRIC_MINI_RETAIL_DEMO`.
3. Create Lakehouse `RetailMiniLakehouse`.
4. Upload CSV, JSON, Parquet, and custom layout files.
5. Build `PL_01_INGEST_CSV_SALES` live.
6. Load `sales_day_01.csv` into `bronze_sales`.
7. Load `sales_day_02.csv` and show records increased.
8. Run Silver SQL.
9. Run Gold SQL.
10. Build semantic model.
11. Build Power BI dashboard.
12. Refresh after a new file and show the dashboard changed.

## Key Teaching Line
This is not just a report. This is a mini data platform.
