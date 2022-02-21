-- IN is a much cleaner way of filtering for multiply rows

SELECT *
FROM Customers
WHERE state IN ('VA', 'FL', 'GA');

SELECT *
FROM Customers
WHERE state NOT IN ('VA', 'FL', 'GA');