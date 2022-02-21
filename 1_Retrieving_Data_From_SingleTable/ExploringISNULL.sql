-- IS NULL can be used to retrieve fields which have have missing data
SELECT *
FROM customers
WHERE phone IS NULL;

-- We could use IS NOT NULL to search for those who do have data within a field 

-- Exercise: Get the orders that are not shipped

SELECT *
FROM sql_store.orders
WHERE shipped_date IS NULL;

 