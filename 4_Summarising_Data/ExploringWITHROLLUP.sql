-- IN SQL we have a power tool known as WITH ROLLUP
-- This provides an extra row that summarises our data

USE sql_invoicing;

SELECT
	client_id,
    SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY client_id WITH ROLLUP;

-- We can use it with multiple columns too:
-- Note that this is for MYSQL only

SELECT
	state,
    city,
    SUM(invoice_total) AS total_sales
FROM invoices i
JOIN clients c USING (client_id)
GROUP BY state, city WITH ROLLUP;