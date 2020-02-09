### Stored Proc

* [stored-proc-with-cursor-loop](stored-proc-with-cursor-loop.md)

### Temporary Tables

Instantiated in tempdb

```
CREATE TABLE #carl_log
(
	c1 Varchar(50), 
	c2 Varchar(50) 
);
```

* [table variables.sql](<https://github.com/carlpaton/SQLStatements/blob/master/mssql/General/table%20variables.sql>)

### Table Variables

Instantiated in tempdb

```
DECLARE @carl_log table 
( 
	c1 Varchar(50), 
	c2 Varchar(50)
);
```

* [temporary tables.sql](<https://github.com/carlpaton/SQLStatements/blob/master/mssql/General/temporary%20tables.sql>)

### DateAdd

```
--- add using hours
SELECT DATEADD(hh, 24 * 1 + 11, DATEADD(dd, DATEDIFF(dd, 0, GETDATE()), 0))

--- add using minutes
SELECT DATEADD(minute, 2115, DATEADD(dd, DATEDIFF(dd, 0, GETDATE()), 0))
```

### Order by random

Select a random record from a large table

```
SELECT TOP 1 *
FROM dbo.carl_table (NOLOCK)
ORDER BY NEWID()
```

### WAITFOR DELAY

10 seconds

```
WAITFOR DELAY '00:00:10';
```

### References

* <https://www.mssqltips.com/sqlservertip/1556/differences-between-sql-server-temporary-tables-and-table-variables/>
