SELECT *
FROM customers
WHERE last_name LIKE 'b%';  -- The % sign take sin to account all of the characters that come after b

SELECT *
FROM customers
WHERE last_name LIKE 'brush%';

-- What if we want to search between a word? the % sign can be moved to do this:
SELECT *
FROM customers
WHERE last_name LIKE '%b%'; -- The % sign before and after b means we can have any number of characters before and after b

-- Find names that end with 'y'. Again, we just use the % sign
SELECT *
FROM customers
WHERE last_name LIKE '%y';

-- We can use _ _ to stipulate how many characters come before or after the word
SELECT *
FROM customers
WHERE last_name LIKE '_____y'; -- 5 underscores and exactly 6 characters long 

SELECT *
FROM customers
WHERE last_name LIKE 'b____y'; -- start with b and end with y and 6 characters in total

-- % any number of characters
-- _ = single characters
-- The LIKE operator is an old command within SQL and there is actually a different way of achieving the above outcomes called REGEXP






