DROP PROCEDURE IF EXISTS dbo.sp_select_oss_index_vulnerabilities
GO
CREATE PROCEDURE sp_select_oss_index_vulnerabilities @Id int
    AS
    BEGIN
        SELECT * FROM oss_index_vulnerabilities WHERE id = @Id
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_selectlist_oss_index_vulnerabilities
GO
CREATE PROCEDURE sp_selectlist_oss_index_vulnerabilities
    AS
    BEGIN
        SELECT * FROM oss_index_vulnerabilities
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_insert_oss_index_vulnerabilities
GO
CREATE PROCEDURE sp_insert_oss_index_vulnerabilities
    (
        @oss_index_id int = NULL ,
        @insert_date datetime = NULL ,
        @oss_id varchar(500) = NULL ,
        @title varchar(500) = NULL ,
        @description varchar(500) = NULL ,
        @cvssScore decimal = NULL ,
        @cvssVector varchar(500) = NULL ,
        @cve varchar(500) = NULL ,
        @reference varchar(500) = NULL 
    )
    AS
    BEGIN
        INSERT INTO oss_index_vulnerabilities
        (oss_index_id,insert_date,oss_id,title,description,cvssScore,cvssVector,cve,reference)
        VALUES
        (@oss_index_id,@insert_date,@oss_id,@title,@description,@cvssScore,@cvssVector,@cve,@reference);
        SELECT SCOPE_IDENTITY();
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_update_oss_index_vulnerabilities
GO
CREATE PROCEDURE sp_update_oss_index_vulnerabilities
    (
        @id int = NULL ,
        @oss_index_id int = NULL ,
        @insert_date datetime = NULL ,
        @oss_id varchar(500) = NULL ,
        @title varchar(500) = NULL ,
        @description varchar(500) = NULL ,
        @cvssScore decimal = NULL ,
        @cvssVector varchar(500) = NULL ,
        @cve varchar(500) = NULL ,
        @reference varchar(500) = NULL 
    )
    AS
    BEGIN
        UPDATE oss_index_vulnerabilities SET
        oss_index_id = @oss_index_id,
        insert_date = @insert_date,
        oss_id = @oss_id,
        title = @title,
        description = @description,
        cvssScore = @cvssScore,
        cvssVector = @cvssVector,
        cve = @cve,
        reference = @reference
        WHERE id=@id;
    END
GO


DROP PROCEDURE IF EXISTS dbo.sp_delete_oss_index_vulnerabilities
GO
CREATE PROCEDURE sp_delete_oss_index_vulnerabilities(@id INT)
    AS
    BEGIN
        DELETE FROM oss_index_vulnerabilities
        WHERE id=@id;
    END
GO
