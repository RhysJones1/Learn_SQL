-- Get customers whose:
	-- first names are ELKA or AMBUR
    -- last names end with EY or ON
    -- last names start with MY or contains SE 
    -- lastr names contain B followed by R or U

SELECT *
FROM Customers
WHERE first_name REGEXP 'ELKA|AMBUR';

SELECT *
FROM Customers
WHERE last_name REGEXP 'EY$|ON$';

SELECT *
FROM Customers
WHERE last_name REGEXP '^MY|SE';

SELECT *
FROM Customers
WHERE first_name REGEXP 'B[RU]';