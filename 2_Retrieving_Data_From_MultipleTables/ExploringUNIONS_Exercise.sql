-- Exercise
	-- Create a table using the customer table which displays
		-- Customer_id
        -- first_name
        -- points
        -- type: bronze, silver, gold
			-- Bronze = less than 2000 
            -- Silver = 2000 - 3000
            -- Gold = 3000+
		-- sort by first name
        
SELECT
	customer_id,
    first_name,
    points,
    'Bronze' AS type
FROM customers
WHERE points < 2000
UNION
SELECT
	customer_id,
    first_name,
    points,
    'Silver' AS type
FROM customers
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT
	customer_id,
    first_name,
    points,
    'Gold' AS type
FROM customers
WHERE points > 3000
ORDER BY first_name
