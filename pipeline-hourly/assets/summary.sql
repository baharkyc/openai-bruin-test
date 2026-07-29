/* @bruin

name: summary
type: empty

depends:
  - merged

@bruin */

SELECT branch, COUNT(*) AS rows FROM merged GROUP BY branch
