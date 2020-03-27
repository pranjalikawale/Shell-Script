#!/bin/bash -x


function primeFactor()
{
	read -p "Read the number" num

	temp=$num
	counter=0

	for (( i=2; i<=temp; i++ ))
	do
		for (( ;$((num%$i)) == 0 ;num=$((num/$i)) ))
		do
			array[counter++]=$i
   	done
	done
	
	echo "Prime Factor of $temp "
	echo "${array[@]}"

}

primeFactor
