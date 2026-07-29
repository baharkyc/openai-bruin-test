/* @bruin

name: clean
type: empty

depends:
  - extract

@bruin */

SELECT record_id FROM extract WHERE record_id IS NOT NULL
