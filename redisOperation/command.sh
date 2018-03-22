#! /bin/bash
# qiunet
# qiunet@gmail.com  
# 2017-01-12 10:12:40
# 执行redis命令 
#
#---------------BODY-----------------
cd `dirname $0`
. ../utils/qiunet.utils

if [ $# = 0 ];then
        echo "need parameter!"
        exit 1
fi

host=`getProperty redis.properties host`
port=`getProperty redis.properties port`
pass=`getProperty redis.properties pass`
redis-cli -h "${host}" -a "${pass}" -p "${port}" $@
