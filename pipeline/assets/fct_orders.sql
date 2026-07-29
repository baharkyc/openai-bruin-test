/* @bruin

name: fct_orders
type: duckdb.sql
connection: duckdb-default

depends:
  - stg_orders
  - dim_customers
  - dim_products

materialization:
  type: table
  strategy: create+replace

@bruin */

SELECT
    o.order_id,
    o.order_date,
    c.customer_id,
    c.name AS customer_name,
    c.country,
    p.product_id,
    p.product_name,
    p.category,
    o.quantity,
    p.unit_price,
    o.quantity * p.unit_price AS revenue
FROM stg_orders o
JOIN dim_customers c ON o.customer_id = c.customer_id
JOIN dim_products  p ON o.product_id = p.product_id
