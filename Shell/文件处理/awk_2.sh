# 显示整行
awk '{print $0}' passwd
# 以:为分隔符
awk 'BEGIN{FS=":"}{print $1,$2,$3}' passwd

# test.awk
Hadoop Spark Flume
Java Python Scala
Allen Mike Meggle

# 默认以空格分隔
awk '{print $2}' test.awk

# 每一行有3个字段, 1个行号
awk '{print NR,NF}' test.awk
awk '{print NR}' test.awk passwd

# 多文件分隔
awk '{print FNR}' test.awk passwd

# 指定输入格式
awk 'BEGIN{FS=":";RS="\n"}{print $1,$2,$3}' passwd
awk 'BEGIN{FS=":";RS="--"}{print $1,$2,$3}' passwd

# 指定输出格式
# 行与行之间指定: 来分隔，列与列使用& 来分隔
awk 'BEGIN{FS=":";RS="\n";ORS="&";OFS=":"}{print FILENAME}' passwd
awk 'BEGIN{FS=":";RS="\n";ORS="&";OFS=":"}{print ARGC}' passwd

