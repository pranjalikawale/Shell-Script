#!/bin/bash -x

ISPARTTIME=1;
ISFULLTIME=2;
TOTALSALARY=0;
EMPRATEPERHR=20;
WORKINGDAYS=20;

for ((day=1;day<=$WORKINGDAYS;day++))
do
	empcheck=$((RANDOM%3))
	
	case $empcheck in
		$ISFULLTIME)
			EMPHRS=8
			;;
		
		$ISPARTIME)
			EMPHRS=4
			;;

		*)
			EMPHRS=0
			;;
	esac

	salary=$(($EMPHRS*$EMPRATEPERHR))
	total=$(($TOTALSALARY+$salary))
done
