CREATE OR ALTER PROCEDURE [dbo].[prc_run_some_crap]
(
	@id			                        BIGINT,
	@unused_second_param_id			    BIGINT
)
AS 

BEGIN
	
	PRINT '@id=' + CONVERT(VARCHAR(10), @id);
	PRINT '@unused_second_param_id=' + CONVERT(VARCHAR(10), @unused_second_param_id);

	DECLARE @some_id int, 
	@some_description varchar(10), 
	@some_date datetime, 
	@some_bool bit;  

	DECLARE My_Sweet_Cursor CURSOR LOCAL STATIC FORWARD_ONLY READ_ONLY FOR  

		SELECT 
			some_id, some_description, some_date, some_bool
		FROM 
			 dbo.[first_table] WITH (NOLOCK)
		WHERE 
			id = @id;

	OPEN My_Sweet_Cursor;  

		FETCH NEXT 
		FROM My_Sweet_Cursor
		INTO @some_id, some_description, some_date, some_bool;

	WHILE @@FETCH_STATUS = 0  
	BEGIN 
	
		IF NOT EXISTS(SELECT some_id FROM [dbo].[second_table] WITH (NOLOCK) WHERE some_id=@some_id AND some_description=@some_description)
			BEGIN  
				PRINT 'Copying record : ' + CONVERT(VARCHAR(10), @some_id);
				INSERT INTO [dbo].[second_table]
				([some_id]
				,[some_description]
				,[some_date]
				,[some_bool])
				VALUES
				(@some_id, 
				@some_description, 
				@some_date,
				@some_bool);
			END; 
		ELSE
			BEGIN 
				PRINT 'Already exists ' + CONVERT(VARCHAR(10), @some_id);
			END;
			
		FETCH NEXT 
		FROM My_Sweet_Cursor
		INTO @some_id, some_description, some_date, some_bool;	
		
	END;

	CLOSE My_Sweet_Cursor;  
	DEALLOCATE My_Sweet_Cursor;  

END;
GO