#!/bin/bash -x

read	-p	"Enter the input" val

if [  $val  -ge   100000 ]
then
   echo  $(((val/100000)%10))

elif [  $val  -ge   10000 ]
then
   echo  $(((val/10000)%10))

elif [  $val  -ge   1000 ]
then
   echo  $(((val/1000)%10))

elif [  $val  -ge   100 ]
then
   echo  $(((val/100)%10))

elif [  $val  -ge   10 ]
then
   echo  $(((val/10)%10))

elif	[$val	-lt	10	]
then
	echo	$((val%10))

else 
	echo	"Invalid input"

fi
