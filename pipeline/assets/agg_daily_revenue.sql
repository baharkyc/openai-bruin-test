/* @bruin

name: agg_daily_revenue
type: duckdb.sql
connection: duckdb-default

depends:
  - fct_orders

materialization:
  type: table
  strategy: create+replace

@bruin */

SELECT
    order_date,
    COUNT(DISTINCT order_id) AS orders,
    SUM(quantity)            AS units_sold,
    SUM(revenue)             AS total_revenue
FROM fct_orders
GROUP BY order_date
ORDER BY order_date
