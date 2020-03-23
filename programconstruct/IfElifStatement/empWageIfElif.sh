#!/bin/bash -x

ISPARTTIME=1
ISFULLTIME=2
EMPRATEPERHR=20
randomCheck=$((RANDOM%3))

if	[	$ISFULLTIME -eq	$randomCheck	]
then
	EMPHRS=8

elif	[	$ISPARTTIME	-eq $randomCheck	]
then
	EMPHRS=4

else
	EMPHRS=0
fi

salary=$(($EMPHRS*$EMPRATEPERHR))

