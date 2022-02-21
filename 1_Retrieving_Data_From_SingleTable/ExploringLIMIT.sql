-- Limit allows us to limit the number of items returned from a query
SELECT *
FROM customers
LIMIT 3;

-- Ofsetting an skipping
SELECT *
FROM customers
LIMIT 6, 3; -- Here we are saying, skip the first 6 records



