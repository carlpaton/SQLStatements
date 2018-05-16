DROP TABLE IF EXISTS staff_master; 

CREATE TABLE staff_master 
(
id INTEGER PRIMARY KEY, 
first_name VARCHAR(50), 
surname VARCHAR(50),
email VARCHAR(50),
insert_date DATETIME,
salary LONG
);