/* @bruin

name: stg_customers
type: duckdb.sql
connection: duckdb-default

depends:
  - raw_customers

materialization:
  type: table
  strategy: create+replace

@bruin */

SELECT
    customer_id,
    name,
    LOWER(email) AS email,
    country
FROM raw_customers
