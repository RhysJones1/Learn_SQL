USE sql_store;

CREATE INDEX idx_state_points ON customers (state, points); -- Here we have a composite index
SHOW INDEX IN customers;
EXPLAIN SELECT customer_id FROM customers
WHERE state = 'CA' AND points > 1000;
-- With the above query, for small indexes this wouldn't be a problem
-- However with larger DB's, this can be problematic
-- The first half of the WHERE clause does a good job of reducing the number of rows searches: 112 as apposed to 1100
-- The second half however requires a table read and therefore the search runs in On^, as the data increases so does time
-- This is where Composite indexes help where we can index multiple columns
-- After adding the composite index on line three, the number of rows checked has reduced to 58 as apposed to 112

-- Rules:
	-- We should place the most commonly used columns first when declaring 
    -- We must also put columns with higher cardinality first - 'number of unique values in a table'
    -- These aren't hard ans fast rules just guidance, the context is the most important 

DROP INDEX idx_points ON customers;

