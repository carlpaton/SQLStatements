DROP TABLE IF EXISTS #carl_log

CREATE TABLE #carl_log
(
    c1 Varchar(50), 
    c2 Varchar(50), 
);

insert into dbo.#carl_log 
values ('foor', 'bar');

SELECT * FROM #carl_log;

DROP TABLE #carl_log