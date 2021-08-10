# passwd
[client]
port = 3306
socket = /tmp/mysql.socket

[server]
xx = xx
xx = xx

# xxx
[xxx]
xx = xx
xx = xx

#!/bin/bash
FILE_NAME=test.cnf  # 接受参数

function get_all_segment
{
    echo "`sed -n "/\[.*\]/p" $FILE_NAME | sed 's/\[\(.*\)\]/\1/g'`"
}

function count_items_in_segment
{
    items=`sed -n '/\['$1'\]/,/\[.*\]/p' $FILE_NAME | grep -v "^#" | grep -v "^$" | grep -v "\[.*\]"`
    index=0
    for item in $items
    do
        index=`expr $index + 1`
    done
    echo $index
}

number=0
for seg in `get_all_segment`
do
    number=`expr $number + 1`
    echo "$number: 配置项: $seg 行数: `count_items_in_segment $seg`"
done