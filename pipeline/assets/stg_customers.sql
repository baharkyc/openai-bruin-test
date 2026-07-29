/* @bruin

name: stg_customers
type: empty

depends:
  - raw_customers

@bruin */

SELECT
    customer_id,
    name,
    LOWER(email) AS email,
    country
FROM raw_customers
