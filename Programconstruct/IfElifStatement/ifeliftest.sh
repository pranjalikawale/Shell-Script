#!/bin/bash -x

VAR1=10
VAR2=10

if	[	$VAR1	-gt	$VAR2	]
then
	echo	"$VAR2 is greater than $VAR1"

elif [	$VAR2 -eq	$VAR1	]
then
	echo	"Both variables are equal"

else
	echo	"$VAR2 is less than $VAR1"

fi



