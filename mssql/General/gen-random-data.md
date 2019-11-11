### Create Table

```
CREATE DATABASE hoe_database;

USE hoe_database;
CREATE TABLE dbo.random_data ( 
    id INT IDENTITY(1,1) NOT NULL, 
    some_int INT,
    some_bit BIT, 
    some_varchar VARCHAR(10), 
    some_datetime DATETIME, 
    some_numeric NUMERIC(16,2) ) 
GO
```

### Insert Some Random Data

```
SET NOCOUNT ON;

DECLARE @count INT 
DECLARE @upper_bound INT 

SET @count = 1
SET @upper_bound = 20000

PRINT('Oh yeah, doing the thing till ' + CONVERT(VARCHAR(10), @upper_bound))

WHILE @count <= @upper_bound
BEGIN
INSERT INTO dbo.random_data 
    SELECT    @count, 
            CASE WHEN DATEPART(MILLISECOND, GETDATE()) >= 500 THEN 0 ELSE 1 END [some_bit], 
            CHAR((ABS(CHECKSUM(NEWID())) % 26) + 97) + CHAR((ABS(CHECKSUM(NEWID())) % 26) + 97) + 
            CHAR((ABS(CHECKSUM(NEWID())) % 26) + 97) + CHAR((ABS(CHECKSUM(NEWID())) % 26) + 97) + 
            CHAR((ABS(CHECKSUM(NEWID())) % 26) + 97) + CHAR((ABS(CHECKSUM(NEWID())) % 26) + 97) + 
            CHAR((ABS(CHECKSUM(NEWID())) % 26) + 97) + CHAR((ABS(CHECKSUM(NEWID())) % 26) + 97) + 
            CHAR((ABS(CHECKSUM(NEWID())) % 26) + 97) + CHAR((ABS(CHECKSUM(NEWID())) % 26) + 97) [some_varchar], 
            DATEADD(MILLISECOND, (ABS(CHECKSUM(NEWID())) % 6000) * -1, 
                DATEADD(MINUTE, (ABS(CHECKSUM(NEWID())) % 1000000) * -1, GETDATE())) [some_datetime], 
            (ABS(CHECKSUM(NEWID())) % 100001) + ((ABS(CHECKSUM(NEWID())) % 100001) * 0.00001) [some_numeric]

	BEGIN
		IF (@count % 5000 = 0)
		PRINT(@count)
	END

	SET @count += 1
END

PRINT('DONE!')
```

### References

* https://www.mssqltips.com/sqlservertip/3157/different-ways-to-get-random-data-for-sql-server-data-sampling/