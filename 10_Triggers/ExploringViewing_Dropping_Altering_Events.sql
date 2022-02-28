SHOW EVENTS;
SHOW EVENTS LIKE 'Yearly%';
DROP EVENT IF EXISTS yearly_delete_stale_audit_rows;
ALTER EVENT yearly_delete_stale_audit_rows DISABLE;