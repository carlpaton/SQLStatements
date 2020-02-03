USE [vulnuscloud]
GO

CREATE TABLE [dbo].[report](
	[id] [int] NOT NULL PRIMARY KEY IDENTITY,
	[project_id] [int] NOT NULL FOREIGN KEY REFERENCES dbo.project(id),
	[insert_date] [DATETIME]
) ON [PRIMARY]
GO