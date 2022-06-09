#!/bin/bash

a=1
while [ $a -le $1 ]
do 
	sum=$[$sum+$a]
	a=$[$a+1]
done
echo "sum=$sum"

