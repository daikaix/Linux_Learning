#! /bin/bash

# 结果
# I love you,Do you love me
# e you,Do you love me
# e me
# I love you,Do you l
# I l

variable_1="I love you,Do you love me"
echo $variable_1

var1=${variable_1#*ov}
echo $var1

var2=${variable_1##*ov}
echo $var2

var3=${variable_1%ov*}
echo $var3

var4=${variable_1%%ov*}
echo $var4

echo $PATH

var5=${PATH/bin/BIN}
echo $var5

var6=${PATH//bin/BIN}
echo $var6
