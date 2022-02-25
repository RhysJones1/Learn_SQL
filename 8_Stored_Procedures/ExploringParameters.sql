DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state
(
	state CHAR(2) -- USE varchar unless you know it's a fixed length
)
BEGIN
	SELECT * FROM clients c
    WHERE c.state = state;
END $$

DELIMITER ;

-- CALL get_clients_by_state('CA')

--