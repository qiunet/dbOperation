#! /bin/bash

cd $(dirname $0)
. ../utils/qiunet.utils

host=`getProperty redis.properties host`
port=`getProperty redis.properties port`
pass=`getProperty redis.properties pass`

redis-cli -h ${host} -a "${pass}" -p ${port}
