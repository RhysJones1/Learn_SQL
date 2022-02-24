USE sql_invoicing;
SELECT
	client_id,
    name,
    (SELECT SUM(invoice_total)
		FROM invoices
		WHERE client_id = clients.client_id) AS total_sales,
    (SELECT AVG(invoice_total) FROM invoices) AS average,
	(SELECT total_sales - average) AS difference 
FROM clients