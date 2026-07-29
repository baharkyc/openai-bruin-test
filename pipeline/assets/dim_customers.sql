/* @bruin

name: dim_customers
type: duckdb.sql
connection: duckdb-default

depends:
  - stg_customers

materialization:
  type: table
  strategy: create+replace

columns:
  - name: customer_id
    type: integer
    checks:
      - name: not_null
      - name: unique

@bruin */

SELECT
    customer_id,
    name,
    email,
    country
FROM stg_customers
