#! /bin/bash

# 获取字符长度
var1="Hello World"
len=${#var1}
echo $len

len=`expr length "$var1"`
echo $len

# 获取字符索引位置  6,2,4
var1="Quickstart is a app"
ind=`expr index "$var1" start`
echo $ind

ind=`expr index "$var1" uniq`
echo $ind

ind=`expr index "$var1" cnk`
echo $ind

# 获取子串长度  0,5,0,19
var1="quickstart is a app"
sub_len=`expr match "$var1" app`
echo $sub_len

var1="quickstart is a app"
sub_len=`expr match "$var1" quick`
echo $sub_len

var1="quickstart is a app"
sub_len=`expr match "$var1" uic`
echo $sub_len

var1="quickstart is a app"
sub_len=`expr match "$var1" quic.*`
echo $sub_len

# 抽取子串
# op yarn mapreduce
# op ya
# educe
# ed
# educe
# oop y

var1="kafka hadoop yarn mapreduce"
substr1=${var1:10}
echo $substr1

substr1=${var1:10:5}
echo $substr1

substr1=${var1: -5}
echo $substr1

substr1=${var1: -5:2}
echo $substr1

substr1=${var1:(-5)}
echo $substr1

substr1=`expr substr "$var1" 10 5`
echo $substr1