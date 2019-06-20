## Temporary Tables

Instantiated in tempdb

`CREATE TABLE #carl_log`
`(`
​    `c1 Varchar(50),` 
​    `c2 Varchar(50),` 
`);`

* (See temporary tables.sql)[temporary tables.sql]

## Table Variables

Instantiated in tempdb

`DECLARE @carl_log table` 
`(` 
​    `c1 Varchar(50),` 
​    `c2 Varchar(50)` 
`);`

* (See table variables.sql)[table variables.sql]

## References

* <https://www.mssqltips.com/sqlservertip/1556/differences-between-sql-server-temporary-tables-and-table-variables/>