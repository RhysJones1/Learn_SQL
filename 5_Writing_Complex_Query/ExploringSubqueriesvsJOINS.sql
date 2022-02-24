-- Very often we can rewrite a subquery with a join
-- For example: This is the subquery we wrote

USE sql_invoicing;

SELECT *
FROM clients
WHERE client_id NOT IN(
 	SELECT DISTINCT client_id
 	FROM invoices
 );

-- This is using the JOIN method:

SELECT *
FROM clients
LEFT JOIN invoices USING (client_id)
WHERE invoice_id IS NULL

-- How do you decide? READABILITY and PERFORMANCE
	-- In our example above, the first one looks more readable