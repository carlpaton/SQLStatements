SELECT CONCAT(table_schema, '.', table_name) as table_schema,
 CONCAT(table_rows) count_rows,
 CONCAT(ROUND(data_length / ( 1024 * 1024 * 1024 ), 2), 'G') data_size,
 CONCAT(ROUND(index_length / ( 1024 * 1024 * 1024 ), 2), 'G') index_length,
 CONCAT(ROUND(( data_length + index_length ) / ( 1024 * 1024 * 1024 ), 2), 'G') total_size,
 ROUND(index_length / data_length, 2) index_fragmented
FROM information_schema.TABLES
WHERE table_schema = 'foo'
ORDER BY data_length + index_length DESC
LIMIT 50;
