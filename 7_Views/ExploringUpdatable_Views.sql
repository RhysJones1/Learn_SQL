-- You can use view only under certain circumstances. If it doesn't have:
	-- DISTINCT
    -- AGGREGATE
    -- GROUP BY/HAVING
    -- UNION
-- If we don't have any above, we call it an updateable view 
-- This means we can update data through it 
-- We can use it within INSERT, UPDATE or DELETE statements

CREATE OR REPLACE VIEW invoices_with_balance AS
SELECT
	invoice_id,
    number,
    client_id,
    invoice_total,
    payment_total,
    invoice_total - payment_total AS balance,
    invoice_date,
    due_date,
    payment_date
FROM invoices
WHERE (invoice_total - payment_total) > 0
WITH CHECK OPTION;

DELETE FROM invoices_with_balance
WHERE invoice_id = 1;

UPDATE invoices_with_balance
SET due_date = DATE_ADD(due_date, INTERVAL 2 DAY)
WHERE invoice_id = 2

    