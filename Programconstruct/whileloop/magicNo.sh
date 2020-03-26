#!/bin/bash -x

MAX_LIMIT=100
MIN_LIMIT=0

middle=0
choice=0

while [[(($choice -le 3))]]
do
	middle=$(( ($MIN_LIMIT+$MAX_LIMIT)/2 ))

	echo "1.Number greater than $middle"
	echo "2.Number less han $middle"
	echo "3.Number equal to $middle"

	read -p "Read the choice" choice

	case $choice in 
	1)
		MIN_LIMIT=$(($middle+1))
		;;
	2)
		MAX_LIMIT=$(($middle-1))
		;;
	3)
		echo "I gussed your number $middle"
		exit
		;;
	esac
done

