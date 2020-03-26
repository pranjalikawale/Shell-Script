#!/bin/bash -x
min=999
max=0
for((i=0;i<5;i++))
do
checkrandom=$(((RANDOM%(1000-99+1)+99)))
if  [ $checkrandom -ge $max ]
then
	max=$(($checkrandom))
elif [ $checkrandom -lt $min ]
then
	min=$(($checkrandom))
fi
done
echo " $min and $max "
