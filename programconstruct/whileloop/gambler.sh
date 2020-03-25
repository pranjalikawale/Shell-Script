#!/bin/bash -x

money=100
won=0
bet=0

MIN=1
MAX=2

while [[ (($money -gt 0 )) && (($money -ne 200)) ]]
do
	val=$(( $((RANDOM % $((($MAX -$MIN)+1)) ))+$MIN))
	if (( $val -eq 1 ))
	then	
		((money++))
		((won++))
	else
		((money--))
	fi
((bet++))
done

echo "Number of time u won is $won"
echo "Number of time bet is $bet"
