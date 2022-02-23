USE sql_store;
-- In our previous exercises we explored JOIN. When our queries become bigger and more complex this can cause 
	-- issues with readibility and maintainability of our code 
    -- There is a way around this
    -- This is before:
    
SELECT
	p.product_id,
    p.name,
    oi.quantity
FROM products p
JOIN order_items oi
	ON p.product_id = oi.product_id;

-- Simplifying: If the column name is the exactly the same either side of the condition
	-- We can replace on with USING:
    
SELECT
	p.product_id,
    p.name,
    oi.quantity
FROM products p
JOIN order_items oi
	USING (product_id);
-- While we don't see a big benefit here, as our queries grow larger, this simplification would be welcomed
	-- Remember, the name of the columns need to be the same in order to use this
    
-- We can also use this technique when dealing with Composite Primary Key
	-- When we join the table with USING we should compare both Composite Primary Keys:
-- BEFORE:
SELECT *
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id = oin.order_id AND
		oi.product_id = oin.product_id;
-- As you can see, as we start comparing more items from different tables it starts to become messy

-- AFTER
SELECT *
FROM order_items oi
JOIN order_item_notes oin
	USING(order_id, product_id)
-- As you can see, this is much cleaner


    
    
