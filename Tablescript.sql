
Create catalog if not exists retail_catalog;

Create schema if not exists retail_catalog.bronze_retail;

DROP TABLE retail_catalog.bronze_retail.customer;

Create table if not exists retail_catalog.bronze_retail.customer(
    customer_id STRING,
    customer_name STRING,
    email STRING,
    phone STRING,
    city STRING,
    state STRING,
    registration_date DATE,
    status STRING,
    _source_file STRING,
    _ingestion_timestamp timestamp
)
USING DELTA;

select * from retail_catalog.bronze_retail.customer;