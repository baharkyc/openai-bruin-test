/* @bruin

name: enrich
type: empty

depends:
  - clean

@bruin */

SELECT record_id, 'enriched' AS status FROM clean
