#!/bin/bash -x

read -p "Read the number" num

SUM=0

while [[ $num -gt 0 || $SUM -gt 9 ]]
do
	if [[$num -eq 0]]   
	then
		num=$SUM
		SUM=0
	fi

	SUM+=$(($num%10))
	num=$(($num/10))
done

if	[[$SUM -eq 1]]
then
	echo "Magic no"
else
	echo "Not magic number"
fi

