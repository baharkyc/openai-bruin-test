/* @bruin

name: dk_numbers
type: duckdb.sql
connection: default

materialization:
  type: table
  strategy: create+replace

@bruin */

SELECT i AS n
FROM generate_series(1, 100) AS s(i)
