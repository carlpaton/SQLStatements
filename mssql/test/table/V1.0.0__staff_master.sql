CREATE TABLE staff_master (
  id int IDENTITY(1,1) PRIMARY KEY,
  first_name VARCHAR(45) NULL,
  surname VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  insert_date DATETIME NULL,
  salary FLOAT);