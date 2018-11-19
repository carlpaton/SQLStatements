CREATE OR ALTER PROCEDURE dbo.sp_insert_game 
	@GameTypeId integer,
	@PlayerId integer
AS

/*
----------------------------------------------------------------------------
-- Object Name: dbo.sp_insert_game
-- Project: Dunkme
-- Business Process: New game
-- Purpose: Insert a record into dbo.game
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

INSERT INTO [dbo].[game]
           ([game_type_id], [player_id])
     VALUES
           (@GameTypeId, @PlayerId);

SELECT CAST(SCOPE_IDENTITY() AS INT);

END
GO