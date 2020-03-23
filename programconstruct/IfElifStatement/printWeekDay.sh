#!/bin/bash -x

read -p "Enter the input" val

if	[	$val	-eq	0	]
then
	echo	"Sunday"

elif	[	$val	-eq	1	]
then
	echo	"Monday"

elif	[	$val	-eq	2	]
then
	echo	"Tuesday"

elif  [  $val  -eq   3  ]
then
   echo  "Wednesday"

elif  [  $val  -eq   4  ]
then
   echo  "Thursday"

elif  [  $val  -eq   5  ]
then
   echo  "Friday"

elif  [  $val  -eq   6  ]
then
   echo  "Saturday"

else
	echo	"Invalid Input"
fi
