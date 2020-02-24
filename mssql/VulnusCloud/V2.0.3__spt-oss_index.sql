DROP PROCEDURE IF EXISTS dbo.sp_select_oss_index
GO
CREATE PROCEDURE sp_select_oss_index @Id int
    AS
    BEGIN
        SELECT * FROM oss_index WHERE id = @Id
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_selectlist_oss_index
GO
CREATE PROCEDURE sp_selectlist_oss_index
    AS
    BEGIN
        SELECT * FROM oss_index
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_insert_oss_index
GO
CREATE PROCEDURE sp_insert_oss_index
    (
        @component_id int = NULL ,
        @version decimal = NULL ,
        @type_format varchar(500) = NULL ,
        @coordinates varchar(500) = NULL ,
        @description varchar(500) = NULL ,
        @reference varchar(500) = NULL ,
        @expire_date datetime = NULL ,
        @http_status int = NULL ,
		@http_status_date datetime = NULL
    )
    AS
    BEGIN
        INSERT INTO oss_index
        (component_id,version,type_format,coordinates,description,reference,expire_date,http_status, http_status_date)
        VALUES
        (@component_id,@version,@type_format,@coordinates,@description,@reference,@expire_date,@http_status, @http_status_date);
        SELECT SCOPE_IDENTITY();
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_update_oss_index
GO
CREATE PROCEDURE sp_update_oss_index
    (
        @id int = NULL ,
        @component_id int = NULL ,
        @version decimal = NULL ,
        @type_format varchar(500) = NULL ,
        @coordinates varchar(500) = NULL ,
        @description varchar(500) = NULL ,
        @reference varchar(500) = NULL ,
        @expire_date datetime = NULL ,
        @http_status int = NULL ,
		@http_status_date datetime = NULL
    )
    AS
    BEGIN
        UPDATE oss_index SET
        component_id = @component_id,
        version = @version,
        type_format = @type_format,
        coordinates = @coordinates,
        description = @description,
        reference = @reference,
        expire_date = @expire_date,
        http_status = @http_status,
		http_status_date = @http_status_date
        WHERE id=@id;
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_delete_oss_index
GO
CREATE PROCEDURE sp_delete_oss_index(@id INT)
    AS
    BEGIN
        DELETE FROM oss_index
        WHERE id=@id;
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_select_by_component_id
GO
CREATE PROCEDURE sp_select_by_component_id 
	(
		@Id int
	)
    AS
    BEGIN
        SELECT * FROM oss_index WHERE component_id = @Id
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_select_by_http_status
GO
CREATE PROCEDURE sp_select_by_http_status 
	(
		@HttpStatus int
	)
    AS
    BEGIN
        SELECT TOP 10 * 
		FROM oss_index 
		WHERE http_status = @HttpStatus 
		ORDER BY id DESC
    END
GO
