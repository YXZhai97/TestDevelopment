#!/bin/bash

#author:eason 

echo shell传递参数实例 
echo 执行的文件：$0
echo 参数1：$1
echo 参数2：$2
echo 参数3：$3 

echo "-- \$* 演示 ---"
for i in "$*"; do
    echo $i
done

echo "-- \$@ 演示 ---"
for i in "$@"; do
    echo $i
done

