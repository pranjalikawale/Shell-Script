#!/bin/bash -x
sum=0
for((i=0;i<5;i++))
do 
	sum=$(($sum +$((RANDOM % (100 - 9 +1) + 9))))
done
average=$(($sum/5))
echo $sum
echo $average
