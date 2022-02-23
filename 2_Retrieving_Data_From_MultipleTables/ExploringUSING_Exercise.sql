USE sql_invoicing;

SELECT
	p.date,
    c.name AS 'client name',
    p.amount,
    pm.name AS 'payment method'
FROM payments p
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
JOIN clients c
	USING (client_id)
