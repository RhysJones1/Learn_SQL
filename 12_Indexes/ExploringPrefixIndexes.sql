-- Indexes take up memory in our databases
-- If we add indexes to strings is especially important to consider and can cause performance issues
-- Smaller indexes can fit in memory and so they can perform faster

CREATE INDEX idx_lastname ON customers (last_name(20));

SELECT 
	COUNT(DISTINCT LEFT(last_name, 1)),
	COUNT(DISTINCT LEFT(last_name, 5)),
    COUNT(DISTINCT LEFT(last_name, 10))
FROM customers;