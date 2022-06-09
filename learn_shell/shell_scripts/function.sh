#!/bin/bash

function add(){
	s=$[$1+$2]
	echo $s 

}
read -p "please input first integer: " a
read -p "please input second integer: " b

sum=$(add $a $b)
echo "sum=$sum"



