set global slow_query_log = ON;
set global long_query_time = 0.1;
set global log_queries_not_using_indexes = ON;
set global log_output = 'FILE';
set global slow_query_log_file = '/var/log/mariadb/slow.log';
