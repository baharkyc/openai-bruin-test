/* @bruin

name: dim_products
type: duckdb.sql
connection: duckdb-default

depends:
  - stg_products

materialization:
  type: table
  strategy: create+replace

columns:
  - name: product_id
    type: integer
    checks:
      - name: not_null
      - name: unique

@bruin */

SELECT
    product_id,
    product_name,
    category,
    unit_price
FROM stg_products
