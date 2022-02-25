-- IFNULL: Return a specified value IF the expression is NULL, otherwise return the expression:
USE sql_store;

SELECT 
	order_id,
    IFNULL(shipper_id, 'NOT assigned') AS shipper		
FROM orders;

-- COALESCE() Function
	-- The COALESCE() function returns the first non-null value in a list.
SELECT 
	order_id,
    COALESCE(shipper_id, comments, 'NOT assigned') AS shipper		
FROM orders;

SELECT
	CONCAT(first_name, ' ', last_name) AS customer,
    IFNULL(phone, 'Unknown') AS phone
FROM customers
