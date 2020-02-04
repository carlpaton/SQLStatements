DROP PROCEDURE IF EXISTS dbo.sp_select_project
GO
CREATE PROCEDURE sp_select_project @Id int
    AS
    BEGIN
        SELECT * FROM project WHERE id = @Id
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_selectlist_project
GO
CREATE PROCEDURE sp_selectlist_project
    AS
    BEGIN
        SELECT * FROM project
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_insert_project
GO
CREATE PROCEDURE sp_insert_project
    (
        @project_name varchar(500) = NULL 
    )
    AS
    BEGIN
        INSERT INTO project
        (project_name)
        VALUES
        (@project_name);
        SELECT SCOPE_IDENTITY();
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_update_project
GO
CREATE PROCEDURE sp_update_project
    (
        @id int = NULL ,
        @project_name varchar(500) = NULL 
    )
    AS
    BEGIN
        UPDATE project SET
        project_name = @project_name
        WHERE id=@id;
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_delete_project
GO
CREATE PROCEDURE sp_delete_project(@id INT)
    AS
    BEGIN
        DELETE FROM project
        WHERE id=@id;
    END
GO
