# Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column. 
# To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.	0.000 sec

SHOW VARIABLES LIKE 'SQL_SAFE_UPDATES';
SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;  # revert back to default