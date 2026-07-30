/* @bruin

name: dk_summary
type: duckdb.sql
connection: duckdb

depends:
  - dk_squared

materialization:
  type: table
  strategy: create+replace

@bruin */

SELECT
    is_even,
    COUNT(*)      AS cnt,
    SUM(n_squared) AS sum_squares,
    AVG(n_squared) AS avg_squares
FROM dk_squared
GROUP BY is_even
ORDER BY is_even
