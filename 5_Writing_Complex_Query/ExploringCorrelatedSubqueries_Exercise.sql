-- Get invoices that are larger than the clients average invoice amount 
-- SELECT *
-- FROM employees
-- WHERE salary > (
-- 	SELECT AVG(salary)
--     FROM employees
--     WHERE office_id = employees.office_id
-- )
USE sql_invoicing;

SELECT *
FROM invoices
WHERE invoice_total > (
	SELECT AVG(invoice_total)
    FROM invoices
    WHERE client_id = invoices.client_id
) 