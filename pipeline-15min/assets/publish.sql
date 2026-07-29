/* @bruin

name: publish
type: empty

depends:
  - enrich

@bruin */

SELECT record_id, status FROM enrich
