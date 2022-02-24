-- SELECT clients that have an invoice
-- We have previously used the following approach to solve his problem:
SELECT *
FROM clients
WHERE client_id IN(
	SELECT DISTINCT client_id
    FROM invoices
);

-- There is however another way using EXISTS:
-- The EXISTS operator is used to test for the existence of any record in a subquery.
	-- The EXISTS operator returns TRUE if the subquery returns one or more records.

SELECT *
FROM clients
WHERE EXISTS (
	SELECT client_id
    FROM invoices
    WHERE client_id = clients.client_id
)

