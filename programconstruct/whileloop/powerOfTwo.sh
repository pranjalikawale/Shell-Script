#!/bin/bash -x

read -p "Read the number" num

POWER=1
COUNTER=1

while [[ $COUNTER -le $num	]]
do
   POWER=$((2*$POWER))
   echo "$POWER"
	COUNTER=$(($COUNTER+1))
done

