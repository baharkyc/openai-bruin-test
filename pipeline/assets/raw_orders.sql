/* @bruin

name: raw_orders
type: empty

@bruin */

SELECT * FROM (VALUES
    (1000, 1, 100, 2, DATE '2026-07-01'),
    (1001, 1, 103, 1, DATE '2026-07-01'),
    (1002, 2, 101, 3, DATE '2026-07-02'),
    (1003, 3, 102, 1, DATE '2026-07-02'),
    (1004, 4, 104, 2, DATE '2026-07-03'),
    (1005, 5, 100, 1, DATE '2026-07-03'),
    (1006, 2, 102, 2, DATE '2026-07-04')
) AS t(order_id, customer_id, product_id, quantity, order_date)
