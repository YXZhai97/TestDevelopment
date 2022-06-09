#!/bin/bash

# 判断输入参数个数是否为1
if [ $# -ne 1 ]
then
	echo "参数个数错误，只输入一个参数"
	exit 
fi

# 从参数中获取目录名字
if [ -d $1 ]
then 
	echo
else 
	echo 
	echo "目录不存在"
	echo 
	exit 
fi

DIR_NAME=$(basename $1)
DIR_PATH=$(cd $(dirname $1);pwd)

# 获取当前日期
DATE=$(date + %y%m%d)
#定义生成的归档文件名称
FILE=archive_${DIR_NAME}_${DATE}.tar.gz
DEST=/home/yixing/Desktop/Github/DevOps/learn_shell/archive/${FILE}

#开始归档目录文件

echo "开始归档"

tar -czf $DEST $DIR_PATH/$DIR_NAME

if [ $? -eq 0 ]
then 
	echo 
	echo "归档成功"
	echo "归档文件为: $DEST"
else 
	echo "归档不成功"
	echo
fi

exit 


