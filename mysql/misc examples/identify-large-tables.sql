SELECT CONCAT(table_schema, '.', table_name),
 CONCAT(table_rows) rows,
 CONCAT(ROUND(data_length / ( 1024 * 1024 * 1024 ), 2), 'G') DATA,
 CONCAT(ROUND(index_length / ( 1024 * 1024 * 1024 ), 2), 'G') idx,
 CONCAT(ROUND(( data_length + index_length ) / ( 1024 * 1024 * 1024 ), 2), 'G') total_size,
 ROUND(index_length / data_length, 2) idxfrac
FROM information_schema.TABLES
WHERE table_schema = 'foo'
ORDER BY data_length + index_length DESC
LIMIT 50;