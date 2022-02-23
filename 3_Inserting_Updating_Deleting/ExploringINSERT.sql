-- INSERT
-- In attributes, we can see that auto increment is assigned to customer_id.
	-- Using DEFAULT allows SQL to auto assign a customer id
 	
-- INSERT INTO customers
-- VALUES(DEFAULT,
-- 	   'John',
--        'Smith',
--        '1990-01-01',
--        NULL,
--        'address',
--        'city',
--        'CA',
--        DEFAULT);	

-- Alternatively, you can do it this way:
INSERT INTO customers(
	first_name,
    last_name,
    birth_date,
    address,
    city,
    state)
VALUES(
	   'John',
       'Smith',
       '1990-01-01',
       'address',
       'city',
       'CA')	
			