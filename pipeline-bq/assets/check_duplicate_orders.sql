/* @bruin

name: bruin_test_data.check_duplicate_orders
type: bq.sql
connection: gcp-default

description: Ensures there are no duplicate Order IDs in the raw data.

materialization:
  type: table
  strategy: create+replace

@bruin */

SELECT
  order_id,
  COUNT(*) as occurrence_count
FROM `bruin-playground-bahar.bruin_test_data.random_sales`
GROUP BY 1
HAVING occurrence_count > 1
