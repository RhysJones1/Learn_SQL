-- Copying Tables
-- Using CREATE TABLE AS is a quick way of copying a new table 
-- The SELECT FROM here is known as a sub query 
-- CREATE TABLE orders_archived AS
-- SELECT * FROM orders;

-- What if we only want to copy certain elements from the table?
	-- After running the above query we can right click on the table and select TRUNCATE
    -- This will clear all of the data within that table
    -- Below is an example of using a select statement as subquery in an insert statement

INSERT INTO orders_archived
SELECT *
FROM orders
WHERE order_date < '2019-01-01'