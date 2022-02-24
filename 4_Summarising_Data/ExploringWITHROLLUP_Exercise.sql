USE sql_invoicing;

SELECT
	payment_methods.name as payment_method,
    SUM(amount) AS total
FROM payments
JOIN payment_methods
	ON payments.payment_method = payment_methods.payment_method_id
GROUP BY payment_methods.name WITH ROLLUP -- You can't use the column alias you need to use the name of the column