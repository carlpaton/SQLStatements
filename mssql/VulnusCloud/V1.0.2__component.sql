USE [vulnuscloud]
GO

CREATE TABLE [dbo].[component](
	[id] [int] NOT NULL PRIMARY KEY IDENTITY,
	[name] [varchar](50) NULL	
) ON [PRIMARY]
GO