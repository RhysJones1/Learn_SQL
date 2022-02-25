-- What if we have multiple expressions to test?
-- Lets build on this example
-- CASE allows us to use multiple expressions
-- The CASE statement goes through conditions and return a value when the first condition is met (like an IF-THEN-ELSE statement).
-- So, once a condition is true, it will stop reading and return the result.
-- If no conditions are true, it will return the value in the ELSE clause.
-- If there is no ELSE part and no conditions are true, it returns NULL.

SELECT
	order_id,
    CASE
		WHEN YEAR(order_date) = YEAR(NOW()) THEN 'Active'
        WHEN YEAR(order_date) = YEAR(NOW()) - 1 THEN 'Last Year'
		WHEN YEAR(order_date) < YEAR(NOW()) - 1 THEN 'Archived'
        ELSE 'Future'
	END AS catergory
FROM orders;

SELECT
	CONCAT(first_name, ' ', last_name) AS customer,
    points,
    CASE
		WHEN points > 3000 THEN 'Gold'
        WHEN points >= 2000 THEN 'Silver'
        ELSE 'Bronze'
	END AS catergory
FROM customers
ORDER BY points DESC