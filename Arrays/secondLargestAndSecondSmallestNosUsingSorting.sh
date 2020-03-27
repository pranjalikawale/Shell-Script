#!/bin/bash -x

#read random element in array
function getter()
{
	count=0

	LOWER_LIMIT=100
	UPPER_LIMIT=999

	while [[(($count -lt 10))]]
	do
   	array[((count++))]=$((RANDOM%(($UPPER_LIMIT-$LOWER_LIMIT)+1)+$LOWER_LIMIT))
	done
	sorting "${array[@]}"
}

#sorting an array
function sorting()
{
	arr=("$@")
	
	for ((i=0; i <= ((${#arr[@]} - 2)); ++i))
	do
		for ((j=((i + 1)); j <= ((${#arr[@]} - 1)); ++j))
		do
      	if [[ ${arr[i]} -gt ${arr[j]} ]]
			then
        		tmp=${arr[i]}
         	arr[i]=${arr[j]}
				arr[j]=$tmp         
			fi
		done	
	done
	echo "${arr[@]}"
	removeDuplicate "${arr[@]}"
}


#remove duplicate element in array and print second largest and smallest number in array
function removeDuplicate()
{
	arr=("$@")
	j=0

	for ((i=0; i < ((${#arr[@]} - 1)); ++i))
	do
		if [[ ${arr[i]} -ne ${arr[$i+1]} ]]
   	then
			tmp[j++]=${arr[i]}
   	fi
	done
	
	tmp[j]=${arr[j]}

	echo "Second smallest number is ${tmp[1]}"
	echo "Second largest number is ${tmp[${#tmp[@]}-2]}"
}

#function invoke
getter
