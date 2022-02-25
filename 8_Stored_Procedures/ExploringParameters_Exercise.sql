 -- Write a stored procedure to return invoices
-- for a given client
-- get invoices_by_client

DELIMITER $$
CREATE PROCEDURE get_invoices_by_client
(
	client VARCHAR(20) 
)
BEGIN
	SELECT * FROM invoices i
    WHERE i.client = client;
END $$