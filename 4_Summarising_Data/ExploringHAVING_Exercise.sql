-- Exercise:
	-- Get the customers
		-- located in Virginia
        -- Who have spent more than $100

USE sql_store;

SELECT
	customers.customer_id,
    customers.first_name,
    customers.last_name,
    SUM(order_items.quantity * order_items.unit_price) AS total_sales
FROM customers
JOIN orders USING (customer_id)
JOIN order_items USING (order_id)
WHERE state = 'VA'
GROUP BY 
	customer_id,
    first_name,
    last_name
HAVING (total_sales > 100)

-- Rule of thumb: If you are using aggregrate function in a select statement and grouping your data
	-- You should group by all the columns in the select clause


