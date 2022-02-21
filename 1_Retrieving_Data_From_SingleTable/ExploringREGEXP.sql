-- REGEXP: Short for regular expression. They are very powerful for searching for strings and more complex patterns
SELECT *
FROM Customers
WHERE last_name REGEXP 'field';

-- We use the ^ sign to represent the beginning of a string
SELECT *
FROM Customers
WHERE last_name REGEXP '^field'; -- Here we are saying that the last name must start with the word field

-- We us the $ sign the represent the end of a string 
SELECT *
FROM Customers
WHERE last_name REGEXP 'field$'; -- Here we are saying that the last name must end with the word field

-- We can search for multiple words by using |
SELECT *
FROM Customers
WHERE last_name REGEXP 'field|Mac|rose';

SELECT *
FROM Customers
WHERE last_name REGEXP '^field|Mac|rose'; -- last names that start with field, Mac or rose

SELECT *
FROM Customers
WHERE last_name REGEXP 'field$|Mac|rose'; -- last names that end with field or contain Mac or rose

-- We use [] to stipulate any characters that come before a character
SELECT *
FROM Customers
WHERE last_name REGEXP '[gim]e'; -- Here we are searching for any  last names that contain ge, ie, or me

SELECT *
FROM Customers
WHERE last_name REGEXP '[a-h]e';

-- ^ beginning
-- $ end
-- | logical or
-- [abcd]
-- [a-f]
 
