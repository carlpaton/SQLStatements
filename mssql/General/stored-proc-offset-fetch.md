### Create Proc

* [stored-proc-offset-fetch.sql](stored-proc-offset-fetch.sql)

This will select rows from the table `[hoe_database].[dbo].[random_data]` using `OFFSET` which is simply calculated as `(@page - 1) * @rows`

```
Example: (2 - 1) * 25 = 25
```

`FETCH NEXT` then simply returns the next `@rows` which was 25.

For this to work we order by the `id DESC` so the most recent records are at the top.

### Execute Proc

```
EXEC dbo.[prc_select_some_crap] @page = 2, @rows = 25;
```

### Quick Test

Changing the values `@page` and `@rows` should show the results if you cannot create stored procs.

```
DECLARE @page INT = 5;
DECLARE @rows INT = 25;

IF (@page < 1)
    SET @page = 1;
IF (@rows < 1)
    SET @rows = 25;

SELECT [id]
      ,[some_int]
      ,[some_bit]
      ,[some_varchar]
      ,[some_datetime]
      ,[some_numeric]
FROM [hoe_database].[dbo].[random_data] (NOLOCK)
ORDER BY id DESC
OFFSET ((@page - 1) * @rows) ROWS 
FETCH NEXT @rows ROWS ONLY;
```

