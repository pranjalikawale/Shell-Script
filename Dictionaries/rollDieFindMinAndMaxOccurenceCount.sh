#!/bin/bash -x

UPPER_LIMIT=6
LOWER_LIMIT=1

counter=0
declare -A occurence
occurence[@]="0"

#roll a die and store value in dictionary
while [[(($counter -lt 10))]]
do
	key=$((RANDOM%($UPPER_LIMIT-$LOWER_LIMIT+1)+$LOWER_LIMIT))
	occurence[$key]=$((${occurence[$key]}+1))

	if (($counter<${occurence[$key]}))
	then
		counter=${occurence[$key]}
	fi

done

len=${#occurence[@]}
max=${occurence[1]}
min=${occurence[1]}

#finding minimum and maximum occurence of number
while [[($len > 0)]]
do
	if (($max<=${occurence[$len]}))
	then
		max=${occurence[$len]}
		maxkey=$len
	
	elif (($min>=${occurence[$len]}))
	then	
		min=${occurence[$len]}
		minkey=$len
	fi
	
((len--))
done

echo "Keys: "${!occurence[@]}
echo "Values: "${occurence[@]}

echo "Minimum occurence of number $minkey on die"
echo "Maximum occurence of number $maxkey on die"

