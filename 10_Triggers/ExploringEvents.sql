-- A task or block of SQL code that gets executed according to a schedule

-- SHOW VARIABLES LIKE 'event%';
-- -- SET GLOBAL event_sheduler = OFF or ON

DELIMITER $$
CREATE EVENT yearly_delete_stale_audit_rows
ON SCHEDULE 
	-- AT '2022-05-23'
    EVERY 1 YEAR STARTS '2019-01-01' ENDS '2029-02-02'
DO BEGIN
		DELETE FROM payments_audit
        WHERE action_date < NOW() - INTERVAL 1 YEAR;
END $$

DELIMITER ;