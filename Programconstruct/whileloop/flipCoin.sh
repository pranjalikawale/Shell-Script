#!/bin/bash -x

MIN=1

counter=0
head=0
tail=0

while [[(($counter -lt 11))]]
do
if [[(($((RANDOM%2)) == $MIN ))]]
then
	head=$((head+1))
else
   tail=$((tail+1))
fi
counter=$(($counter+1))
done

if [[(($head -gt $tail))]]
then
	echo "Head is won"
else
	echo "Tail is won"
fi
