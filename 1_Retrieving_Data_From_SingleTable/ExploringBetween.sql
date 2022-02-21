SELECT*
FROM customers
WHERE points BETWEEN 1000 AND 3000;

-- Exercise
-- Return customers born between 1/1/1990 and 1/1/2020

SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-1-1' AND '2020-1-1';