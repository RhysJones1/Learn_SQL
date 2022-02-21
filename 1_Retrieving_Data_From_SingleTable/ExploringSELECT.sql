SELECT 
	last_name,
    first_name,
    points,
    points * 10 + 100 AS 'discount_factor'	-- BIDMAS Applies. AS allows us to change the name of the column
FROM customers;

SELECT state
FROM customers;

SELECT DISTINCT state AS 'State No Duplicates'
FROM customers;

SELECT name,
    unit_price,
    unit_price * 1.1 AS 'new_price'
FROM products;




