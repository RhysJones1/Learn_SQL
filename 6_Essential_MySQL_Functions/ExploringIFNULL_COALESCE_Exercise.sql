-- Exercise:
	-- Create a table that displays a customers full name and phone number
    -- If there is no number return 'Unknown'
SELECT
	CONCAT(first_name, ' ', last_name) AS customer,
    IFNULL(phone, 'Unknown') AS phone
FROM customers;

-- or

SELECT
	CONCAT(first_name, ' ', last_name) AS customer,
    COALESCE(phone, 'Unknown') AS phone
FROM customers