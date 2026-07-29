/* @bruin

name: stg_orders
type: duckdb.sql
connection: duckdb-default

depends:
  - raw_orders

materialization:
  type: table
  strategy: create+replace

@bruin */

SELECT
    order_id,
    customer_id,
    product_id,
    quantity,
    order_date
FROM raw_orders
