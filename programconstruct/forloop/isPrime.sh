#!/bin/bash -x

read -p "Enter the number" num
FLAG=0

for ((i=2;i<=$(($num/2));i++))
do
	if [[ $(($num % $i)) -eq 1 ]]
	then			
			FLAG=1
			break
	fi
done

if [[ (($flag -eq 1)) || (($num -ne 1)) ]]
then 
		echo "$num is prime"
else
		echo "$num is not prime"
fi

