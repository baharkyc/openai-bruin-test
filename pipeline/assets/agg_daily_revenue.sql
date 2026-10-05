/* @bruin

name: agg_daily_revenue
uri: openai-test.agg_daily_revenue
type: empty

depends:
  - fct_orders

@bruin */

SELECT
    order_date,
    COUNT(DISTINCT order_id) AS orders,
    SUM(quantity)            AS units_sold,
    SUM(revenue)             AS total_revenue
FROM fct_orders
GROUP BY order_date
ORDER BY order_date
