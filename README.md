# dbOperation
> Linux上操作Redis 和 Mysql的一些脚本. 

### redisOperation 
	需要将redis-cli 放到$PATH 目录里面.

	配置 redis.properties
	./login_redis.sh 可以登录redis命令行.
	./command.sh  可以执行你的命令.
	./command.sh keys "item#*"

### dbOperation
	需要将mysql 放到PATH下
	
	配置mysql.properties
	edb 是主要的脚本. 其它都是基于edb扩展的.
	主要用法: 
	echo "./edb exec 'use DbName;select * from top_level'" 			// 执行语句. 
        echo "./edb backupdb '--no-data' 'DbName DbName_0 DbName_1' DbName.sql" // 备份多个db 
        echo "./edb backupone 'DbName_1' DbName.sql    " 			// 备份一个数据库 
        echo "./edb backuptb '-d' DbName 'top_level top_gem' DbName.sql" 	// 备份表  	 
        echo "./edb truncatetables DbName g_chuanyin" 				// 清空指定数据库的指定表
        echo "./edb restory alldatabasesData.sql " 				// 执行一个sql文件. 
        echo "./edb execsql DbName DbName.sql" 					// 对指定数据库执行sql文件
        echo "./edb truncatedb DbName" 						// 清空一个db的数据
        echo "./edb showTables DbName"  					// 得到一个数据库的表名
        echo "./edb dropdb DbName" 						// 删除一个数据库
