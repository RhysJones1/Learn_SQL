USE sql_store;

START TRANSACTION;

INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2019-01-01', 1);

INSERT INTO order_items
VALUES (LAST_INSERT_ID(), 1, 1, 1);

COMMIT; -- WHEN MySQL sees this command it will write all the changes to the database. If one of them fails it will automatically undo all
		-- of the previous changes and we say that the transaction is rolled back