USE [vulnuscloud]
GO

CREATE TABLE [dbo].[report_lines](
	[id] [int] NOT NULL PRIMARY KEY IDENTITY,
	[report_id] [int] NOT NULL FOREIGN KEY REFERENCES dbo.report(id),
	[oss_index_id] [int] NOT NULL FOREIGN KEY REFERENCES dbo.oss_index(id)
) ON [PRIMARY]
GO