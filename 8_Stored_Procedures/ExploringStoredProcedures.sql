-- A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.
-- So if you have an SQL query that you write over and over again, save it as a stored procedure, and then just call it to execute it.
-- You can also pass parameters to a stored procedure, so that the stored procedure can act based on the parameter value(s) that is passed.
-- This is very important when it comes to writing applications 
-- 	-- It's best practice to store all your queries within your application
-- 	-- It can get messy and more importantly, if your queries change, you will have to re compile your code
--     -- It's best practice to use stored procedures
-- Benefits:
-- 	-- Store and Organise SQL
--     -- Faster execution
--     -- Data security


	-- Delimiters are a requirement for MySQL, this isn't required for all DBMS
USE sql_invoicing;
DELIMITER $$
CREATE PROCEDURE get_clients()
BEGIN
	SELECT * FROM clients;
END$$
DELIMITER ;

-- You can call a stored procedure like this:
call get_clients(); 
-- This is usually how you would display your query within an application


