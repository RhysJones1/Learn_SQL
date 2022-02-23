-- Do a cross join between shippers and products
	-- Use implicit and then use explicit

SELECT *
FROM shippers s
CROSS JOIN products p
ORDER BY s.name;

SELECT *
FROM shippers s, products p
ORDER BY s.name;