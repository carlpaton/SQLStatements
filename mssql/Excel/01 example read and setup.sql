EXEC sp_configure 'show advanced options', 1;
RECONFIGURE
EXEC sp_configure 'Ad Hoc Distributed Queries', 1;
RECONFIGURE
EXEC master.[sys].[sp_MSset_oledb_prop] N'Microsoft.ACE.OLEDB.16.0', N'AllowInProcess', 1
GO

BEGIN
	SELECT *
	FROM OPENROWSET('Microsoft.ACE.OLEDB.16.0',
	'Excel 12.0 Xml;
	Database=C:\Users\carl.paton\Downloads\foo.xlsx',
	[Sheet1$]);
END;
GO

EXEC sp_configure 'ad hoc distributed queries', 0;
RECONFIGURE
EXEC sp_configure 'show advanced options', 0;
RECONFIGURE