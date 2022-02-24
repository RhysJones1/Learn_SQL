-- We can use subqueries for FROM clauses but limit them to basic queries as best practice

USE sql_invoicing;

SELECT *
FROM (
	SELECT
		client_id,
		name,
		(SELECT SUM(invoice_total)
			FROM invoices
			WHERE client_id = clients.client_id) AS total_sales,
		(SELECT AVG(invoice_total) FROM invoices) AS average,
		(SELECT total_sales - average) AS difference 
	FROM clients
) AS sales_summary
WHERE total_sales IS NOT null