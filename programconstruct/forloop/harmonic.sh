#!/bin/bash -x

read -p "enter the number" num


for ((i=1;i<=$num;i++))
do
	harmonicNum=$(($harmonicNum+$((1/$i)))) | bc
done

echo "$harmonicNum"
