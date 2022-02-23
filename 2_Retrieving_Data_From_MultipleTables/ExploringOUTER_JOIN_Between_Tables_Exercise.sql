-- Combine orders, shippers, customers and order_statuses to create the following table

SELECT
	orders.order_date,
    orders.order_id,
    customers.first_name,
    shippers.name AS shipper,
    order_statuses.name AS status
FROM orders
LEFT JOIN shippers
	ON orders.shipper_id = shippers.shipper_id
JOIN customers
	ON orders.customer_id = customers.customer_id
JOIN order_statuses
	ON orders.status = order_statuses.order_status_id
ORDER BY status, first_name;
