#!/bin/bash -x

read -p "Read the number" num

temp=$num

echo "Prime Factor"
for (( i=2; i<=temp; i++ ))
do
	for (( ;$((num%$i)) == 0 ;num=$((num/$i)) ))
	do
		echo $i
   done
done
