#!/bin/bash
#-------------
#注释行
#author:eason
#from 菜鸟教程
#https://www.runoob.com/linux/linux-shell-variable.html
#-------------

list="abcdefg"
for i in $list; do
	echo $i
done 
echo 
echo  "拼接字符串"
your_name="yixing"
greeting1="hello, $your_name !"
greeting2="hello, ${your_name} !"
greeting3="hello, "$your_name" !"
echo $greeting1 $greeting2 $greeting3

echo
echo 获取字符串长度
echo "string length list:" ${#list}
echo 
echo shell 数组
shell_array=(value0 value1 value2 value3)
shell_array[4]=value4
echo ${shell_array[@]}
echo 获取数组长度
length=${#shell_array[*]}
echo 数组长度：$length
echo 


