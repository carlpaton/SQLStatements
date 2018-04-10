/*dbeaver may not know what type serial is, try pgAdmin if it plows*/

CREATE TABLE test.staff_master (
  id serial NOT NULL,
  first_name text,
  surname text,
  email text,
  insert_date date,
  salary real,  
  CONSTRAINT employee_pkey PRIMARY KEY (id));