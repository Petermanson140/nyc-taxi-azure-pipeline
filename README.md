# NYC Taxi Azure Data Platform

## Project Overview
A cloud-native big data platform built on Microsoft Azure to process and 
analyse 38 million NYC Yellow Taxi trip records from 2023.

## Architecture
- **Ingestion:** Azure Data Factory (ADF)
- **Storage:** Azure Blob Storage (ADLS Gen2) with /raw, /processed, /curated zones
- **Processing:** Azure Synapse Spark
- **Serving:** Synapse Serverless SQL
- **Security:** SHA-256 hashing, timestamp rounding, location generalisation

## Dataset
- Source: NYC Taxi and Limousine Commission (TLC)
- URL: https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page
- Dataset: Yellow Taxi Trip Records 2023
- Size: 38,310,226 rows across 12 monthly Parquet files

## Pipeline Results
- Raw rows ingested: 38,310,226
- Curated rows after cleaning: 35,609,899
- Rows removed: 2,700,327
- Data retention: 92.95%

## Repository Structure
- /notebooks — Synapse Spark notebooks
- /sql — SQL analytical queries
- /docs — Architecture diagrams
- /adf — ADF pipeline exports

## How to Run
1. Set up Azure environment (Storage, Synapse, ADF)
2. Run ADF pipeline to ingest data into /raw
3. Run 01_clean_taxi_data notebook to clean and transform data
4. Run 02_security_anonymisation notebook to anonymise data
5. Run 03_validation_error_handling notebook to validate data
6. Run SQL queries in Synapse Serverless SQL pool

## Analytical Queries
1. Hourly demand trends
2. Fare and tip analysis by payment type
3. Monthly trip trends throughout 2023
