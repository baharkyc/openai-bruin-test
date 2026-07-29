/* @bruin

name: raw_products
type: empty

@bruin */

SELECT * FROM (VALUES
    (100, 'Keyboard', 'peripherals', 49.99),
    (101, 'Mouse',    'peripherals', 24.99),
    (102, 'Monitor',  'displays',    199.99),
    (103, 'Laptop',   'computers',   1299.00),
    (104, 'Webcam',   'peripherals', 79.50)
) AS t(product_id, product_name, category, unit_price)
