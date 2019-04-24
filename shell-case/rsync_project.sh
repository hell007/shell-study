#!/bin/sh
#name: 同步本地项目到服务器
#author: jie

read -t 30 -p "请输入项目名:" name

echo "项目名为:$name"

case $name in
   "cn") rsync -r ~/project1 root@192.168.18.2:/project1 --exclude="test.css" --progress;;
   "cnb2b") rsync -r ~/project2 root@192.168.18.2:/web/project2 --exclude="node_modules" --progress;;
   *) echo "Ignorant";;
 esac

 echo "同步完成"
