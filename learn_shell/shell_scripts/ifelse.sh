#!/bin/bash

if [ $1 = yixing ] 
then 
	echo " Welcome Yixing"
else 
	echo "Hello $"
fi

if [ $2 -lt 18 ]
then
	echo "未成年人"
elif [ $2 -lt 35 ]
then 
	echo "青年人"
else
	echo "老年人"
fi

