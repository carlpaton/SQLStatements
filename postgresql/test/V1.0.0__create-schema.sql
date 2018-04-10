/*connect to the postgres schema first, then run these, then connect to 'test.test'*/

CREATE DATABASE test
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;

CREATE SCHEMA test
    AUTHORIZATION postgres;