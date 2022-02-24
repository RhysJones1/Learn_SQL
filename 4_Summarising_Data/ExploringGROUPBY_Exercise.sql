SELECT
	date,
    payment_methods.name AS payment_method,
    SUM(amount) AS total_payments
FROM payments
JOIN payment_methods
	ON payments.payment_method = payment_methods.payment_method_id
GROUP BY date, name
ORDER BY date