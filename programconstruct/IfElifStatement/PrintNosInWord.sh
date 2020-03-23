#!/bin/bash	-x

read	-p	"Enter the single digit nos"	num

if	[	$num -eq	1	]
then
	echo	"ONE" 

elif	[	$num	-eq	2	]
then
	echo	"TWO"

elif  [  $num  -eq   3  ]
then
   echo  "THREE"

elif  [  $num  -eq   4  ]
then
   echo  "FOUR"

elif  [  $num  -eq   5  ]
then
   echo  "FIVE"

elif  [  $num  -eq   6  ]
then
   echo  "SIX"

elif  [  $num  -eq   7  ]
then
   echo  "SEVEN"

elif  [  $num  -eq   8  ]
then
   echo  "EIGHT"

elif  [  $num  -eq   9  ]
then
   echo  "NINE"

elif  [  $num  -eq   0  ]
then
   echo  "ZERO"

else
	echo	"Incorrect Input"
fi


