/* @bruin

name: dim_customers
type: empty

depends:
  - stg_customers

@bruin */

SELECT
    customer_id,
    name,
    email,
    country
FROM stg_customers
