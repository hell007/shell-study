

## shell操作mysql

1.连接数据库并发送命令

```
#!/bin/bash

#连接数据库
mysql=`which mysql
`
#发送单个命令
$mysql emwjs -u root -p admin -e "show databases;"

#发送多个命令
$mysql emwjs -u root -p admin <<EOF
show tables;
select * from ea_emp;
EOF
````


2.格式化输出数据

```
#!/bin/bash

#redirecting SQL output to a variable

MYSQL=`which mysql`
dbs=`$MYSQL emwjs -u test -Bse 'show tables;'`
for db in $dbs
do
	echo $db
done


#使用xml输出数据
$MYSQL emwjs -u test -X -e 'select * from em_admin'

#使用table标签输出数据
$MYSQL emwjs -u test -H -e 'select * from em_admin'


```


3.向数据库中插入数据

```
#!/bin/bash
# send data to the the table in the MYSQL database

MYSQL=`which mysql`

if [ $# -ne 2 ]
then
	echo "Usage:mtest2 emplid lastname firstname salary"
else
	#脚本变量一定要用双引号，字符串变量使用单引号
	statement=" insert into em_admin values(NULL, '$1', $2)"
	$MYSQL emwjs -u test <<EOF
	$statement
EOF
	if [ $? -eq 0 ]
	then
		echo Data successfully added
	else
		echo Problem adding data
	fi
fi

```



