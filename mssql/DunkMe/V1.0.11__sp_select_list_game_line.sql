CREATE OR ALTER PROCEDURE dbo.sp_select_list_game_line 
	@GameId integer
AS

/*
----------------------------------------------------------------------------
-- Object Name: dbo.sp_select_list_game_line
-- Project: Dunkme
-- Business Process: Select all games_line records by given game id
-- Purpose: Selects all records from dbo.game_line by the give dbo.game.id
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

-- 3 - Execute SELECT command
BEGIN

SELECT * FROM [dbo].[game_line]
WHERE game_id = @GameId;

END
GO