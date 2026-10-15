# Pipeline Design Template

## Pipeline Name
PL_01_INGEST_CSV_SALES

## Source
Files/raw/incoming/csv/

## Destination
bronze_sales

## Activities
1. Copy Data — Load file into Bronze
2. SQL Script — Refresh Silver
3. SQL Script — Refresh Gold
4. Manual/Scheduled Refresh — Update report

## Demo Requirement
Upload a new file and prove dashboard values changed.
