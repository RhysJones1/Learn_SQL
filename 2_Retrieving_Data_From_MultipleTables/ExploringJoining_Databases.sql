-- Joining databases
-- You only need to prefix the tables that are not part of the current database
-- for example, here the products table belongs to a different table, therefore we prefix it with sql_inventory 
-- which is the name of the database
SELECT *
FROM order_items 
JOIN sql_inventory.products
	ON order_items.product_id = products.product_id