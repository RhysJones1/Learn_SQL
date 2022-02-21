-- We use ORDER BY to sort our data within tables
-- By default, tables are sorted by the field that holds the primary key
	-- In our table, customer ID holds the primary key

SELECT *
FROM customers
ORDER BY first_name;

-- Order descending
SELECT *
FROM customers
ORDER BY first_name DESC;

-- Order by multiple fields 
SELECT *
FROM customers
ORDER BY state, first_name; -- Here we order by state and order first names within each state

SELECT *
FROM customers
ORDER BY state DESC, first_name; -- Order by state in descending order and then first names in ascending

-- you can sort by a field not specified in SELECT
SELECT first_name, last_name
FROM customers
ORDER BY birth_date;

-- you can sort by an alias which has been added
SELECT first_name, last_name, 10 AS points
FROM customers
ORDER BY points, first_name;

-- You can sort by column numbers by this is not advised

