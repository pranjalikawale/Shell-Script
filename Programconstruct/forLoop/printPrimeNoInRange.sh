#!/bin/bash -x

read -p "Enter the range" range

for ((j=1;j<=$range;j++))
do
	FLAG=1

	for ((i=2;i<=$(($j/2));i++))
	do
   	if [[ $(($j % $i)) -eq 0 ]]
   	then
      	FLAG=0
			break
   	fi
	done
	
	if [[ $FLAG -eq 1 && $j -ne 1 ]]
	then
		echo "$j"
	fi
done

