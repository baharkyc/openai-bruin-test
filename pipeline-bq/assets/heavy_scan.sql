/* @bruin

name: bruin_test_data.heavy_scan
type: bq.sql
connection: bigquery

description: Scans a large public dataset to generate BigQuery cost for Cost Explorer testing.

materialization:
  type: table
  strategy: create+replace

@bruin */

SELECT
  EXTRACT(YEAR FROM creation_date) AS year,
  COUNT(*) AS questions,
  SUM(view_count) AS total_views,
  SUM(answer_count) AS total_answers
FROM `bigquery-public-data.stackoverflow.posts_questions`
GROUP BY year
ORDER BY year
