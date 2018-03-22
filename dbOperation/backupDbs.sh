#! /bin/bash
# qiunet
# qiunet@gmail.com  
# 2016-12-22 21:10:27
# 备份所有的修仙数据库 
#
#---------------BODY-----------------


cd `dirname $0`
echo `pwd`

fileName=xztx_databases_`date +"%y%m%d%H%M%S"`.sql

./edb backupdb "--set-gtid-purged=OFF --triggers --routines --events" "xztx_dy_0 xztx_dy_1 xztx_dy_global xztx_dy_log xztx_dy_sd xztx_dy_log_money xztx_dy_log_system xztx_dy_partion" ${fileName}

sed -i 's/DEFINER=.*%`//' ${fileName}
