UPDATE invoices_with_balance
SET payment_total = invoice_total
WHERE invoice_id = 2;
-- As you can see, invoice id 2 has now dissapeared due to the condition set within the view
-- How do you go about preventing this from happening?
-- We add WITH OPTION CHECK to our view
-- Let's try it with invoice_id 3:

UPDATE invoices_with_balance
SET payment_total = invoice_total
WHERE invoice_id = 3
-- When we run it again, we now get an error to prevent this from occuring

 -- Summary
 
 -- What are the benefits?
	-- Simplifying queries
    -- Reduce the impace of changes
    -- Restrict access to the data


