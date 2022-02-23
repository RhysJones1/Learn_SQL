-- When dealing with tables, there are instances where there are no columns which help uniquely identify records 
-- This is problematic when you want to return specific records in a given table
-- In these situations the table will possess more than one primary key in order to uniquely identify records
-- This is called: COMPOSITE PRIMARY KEY
-- When you have a composite primary key, you need to know how to combine them with other tables   
SELECT *
FROM order_items
JOIN order_item_notes
	ON order_items.order_id = order_item_notes.order_id
    AND order_items.product_id = order_item_notes.product_id
-- The above is known as a COMPOUND JOIN CONDITION