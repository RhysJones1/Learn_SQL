DROP PROCEDURE IF EXISTS get_clients;

DELIMITER $$
CREATE PROCEDURE get_clients()
	SELECT * FROM clients;
BEGIN
END $$

DELIMITER ;
