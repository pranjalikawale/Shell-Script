#!/bin/bash -x

read -p "Read the number" num

power=1

for ((i=1;i<=$num;i++))
do
	power=$((2*$power))
	echo "$power"
done

