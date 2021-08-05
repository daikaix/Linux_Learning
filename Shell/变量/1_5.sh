#! /bin/bash

index=1
for user in `cat /etc/passwd | cut -d ":" -f 1`
do
    echo "This is $index user: $user"
    index=$(($index + 1))
done


echo "This is $(date +%Y)"
echo "This is $(($(date +%Y) + 1))"

echo "今年过了多少个星期 $(($(date +%j) / 7))"
echo "今年还有多少个星期 $(((365 - $(date +%j)) / 7))"

nginx_process_num=$(ps -ef | grep nginx | grep -v grep | wc -l)

if [ $nginx_process_num -eq 0 ]
then
    systemctl start nginx
fi