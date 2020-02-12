USE [vulnuscloud]
GO

CREATE TABLE [dbo].[component](
	[id] [int] NOT NULL PRIMARY KEY IDENTITY,
	[name] [varchar](100) NULL	
) ON [PRIMARY]
GO