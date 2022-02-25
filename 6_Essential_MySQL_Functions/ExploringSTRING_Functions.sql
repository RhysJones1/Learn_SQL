SELECT UPPER('Hello');
SELECT LOWER ('HELLO');
SELECT LTRIM('     Hello');
SELECT RTRIM('Hello      ');
SELECT TRIM('     Hello      ');
SELECT LEFT('HelloWorld', 5);
SELECT RIGHT('HelloWorld', 5);
SELECT SUBSTRING('HelloWorld', 3, 5);
SELECT LOCATE('o', 'HelloWorld');
SELECT REPLACE('HELLO WORLD', 'WORLD', 'WORDLE');
SELECT CONCAT('Hello', 'World');

USE sql_store;
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM customers;