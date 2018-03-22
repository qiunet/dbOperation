#! /bin/bash
# qiunet
# qiunet@gmail.com  
# 2016-12-29 19:36:23
# 修改mysql的字符集 
#
#---------------BODY-----------------


cd `dirname $0`

dbName="$1"

./edb exec "alter database ${dbName} CHARACTER SET utf8mb4;"

for tb in `./edb showTables ${dbName}` ;
do
	./edb exec "use ${dbName};ALTER TABLE ${tb} ROW_FORMAT = DEFAULT; alter table ${tb} convert to character set utf8mb4 collate utf8mb4_bin;"
done
