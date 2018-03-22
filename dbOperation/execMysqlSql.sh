#! /bin/bash
# qiunet
# qiunet@gmail.com  
# 2016年11月16日 10:40
# 批量执行sql 
#
#---------------BODY-----------------
cd `dirname $0`

.  ../utils/qiunet.utils

mysql_db_count=`getProperty mysql.properties mysql_db_count`
mysql_prefix=`getProperty mysql.properties mysql_prefix`
sql_file=`getProperty mysql.properties sql_file`

time for i in `seq 0 ${mysql_db_count}`;do ./edb execsql "${mysql_prefix}$i" ${sql_file};done
