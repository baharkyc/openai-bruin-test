/* @bruin

name: stg_products
type: empty

depends:
  - raw_products

@bruin */

SELECT
    product_id,
    product_name,
    category,
    CAST(unit_price AS DECIMAL(10, 2)) AS unit_price
FROM raw_products
