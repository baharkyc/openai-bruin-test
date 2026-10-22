""" @bruin
name: rerun_failure_two
type: python
retries: 0
depends:
  - agg_daily_revenue
@bruin """

raise RuntimeError("Intentional failure 2 of 2 for manual rerun lineage testing")
