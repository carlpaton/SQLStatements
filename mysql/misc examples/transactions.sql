START TRANSACTION;

SET SQL_SAFE_UPDATES = 0;

SELECT COUNT(*) FROM `database_name`.`foo` where `desc` = 'bizz';
UPDATE `database_name`.`foo` SET `desc` = 'batt' WHERE `desc` = 'bizz';

SET SQL_SAFE_UPDATES = 1;

#COMMIT;
ROLLBACK;


