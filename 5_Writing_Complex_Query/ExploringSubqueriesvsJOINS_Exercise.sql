-- Find customers who have ordered lettuce (id = 3)
-- select customer_id, first_name, last_name

USE sql_store;

SELECT *
FROM customers
WHERE customer_id IN (
	SELECT orders.customer_id
    FROM order_items
    JOIN orders USING (order_id)
    WHERE product_id = 3
);

SELECT DISTINCT customer_id, first_name, last_name
FROM customers
JOIN orders USING (customer_id)
JOIN order_items USING (order_id)
WHERE order_items.product_id = 3
