USE [vulnuscloud]
GO

CREATE TABLE [dbo].[oss_index](
	[id] [int] NOT NULL PRIMARY KEY IDENTITY,
	[component_id] [int] NOT NULL FOREIGN KEY REFERENCES dbo.component(id),
	[version] [decimal],
	[type_format] [varchar](50) NULL,
	[coordinates] [varchar](100) NULL,	
	[description] [varchar](500) NULL,
	[reference] [varchar](200) NULL,
	[expire_date] [DATETIME],
	[http_status] [int] NOT NULL,
	[http_status_date] [DATETIME]
) ON [PRIMARY]
GO