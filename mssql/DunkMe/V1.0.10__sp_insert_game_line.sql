CREATE OR ALTER PROCEDURE dbo.sp_insert_game_line 
	@GameId integer,
	@Score integer
AS

/*
----------------------------------------------------------------------------
-- Object Name: dbo.sp_insert_game_line
-- Project: Dunkme
-- Business Process: New game line
-- Purpose: Insert a record into dbo.game_line
-- Detailed Description: .
-- Database: dunkme
-- Dependent Objects: None
-- Called By: Ad-hoc
-- Upstream Systems: N\A
-- Downstream Systems: N\A
-- 
--------------------------------------------------------------------------------------
-- Rev | CMR | Date Modified | Developer  | Change Summary
--------------------------------------------------------------------------------------
-- 001 | N\A | 08.11.2018 | Carl Paton | Original code
--
*/

SET NOCOUNT ON

-- 1 - Declare variables

-- 2 - Initialize variables

-- 3 - Execute INSERT command
BEGIN

INSERT INTO [dbo].[game_line]
           ([game_id], [score])
     VALUES
           (@GameId, @Score);

SELECT CAST(SCOPE_IDENTITY() AS INT);

END
GO