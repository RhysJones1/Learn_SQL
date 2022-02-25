SELECT DATE_ADD(NOW(), INTERVAL 1 DAY);
SELECT DATE_ADD(NOW(), INTERVAL 1 YEAR);
SELECT DATE_ADD(NOW(), INTERVAL -1 YEAR);
-- or
SELECT DATE_SUB(NOW(), INTERVAL 1 DAY);
SELECT DATEDIFF('2019-01-05', '2019-01-01');
SELECT TIME_TO_SEC('09:00');						-- Number of seconds elapsed since midnight
SELECT TIME_TO_SEC('09:00') - TIME_TO_SEC('09:02');	