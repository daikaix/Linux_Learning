#! /bin/bash

# nginx服务脚本
this_pid=$$

function is_nginx_running
{
    ps -ef | grep nginx | grep -v grep | grep -v $this_pid &> /dev/null
    if [ $? -eq 0 ];then
        return
    else
        return 1
    fi
}

is_nginx_running && echo "Nginx is running" || "Nginx is stopped"


#
function get_users
{
    users=`cat /etc/passwd | cut -d : -f 1`
    echo $users
}

for user in `get_users`
do
    echo $user
done