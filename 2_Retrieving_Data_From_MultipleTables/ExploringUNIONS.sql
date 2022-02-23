-- So far we've covered JOIN in a lot of depth where we can combine fields from multiple tables
-- We can also combine rows from multiple tables
-- Using UNION we can combine results from different queries and present in a single table
-- See below, comment out UNION and notice the difference
SELECT
	order_id,
    order_date,
    'Active' AS status
FROM orders
WHERE order_date >= '2019-01-01'		-- Hardcoding a date here isn't ideal. This will be covered in a later section
UNION
SELECT
	order_id,
    order_date,
    'Archived' AS status
FROM orders
WHERE order_date < '2019-01-01';

-- The above example combines queries from a single table
-- We can also use UNION on multiple tables:
SELECT first_name
FROM customers
UNION
SELECT name
FROM shippers
-- There is probably no use case for this result but it demonstrates what we can do with UNION