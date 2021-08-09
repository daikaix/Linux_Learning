#! /bin/bash

# 可以直接修改，只读无法修改
var1="hello world"
var1="hello python"

declare -r var="hello"
var="hi"

# 定义为整数
# 10+20
# 30
# 30
num1=10
num2=$num1+20

expr $num1 + 10

declare -r num3
num3=$num1+20

# 将函数的名称列出
declare -f
declare -F

# 数组定义与使用
declare -a array
array=("jones" "mike" "kobe" "jordan")
echo ${array[@]}
echo ${array[0]}

echo ${#array[@]}
echo ${#array[0]}

# 定义一个环境变量, 可以在脚本中直接使用
declare -x num5
echo "echo $num5" > test.sh
sh test.sh
declare +x num5