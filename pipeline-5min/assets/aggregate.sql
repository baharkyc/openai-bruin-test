/* @bruin

name: aggregate
type: empty

depends:
  - ingest

@bruin */

SELECT batch_id, COUNT(*) AS rows FROM ingest GROUP BY batch_id
