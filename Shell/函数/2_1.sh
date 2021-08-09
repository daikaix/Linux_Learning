#!/bin/bash

# nginx服务脚本查看
# sh nginx_daemon.sh  [ 不可以脚本命名为nginx ]
# 或者获取子进程的pid,给过滤掉

while true
do
this_pid=$$
status=`ps -ef | grep nginx | grep -v grep | grep -v $this_pid &> /dev/null`
if [ $? -eq 0];then
    echo "Nginx is running well"
    sleep 3
else
    systemctl restart nginx
    echo "Nginx is down,Start it..."
fi
done