-- Implicit Join Syntax

SELECT *
FROM orders
JOIN customers
	ON orders.customer_id = customers.customer_id;

-- There is another way to write the above statement using Implicit Join Syntax
-- This however is not advised as its more prone to error
-- For example, if you forget to write WHERE, then you'll 000's of repeating records known as a cross join
-- Whereas if you explicity write as per above, it will throw an error immediately if you forgot the term JOIN

SELECT *
FROM orders, customers
WHERE orders.customer_id = customers.customer_id;