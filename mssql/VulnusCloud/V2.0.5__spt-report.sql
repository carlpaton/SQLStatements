DROP PROCEDURE IF EXISTS dbo.sp_select_report
GO
CREATE PROCEDURE sp_select_report @Id int
    AS
    BEGIN
        SELECT * FROM report WHERE id = @Id
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_selectlist_report
GO
CREATE PROCEDURE sp_selectlist_report
    AS
    BEGIN
        SELECT * FROM report
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_insert_report
GO
CREATE PROCEDURE sp_insert_report
    (
        @project_id int = NULL ,
        @insert_date datetime = NULL 
    )
    AS
    BEGIN
        INSERT INTO report
        (project_id,insert_date)
        VALUES
        (@project_id,@insert_date);
        SELECT SCOPE_IDENTITY();
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_update_report
GO
CREATE PROCEDURE sp_update_report
    (
        @id int = NULL ,
        @project_id int = NULL ,
        @insert_date datetime = NULL 
    )
    AS
    BEGIN
        UPDATE report SET
        project_id = @project_id,
        insert_date = @insert_date
        WHERE id=@id;
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_delete_report
GO
CREATE PROCEDURE sp_delete_report(@id INT)
    AS
    BEGIN
        DELETE FROM report
        WHERE id=@id;
    END
GO
