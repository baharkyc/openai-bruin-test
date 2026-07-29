/* @bruin

name: merged
type: empty

depends:
  - branch_a
  - branch_b

@bruin */

SELECT * FROM branch_a
UNION ALL
SELECT * FROM branch_b
