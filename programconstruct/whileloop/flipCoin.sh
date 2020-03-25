#!/bin/bash -x

MIN=1
MAX=2

Counter=0
head=0
tail=0

while [[(($Counter -lt 11))]]
do
if [[(($((RANDOM%(MAX-MIN+1)+MIN)) == $MIN ))]]
then
	head=$((head+1))
else
   tail=$((tail+1))
fi
Counter=$(($Counter+1))
done

if [[(($head -gt $tail))]]
then
	echo "Head is won"
else
	echo "Tail is won"
fi
