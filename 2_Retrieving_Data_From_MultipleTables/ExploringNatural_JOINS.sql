-- Not recommended as it produced unexpected results
	-- This is incase you see it around
    -- Why are they dangerous? We are allowing the database to make the decision where we join our tables

USE sql_store;
SELECT
	o.order_id,
    c.first_name	
FROM orders o
NATURAL JOIN customers c