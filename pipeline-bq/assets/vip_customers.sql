/* @bruin

name: bruin_test_data.vip_customers
type: bq.sql
connection: gcp-default

description: Identifies customers who have spent more than $500.

materialization:
  type: table
  strategy: create+replace

@bruin */

SELECT
  customer_id,
  COUNT(order_id) as total_orders,
  ROUND(SUM(price * quantity), 2) as lifetime_value
FROM `bruin-playground-bahar.bruin_test_data.random_sales`
GROUP BY 1
HAVING lifetime_value > 500
ORDER BY lifetime_value DESC
