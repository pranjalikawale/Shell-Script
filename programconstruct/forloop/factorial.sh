#!/bin/bash -x

read -p "Read the number" num

FACT=1
for ((i=1;i<=$num;i++))
do
	FACT=$(($FACT*$i))
done

echo "Factorial of $num is $FACT"
