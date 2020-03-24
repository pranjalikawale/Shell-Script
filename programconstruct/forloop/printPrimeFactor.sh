#!/bin/bash -x

read -p "Read the number" num

for ((i=2;i<=$num;i=$(($i+2))))
do
	if	[[ $(($num % 2)) -eq 0]]
	then
		echo "2"
	fi	
	num=$(($num/2))
done

