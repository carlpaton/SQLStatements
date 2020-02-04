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
        @coordinates varchar(500) = NULL ,
        @description varchar(500) = NULL ,
        @reference varchar(500) = NULL ,
        @expire_date datetime = NULL ,
        @http_status int = NULL 
    )
    AS
    BEGIN
        INSERT INTO oss_index
        (component_id,version,coordinates,description,reference,expire_date,http_status)
        VALUES
        (@component_id,@version,@coordinates,@description,@reference,@expire_date,@http_status);
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
        @coordinates varchar(500) = NULL ,
        @description varchar(500) = NULL ,
        @reference varchar(500) = NULL ,
        @expire_date datetime = NULL ,
        @http_status int = NULL 
    )
    AS
    BEGIN
        UPDATE oss_index SET
        component_id = @component_id,
        version = @version,
        coordinates = @coordinates,
        description = @description,
        reference = @reference,
        expire_date = @expire_date,
        http_status = @http_status
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
