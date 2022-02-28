-- A block of SQL code that automatically gets executed before or 
-- after an insert, update, or delete statement 
	-- We commonly use triggers to enforce data consistency
USE sql_invoicing;
DELIMITER $$
DROP TRIGGER IF EXISTS payments_after_insert;

CREATE TRIGGER payments_after_insert
-- This name basically says: This trigger is associated with the payments table and is fired after we insert a record
-- This is a common way of naming our triggers:
	-- First we specify the table name,
    -- then we specify when: so before or after which basically says whether the trigger is executed before or after the sql statement
    -- Then we have the type of sql statement that will fire the trigger
	AFTER INSERT ON payments
    FOR EACH ROW
BEGIN
	UPDATE invoices
    SET payment_total = payment_total + NEW.amount
    WHERE invoice_id = NEW.invoice_id;
    
    INSERT INTO payments_audit
    VALUES (NEW.client_id, NEW.date, NEW.amount, 'Insert', NOW());
END $$

DELIMITER ;

-- INSERT INTO payments
-- VALUES (DEFAULT, 5, 3, '2019-01-01', 10, 1)


