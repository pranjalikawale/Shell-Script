#!/bin/bash -x

read -p "Read the number" num

SUM=10
if [[$num -eq 0]];
then
		num=$SUM
		SUM=0
fi
if	[[$SUM -eq 1]]
then
	echo "Magic no"
else
	echo "Not magic number"
fi


