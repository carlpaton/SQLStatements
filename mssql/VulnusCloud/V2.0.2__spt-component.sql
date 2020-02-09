DROP PROCEDURE IF EXISTS dbo.sp_select_component
GO
CREATE PROCEDURE sp_select_component @Id int
    AS
    BEGIN
        SELECT * FROM component WHERE id = @Id
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_selectlist_component
GO
CREATE PROCEDURE sp_selectlist_component
    AS
    BEGIN
        SELECT * FROM component
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_insert_component
GO
CREATE PROCEDURE sp_insert_component
    (
        @name varchar(500) = NULL 
    )
    AS
    BEGIN
        INSERT INTO component
        (name)
        VALUES
        (@name);
        SELECT SCOPE_IDENTITY();
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_update_component
GO
CREATE PROCEDURE sp_update_component
    (
        @id int = NULL ,
        @name varchar(500) = NULL 
    )
    AS
    BEGIN
        UPDATE component SET
        name = @name
        WHERE id=@id;
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_delete_component
GO
CREATE PROCEDURE sp_delete_component(@id INT)
    AS
    BEGIN
        DELETE FROM component
        WHERE id=@id;
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_select_by_name_component
GO
CREATE PROCEDURE sp_select_by_name_component 
	(
		@Name varchar(500)
	)
    AS
    BEGIN
        SELECT * FROM component WHERE name = @Name
    END
GO