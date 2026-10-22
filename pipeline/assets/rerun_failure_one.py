""" @bruin
name: rerun_failure_one
type: python
retries: 0
depends:
  - agg_daily_revenue
@bruin """

raise RuntimeError("Intentional failure 1 of 2 for manual rerun lineage testing")
