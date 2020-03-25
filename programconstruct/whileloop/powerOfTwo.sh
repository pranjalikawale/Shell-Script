#!/bin/bash -x

read -p "Read the number" num

power=1
counter=1
LIMIT=256

while [[ $power -le $LIMIT	]]
do
   power=$((2*$power))
   echo "$power"
	counter=$(($counter+1))
done

