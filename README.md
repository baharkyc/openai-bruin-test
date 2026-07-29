# claude-test

A test [Bruin](https://github.com/bruin-data/bruin) project with a single DuckDB pipeline (`claude-test`) of 10 assets forming a sources → staging → marts DAG.

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
