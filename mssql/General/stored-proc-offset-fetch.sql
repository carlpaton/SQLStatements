CREATE OR ALTER PROCEDURE [dbo].[prc_select_some_crap]
(
	@page INT,
	@rows INT
)
AS 

BEGIN

	IF (@page < 1)
		SET @page = 1;
	IF (@rows < 1)
		SET @rows = 25;

	PRINT '@page=' + CONVERT(VARCHAR(10), @page);
	PRINT '@rows=' + CONVERT(VARCHAR(10), @rows);	
		
	BEGIN 
	
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
		
	END;

END;
GO