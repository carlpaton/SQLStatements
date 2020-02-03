USE [vulnuscloud]
GO

CREATE TABLE [dbo].[project](
	[id] [int] NOT NULL PRIMARY KEY IDENTITY,
	[project_name] [varchar](50) NULL
) ON [PRIMARY]
GO