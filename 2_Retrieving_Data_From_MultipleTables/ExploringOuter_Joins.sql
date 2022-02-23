-- OUTER JOINS
-- So far we have only covered INNER JOINS and we wrote it as JOIN
-- This is because INNER is optional and is assigned by default
-- Here, we will discuss OUTER JOINS and the problems they solve
-- First we will write it as an INNER JOIN
SELECT
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;
-- The above shows customers who have placed an order
-- Those who have placed an order are not shown
-- Why is this? This is because of the condition we added within the JOIN statement
	-- Which returns customers who have placed an order
-- What if we also want to show those customers who haven't placed an order?
-- This is where an OUTER JOIN comes into play

-- OUTER JOINS:
	-- There are two types: LEFT JOINS and RIGHT JOINS
    -- With LEFT JOINS, all the records from the left table which in our example
		-- is the customers table are returned regardless of whether the join statements is true or false
        -- When we run the code below we can see than customers who haven't placed an order are also included
SELECT
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- With RIGHT JOINS all the records from the right table, in this case the orders table are returned
	-- Regardless of whether the JOIN condition is true or not
-- When we run the query, we can see that we return the same results as the first INNER JOIN query
-- This is because we are returning everthing from the orders record
-- BEST PRACTICE: Stick with LEFT JOINS
	-- Mixing between the two is likely to affect your readability and maintainability
    
SELECT
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
RIGHT JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;
