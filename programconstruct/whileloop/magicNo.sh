#!/bin/bash -x

read -p "Read the number" num

MAX_LIMIT=100
MIN_LIMIT=0

if [[ $num -gt $MIN_LIMIT && $num -lt $MAX_LIMIT ]]
then
	if [[ (($num -lt $(($num/2)))) || (($num -gt $(($num/2))))]]
	then
		echo "hi"
	fi
fi
