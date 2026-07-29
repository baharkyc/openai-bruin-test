# claude-test

A test [Bruin](https://github.com/bruin-data/bruin) project of `empty`-asset pipelines (no connections required), on varied schedules so run history and asset-health slots accumulate quickly:

| Pipeline | Schedule | Assets | Shape |
|----------|----------|--------|-------|
| `claude-test` | `* * * * *` (every minute) | 10 | sources → staging → marts DAG |
| `claude-test-5min` | `*/5 * * * *` | 2 | `ingest → aggregate` |
| `claude-test-10min` | `*/10 * * * *` | 3 | `tick → transform → report` |
| `claude-test-15min` | `*/15 * * * *` | 4 | `extract → clean → enrich → publish` |
| `claude-test-hourly` | `0 * * * *` | 5 | diamond: `seed → {branch_a, branch_b} → merged → summary` |
| `claude-test-python` | `*/10 * * * *` | 2 | `extract_data`, `transform_data` — Python assets that log output then **fail** (for exercising logs + failed statuses) |

> All assets are `type: empty` except the `claude-test-python` pipeline, whose two Python assets deliberately raise exceptions so runs produce real logs and failed statuses.

## DAG

```
raw_customers ─▶ stg_customers ─▶ dim_customers ┐
raw_products  ─▶ stg_products  ─▶ dim_products  ┼─▶ fct_orders ─▶ agg_daily_revenue
raw_orders    ─▶ stg_orders    ──────────────────┘
```

## Assets

| Layer   | Asset               | Depends on                                  |
|---------|---------------------|---------------------------------------------|
| source  | `raw_customers`     | —                                           |
| source  | `raw_products`      | —                                           |
| source  | `raw_orders`        | —                                           |
| staging | `stg_customers`     | `raw_customers`                             |
| staging | `stg_products`      | `raw_products`                              |
| staging | `stg_orders`        | `raw_orders`                                |
| mart    | `dim_customers`     | `stg_customers`                             |
| mart    | `dim_products`      | `stg_products`                              |
| mart    | `fct_orders`        | `stg_orders`, `dim_customers`, `dim_products` |
| mart    | `agg_daily_revenue` | `fct_orders`                                |

## Run

```bash
bruin validate ./pipeline
bruin run ./pipeline
```
