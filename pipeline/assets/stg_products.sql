/* @bruin

name: stg_products
type: duckdb.sql
connection: duckdb-default

depends:
  - raw_products

materialization:
  type: table
  strategy: create+replace

@bruin */

SELECT
    product_id,
    product_name,
    category,
    CAST(unit_price AS DECIMAL(10, 2)) AS unit_price
FROM raw_products
