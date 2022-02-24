-- Find the products that have ever been ordered
-- SELECT *
-- FROM clients
-- WHERE EXISTS (
-- 	SELECT client_id
--     FROM invoices
--     WHERE client_id = clients.client_id
-- )

USE sql_store;

SELECT*
FROM products
WHERE NOT EXISTS(
	SELECT product_id
    FROM order_items
    WHERE product_id = products.product_id
)