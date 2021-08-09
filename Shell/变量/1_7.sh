#!  /bin/bash

# 空格分开，转移符号要加
num1=30
num2=50
expr $num1 \> $num2
num1=100
expr $num1 \> $num2
expr $num1 \<= $num2


num3=`expr $num1 + $num2 `
num3=`expr $num1 - $num2 `
num3=`expr $num1 \* $num2 `
num3=`expr $num1 / $num2 `
num3=`expr $num1 % $num2 `

# $(( )) 比较大小不支持，尽量使用expr
num4=$(($num1*$num2))

num4=$(($num1=$num2))  # syntax error


# 实例
while true
do
read -p "plz input a positive number:" num
expr $num + 1 &> /dev/null   # 都进行重定向 > 2&>1  或者 &>
if [ $? -eq 0 ];then
    if [ `expr $num \> 0` -eq 1 ];then
        echo "Yes,Positive number"
        for((i=1;i<=$num;i++))
        do
            sum=`expr $sum + $i`
        done
        echo "1+2+..+$num = $sum"
        exit
    else
        echo "error input"
        exit
    fi
fi
echo "error input!"
continue
done