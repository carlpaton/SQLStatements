EXEC sp_configure 'show advanced options', 1;
RECONFIGURE
EXEC sp_configure 'Ad Hoc Distributed Queries', 1;
RECONFIGURE
EXEC master.[sys].[sp_MSset_oledb_prop] N'Microsoft.ACE.OLEDB.16.0', N'AllowInProcess', 1
GO

DROP TABLE IF EXISTS #Sheet1
​
CREATE TABLE #Sheet1 
(IdA UNIQUEIDENTIFIER PRIMARY KEY,
IdB UNIQUEIDENTIFIER)

DECLARE @excelPath NVARCHAR(100) = N'C:\Users\carl.paton\Downloads\foo.xlsx'

DECLARE @readFromExcel NVARCHAR(500) = N'
INSERT INTO #Sheet1 ([IdA], [IdB])
SELECT id_a, id_b
FROM OPENROWSET(''Microsoft.ACE.OLEDB.16.0'',
''Excel 12.0 Xml;Database='+@excelPath+''',
[Sheet1$])
WHERE id_a IS NOT NULL';

DECLARE @writeToExcel NVARCHAR(500) = N'
INSERT INTO OPENROWSET(
''Microsoft.ACE.OLEDB.16.0'',
''Excel 12.0 Xml;Database='+@excelPath+';'',
''SELECT id_a, id_b FROM [Sheet2$]'')
SELECT * FROM #Sheet1'

EXEC sp_executesql @readFromExcel
EXEC sp_executesql @writeToExcel

select * from #Sheet1

EXEC sp_configure 'ad hoc distributed queries', 0;
RECONFIGURE
EXEC sp_configure 'show advanced options', 0;
RECONFIGURE