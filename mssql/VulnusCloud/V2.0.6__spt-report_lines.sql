DROP PROCEDURE IF EXISTS dbo.sp_select_report_lines
GO
CREATE PROCEDURE sp_select_report_lines @Id int
    AS
    BEGIN
        SELECT * FROM report_lines WHERE id = @Id
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_selectlist_report_lines
GO
CREATE PROCEDURE sp_selectlist_report_lines
    AS
    BEGIN
        SELECT * FROM report_lines
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_insert_report_lines
GO
CREATE PROCEDURE sp_insert_report_lines
    (
        @report_id int = NULL ,
        @oss_index_id int = NULL 
    )
    AS
    BEGIN
        INSERT INTO report_lines
        (report_id,oss_index_id)
        VALUES
        (@report_id,@oss_index_id);
        SELECT SCOPE_IDENTITY();
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_update_report_lines
GO
CREATE PROCEDURE sp_update_report_lines
    (
        @id int = NULL ,
        @report_id int = NULL ,
        @oss_index_id int = NULL 
    )
    AS
    BEGIN
        UPDATE report_lines SET
        report_id = @report_id,
        oss_index_id = @oss_index_id
        WHERE id=@id;
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_delete_report_lines
GO
CREATE PROCEDURE sp_delete_report_lines(@id INT)
    AS
    BEGIN
        DELETE FROM report_lines
        WHERE id=@id;
    END
GO
