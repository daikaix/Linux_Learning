# passwd
cp /etc/passwd .

sed -i '1d' passwd
sed -i '1,3d' passwd
sed -i '/\/sbin\/nologin/d' passwd
sed -i '/^mail/,/^ftp/d' passwd

sed -i '/\/bin\/bash/a This is a user which can login' passwd
sed -i '/\/bin/,/squid/i This is a user which can login' passwd

sed -i '/\/bin/,/squid/r sed.txt' passwd
sed -n '/\/bin/,/squid/w ./test.sh' passwd

sed -n '/\/bin/,/squid/w ./test.sh' passwd

sed -i 's/\/bin\/bash/\/BIN\/BASH/g' passwd
sed -i 's/hadoop/HADOOP/2g' passwd

sed -i 's/had..p/&s/g'

# 反向引用
test.txt
haBBp
haCCp
haDDp


sed -i "s/ha\(..\)p/\1/g" test.txt
sed -i "s/ha..p/&s/g" test.txt

# 在脚本中使用
#!/bin/bash

old_str=hadoop
new_str=HADOOP

sed -i "s/$old_str/$new str/g" str.txt
sed -i 's/'$old_str'/'$new str'/g' str.txt
