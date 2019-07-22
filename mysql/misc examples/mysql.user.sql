select * from mysql.user 

#---- update expired password
UPDATE mysql.user 
SET authentication_string = PASSWORD('f00barsw33tpassword!'), 
password_expired = 'N' 
WHERE User = 'root' 
AND Host = 'localhost'; FLUSH PRIVILEGES;