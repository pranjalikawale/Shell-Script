#!/bin/bash -x

read -p "Read the number" num

POWER=1

for ((i=1;i<=$num;i++))
do
	POWER=$((2*$POWER))
	echo "$POWER"
done

