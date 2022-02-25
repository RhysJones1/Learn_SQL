-- Variables in standard query language (SQL) are named locations in the memory
-- which are used by the SQL query or program to manipulate the data.
-- These named memory locations act as placeholders for the value of the variable.
-- The size of the memory location depends upon the data type of variable.
-- We can have multiple types of variables in SQL based on the data type of the data that
-- it can hold such as varchar, text, int, numeric, date, timestamp, etc.

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_risk_factor`()
BEGIN
	DECLARE risk_factor DECIMAL(9, 2) DEFAULT 0;
    DECLARE invoices_total DECIMAL (9,2);
    DECLARE invoices_count INT;
    
    SELECT COUNT(*), SUM(invoice_total)
    INTO invoices_count, invoices_total
    FROM invoices;
    
    SET risk_factor = invoices_total / invoices_count * 5;
    
    SELECT risk_factor;    
END