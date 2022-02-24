-- SELECT invoices larger than all invoices of client 3

USE sql_invoicing;

SELECT *
FROM invoices
WHERE invoice_total >(
	SELECT MAX(invoice_total)
	FROM invoices
	WHERE client_id = 3
);

-- Alternative way:

SELECT * 
FROM invoices
WHERE invoice_total > ALL(
	SELECT invoice_total
    FROM invoices
    WHERE client_id = 3
)