-- Create a view to see the balance
-- for each client

-- clients_balance
-- client_id
-- name
-- balance

USE sql_invoicing;

CREATE VIEW clients_balance AS
SELECT
	clients.client_id,
    clients.name,
    SUM(invoice_total - payment_total) AS Balance
FROM clients
JOIN invoices USING (client_id)
GROUP BY client_id, name;
    