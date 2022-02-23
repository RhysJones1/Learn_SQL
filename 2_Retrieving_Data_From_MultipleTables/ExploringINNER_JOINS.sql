-- Very often when we write queries we request information from multiple tables 

SELECT order_id, orders.customer_id, first_name, last_name
FROM orders
JOIN customers 
	ON orders.customer_id = customers.customer_id; -- Here we are saying: When joining the orders table and customer_id table
												   -- make sure the customer_id in the orders table = the customer_id in ghe customers table

-- We can make this code simpler and cleaner to read:                                                   
SELECT order_id, o.customer_id, first_name, last_name
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id;