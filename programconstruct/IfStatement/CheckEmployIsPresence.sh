#!/bin/bash -x

isPresent=1
checkRandom=$((RANDOM%2))

if [ $isPresent -eq $checkRandom ]
then
	echo "Employ is Present"
else
	echo "Employ is Absent"
fi
