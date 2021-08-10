# 换行，字符串
awk 'BEGIN{FS=":"}{printf "%s\n",$1}' passwd
awk 'BEGIN{FS=":"}{printf "%20s %20s\n,$1,$7}' passwd
awk 'BEGIN{FS=":"}{printf "%-20s %-20s\n",$1,$7}' passwd

# 以:为分隔符,浮点数，占位符, 进制数，科学计数法
awk 'BEGIN{FS=":"}{printf "%0.2f\n",$3}' passwd
awk 'BEGIN{FS=":"}{printf "%x\n",$3}' passwd
awk 'BEGIN{FS=":"}{printf "%#x\n",$3}' passwd
awk 'BEGIN{FS=":"}{printf "%#o\n",$3}' passwd
awk 'BEGIN{FS=":"}{printf "%e\n",$3}' passwd