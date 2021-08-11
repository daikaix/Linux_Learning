# 以:分隔符, 返回/etc/passwd中每行每个字段的长度
awk -f cal.awk /etc/passwd
BEGIN{
    FS=":"
}
{
    i=0
    while(i<=NF){
        if(i==NF){
            printf "%d",length($i)
        }
        else{
            printf "%d:",length($i)
        }
        i++
    }
    printf "\n"
}

# 搜索ea子串的位置
    awk 'BEGIN{str="I have a dream"; location=index(str,"ea");print location} '
    awk 'BEGIN{str="I have a dream"; location=match(str,"ea");print location} '

# 转换大小写
    awk 'BEGIN{str="Hadoop is abigdata Framework";print tolower(str)}'
    awk 'BEGIN{str="Hadoop is abigdata Framework";print toupper(str)}'
# 分隔字符串保存到数组中
    awk 'BEGIN{str="Hadoop is a bigdata Framework";split(str,arr," ");print arr[1]}'
    awk 'BEGIN{str="Hadoop is a bigdata Framework";split(str,arr," ");for(a in arr)print arr[a]}'
# 查找第一个数字出现的位置
    location=match(str,/[0-9]/)
# 截取字符串
    substr(str,4,5)
# 替换字符串
    print sub(/[0-9]+/,"$",str)  => 输出替换后的结果
