USE sql_invoicing;

SELECT
	payments.date,
    payments.invoice_id,
    payments.amount,
    clients.name,
    payment_methods.name    
FROM payments
JOIN clients
	ON payments.client_id = clients.client_id
JOIN payment_methods
	ON payments.payment_method = payment_methods.payment_method_id;
    