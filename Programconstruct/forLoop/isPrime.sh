#!/bin/bash -x

read -p "Enter the number" num

for ((i=2;i<=$(($num/2));i++))
do
	if [[ $(($num % $i)) -eq 0 ]]
	then			
		echo "$num is not prime "
	exit
	fi
done

echo "$num is prime"

