/* @bruin

name: stg_orders
type: empty

depends:
  - raw_orders

@bruin */

SELECT
    order_id,
    customer_id,
    product_id,
    quantity,
    order_date
FROM raw_orders
