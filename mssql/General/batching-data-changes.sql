USE hoe_database;
SET NOCOUNT ON;

BEGIN
	SET LOCK_TIMEOUT 1000;
	
	IF (OBJECT_ID('[dbo].[temp_random_data]') IS NULL)
		BEGIN  
			PRINT('CREATING temp_random_data')
			CREATE TABLE dbo.temp_random_data (
			[id] [int] IDENTITY(1,1) NOT NULL,
			[insert_date] [datetime] DEFAULT GETDATE(),
			[id_random_data] [int] NOT NULL,
			[done] [int] DEFAULT 0 );
			
			ALTER TABLE dbo.temp_random_data ADD CONSTRAINT PK_temp_random_data_id PRIMARY KEY(id);
		END  
	ELSE
		PRINT 'ALREADY EXISTS temp_random_data'
	
	INSERT INTO dbo.temp_random_data
		(id_random_data, done)
	SELECT id, 0 as done
		FROM random_data (NOLOCK)
		WHERE some_bit = 1

	SET LOCK_TIMEOUT -1
END

DECLARE @batch_size INT = 1000
DECLARE @rows_to_update INT = (SELECT COUNT(1) FROM dbo.temp_random_data WITH (NOLOCK))
DECLARE @number_of_batches INT = (@rows_to_update / @batch_size) + 1
DECLARE @current_batch INT = 1
DECLARE @message VARCHAR(255)
DECLARE @rows_exist INT = 1

DROP TABLE IF EXISTS #temp_batch;
CREATE TABLE #temp_batch( id_random_data INT );

WHILE @rows_exist = 1
BEGIN   
		BEGIN TRY
								
			INSERT #temp_batch
			SELECT TOP (@batch_size) id_random_data
			FROM dbo.temp_random_data (NOLOCK)
			WHERE done = 0
			ORDER BY id_random_data ASC;
			
			--- This is the prod table
			UPDATE random_data WITH (ROWLOCK)
			SET some_bit = 0
			FROM random_data AS rd
			INNER JOIN #temp_batch
			ON rd.id = #temp_batch.id_random_data;
			
			--- This temp_ table can be deleted once done and you are happy with the change
			UPDATE dbo.temp_random_data
			SET done = 1
			FROM dbo.temp_random_data AS trd
			INNER JOIN #temp_batch
			ON trd.id_random_data = #temp_batch.id_random_data;				

			TRUNCATE TABLE #temp_batch;

			SET @message = 'Finished batch ' + CAST(@current_batch AS VARCHAR) + ' of ' + CAST(@number_of_batches AS VARCHAR) + '. ' + CAST(CAST(GETDATE() AS SMALLDATETIME) AS VARCHAR)
			RAISERROR(@message, 10, 1);

			SET @current_batch = @current_batch + 1;

		END TRY
		BEGIN CATCH
			PRINT ERROR_MESSAGE();
			BREAK;
		END CATCH

		IF NOT EXISTS (SELECT TOP 1 1 FROM dbo.temp_random_data WHERE done = 0)
		   SET @rows_exist = 0;

END

DROP TABLE IF EXISTS #temp_batch;