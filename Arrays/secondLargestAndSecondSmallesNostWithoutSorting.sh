#!/bin/bash -x

count=0

LOWER_LIMIT=100
UPPER_LIMIT=999

while [[(($count -lt 10))]]
do
	array[((count++))]=$((RANDOM%(($UPPER_LIMIT-$LOWER_LIMIT)+1)+$LOWER_LIMIT))
done


function secondLargestNumber()
{
	largest=0
	secondLargest=0
	arrays=("$@")
	for i in "${arrays[@]}";
	do
		if [ $i -ge $largest ]
		then
			secondLargest=$largest
			largest=$i
		elif [ $i -gt $secondLargest ]
		then	
			secondLargest=$i
		fi
	done

	echo "Second largest number is $secondLargest"
}


function secondSmallestNumber()
{
	smallest=999
	secondSmallest=999
	arrays=("$@")
	for i in "${arrays[@]}";
	do
   	if [ $i -le $smallest ]
   	then
      	secondSmallest=$smallest
      	smallest=$i
   	elif [ $i -lt $secondSmallest ]
   	then
      	secondSmallest=$i
   	fi
	done

	echo "Second smallest number is $secondSmallest"
}
secondLargestNumber "${array[@]}"
secondSmallestNumber "${array[@]}"
