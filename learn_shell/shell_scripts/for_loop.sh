#!/bin/bash

for ((i=0; i<=$1; i++))
do
	sum=$[ $sum+$i ]
done 

echo "sum=$sum"

