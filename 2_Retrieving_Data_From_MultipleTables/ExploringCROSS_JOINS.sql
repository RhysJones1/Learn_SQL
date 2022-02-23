-- CROSS JOINS: We use corss joins to combine every record from the first table to every record in the second table
-- When are they used? Say you had a table of sizes, small, medium or large and then a table of colours and then 
-- you want to combine all the sizes with all of the colours, this is when you use a cross join

-- This is an example of an explicit syntax
SELECT
	c.first_name AS customer,
    p.name AS product    
FROM customers c
CROSS JOIN products p
ORDER BY c.first_name;

-- We also have inplicit syntax however explicit is more readable and clear

SELECT
	c.first_name AS customer,
    p.name AS product    
FROM customers c, orders o
ORDER BY c.first_name
