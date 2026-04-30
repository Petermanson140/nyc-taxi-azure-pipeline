# NYC Taxi Azure Data Platform

## Project Overview
A cloud-based big data platform built on Microsoft Azure to process and 
analyse 38 million NYC Yellow Taxi trip records from the year 2023 from January-December inclusive

## Architecture Stages
- **Ingestion:** Azure Data Factory (ADF)
- **Storage:** Azure Blob Storage (ADLS Gen2) with /raw, /processed, /curated zones
- **Processing:** Azure Synapse Spark
- **Serving:** Synapse Serverless SQL
- **Security:** SHA-256 hashing, timestamp rounding, location generalisation

## Dataset
- Source: NYC Taxi and Limousine Commission (TLC)
- Official website URL: https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page
- Dataset Chosen: Yellow Taxi Trip Records 2023
- Size of the dataset: 38,310,226 rows across 12 monthly Parquet files

## Pipeline Results
- Raw rows ingested: 38,310,226
- Curated rows after data cleaning: 35,609,899
- Rows being removed: 2,700,327
- Data retention percentage: 92.95%

## Repository Structure
- /notebooks — Synapse Spark notebooks (4)
- /sql — SQL analytical queries (3)
- /docs — Architecture diagrams (2)
- /adf — ADF pipeline exports 

## Instructions on how to run the NYC Taxi pipeline from start to finish
1. Set up Azure environment (Storage, Synapse, ADF)
2. Run ADF pipeline to ingest data into /raw
3. Run 01_clean_taxi_data notebook to clean and transform data
4. Run 02_security_anonymisation notebook to anonymise data
5. Run 03_validation_error_handling notebook to validate data
6. Run SQL queries in Synapse Serverless SQL pool

## Analytical Queries
1. Hourly demand patterns
2. Taxi fare and tip analysis by payment types
3. Monthly trip patterns throughout the year 2023
