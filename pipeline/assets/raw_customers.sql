/* @bruin

name: raw_customers
type: empty

@bruin */

SELECT * FROM (VALUES
    (1, 'Ada Lovelace',   'ada@example.com',   'US'),
    (2, 'Alan Turing',    'alan@example.com',  'UK'),
    (3, 'Grace Hopper',   'grace@example.com', 'US'),
    (4, 'Katherine Johnson', 'kj@example.com',  'US'),
    (5, 'Edsger Dijkstra', 'ed@example.com',   'NL')
) AS t(customer_id, name, email, country)
