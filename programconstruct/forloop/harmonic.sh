#!/bin/bash -x

read -p "enter the number" num


for ((i=1;i<=$num;i++))
do
	harmonicNum=$(bc <<< "scale=2;$(($harmonicNum+$((1/$i))))")
done

echo "$harmonicNum"
