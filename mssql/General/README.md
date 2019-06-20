## Temporary Tables

Instantiated in tempdb

`CREATE TABLE #carl_log`
`(`
​    `c1 Varchar(50),` 
​    `c2 Varchar(50),` 
`);`

* [table variables.sql](<https://github.com/carlpaton/SQLStatements/blob/master/mssql/General/table%20variables.sql>)

## Table Variables

Instantiated in tempdb

`DECLARE @carl_log table` 
`(` 
​    `c1 Varchar(50),` 
​    `c2 Varchar(50)` 
`);`

* [temporary tables.sql](<https://github.com/carlpaton/SQLStatements/blob/master/mssql/General/temporary%20tables.sql>)

## References

* <https://www.mssqltips.com/sqlservertip/1556/differences-between-sql-server-temporary-tables-and-table-variables/>
