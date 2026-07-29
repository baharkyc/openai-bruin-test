/* @bruin

name: dim_products
type: empty

depends:
  - stg_products

@bruin */

SELECT
    product_id,
    product_name,
    category,
    unit_price
FROM stg_products
