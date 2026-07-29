/* @bruin

name: dk_squared
type: duckdb.sql
connection: default

depends:
  - dk_numbers

materialization:
  type: table
  strategy: create+replace

@bruin */

SELECT
    n,
    n * n AS n_squared,
    n % 2 = 0 AS is_even
FROM dk_numbers
