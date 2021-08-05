#! /bin/bash
string="BigData process framework is Hadoop,Hadoop is an open source project"

function print_tips(){
    echo "*****************************"
    echo "1. 打印String长度"
    echo "2. 删除所有的Hadoop"
    echo "3. 替换第一个Hadoop为Mapreduce"
    echo "4. 替换所有的Hadoop为Mapreduce"
    echo "*****************************"
}
function len_of_string(){
    echo "${#string}"
}
function del_hadoop(){
    echo "${string//Hadoop/}"
}
function rep_hadoop_mapreduce_first(){
    echo "${string/Hadoop/Mapreduce}"
}
function rep_hadoop_mapreduce_all(){
    echo "${string//Hadoop/Mapreduce}"
}

echo "string=$string"
print_tips
echo

while true
do
    read -p "plz input yout choice(1|2|3|4|q|Q):" -n 1 choice
    case $choice in
	1)
	    echo
		len_of_string
		;;
	2)
	    echo
		del_hadoop
		;;
	3)
	    echo
		rep_hadoop_mapreduce_first
		echo
		;;
	4)
	    echo
		rep_hadoop_mapreduce_all
		echo
		;;
	q|Q)
		exit
		;;
	*)
	    echo
		echo "Error input!"
		echo
    esac
done