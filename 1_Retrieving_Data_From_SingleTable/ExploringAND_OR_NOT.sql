/* OR  */
SELECT *
FROM Customers
WHERE birth_date > '1990-01-01' OR points > 1000;


/* OR AND */
SELECT *
FROM Customers
WHERE birth_date > '1990-01-01' OR points > 1000 AND 
state = 'VA';

/* AND has a higher priority over OR so that gets
executed first. We can get around this by using 
parentheses. We also add parentheses to help
with readability */

SELECT *
FROM Customers
WHERE birth_date > '1990-01-01' OR 
	  (points > 1000 AND state = 'VA');

/* NOT */      
SELECT *
FROM Customers
WHERE NOT (birth_date > '1990-01-01' OR points > 1000);

/* Another way instead of using NOT */

SELECT *
FROM Customers
WHERE birth_date <= '1990-01-01' AND points <= 1000;


