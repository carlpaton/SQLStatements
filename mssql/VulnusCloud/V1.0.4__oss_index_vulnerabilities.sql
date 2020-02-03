USE [vulnuscloud]
GO

CREATE TABLE [dbo].[oss_index_vulnerabilities](
	[id] [int] NOT NULL PRIMARY KEY IDENTITY,
	[oss_index_id] [int] NOT NULL FOREIGN KEY REFERENCES dbo.oss_index(id),
	[insert_date] [DATETIME],
	[oss_id] [varchar](100) NULL,
	[title] [varchar](200) NULL,	
	[description] [varchar](500) NULL,
	[cvssScore] [decimal],
	[cvssVector] [varchar](100) NULL,
	[cve] [varchar](20) NULL,
	[reference] [varchar](500) NULL
) ON [PRIMARY]
GO