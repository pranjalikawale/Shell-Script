#!/bin/bash

function setter()
{
	read -p "Read a size of array" size
	
	echo "Enter the element in array"
	for ((i=0;i<$size;++i))
   do
		read array[i]
	done

   echo "Array element are "
	echo ${array[@]}
	triplet "${array[@]}"
}

function triplet()
{
	
	arr=("$@")
	flag=0	
	echo "Triplet "

	for ((i=0;i<${#arr[@]}-2;++i))
	do
		for ((j=i+1;j<${#arr[@]}-1;++j))
		do
			for ((k=j+1;k<${#arr[@]};++k))
   		do
				if [[(($((${arr[i]} + ${arr[j]} + ${arr[k]})) -eq 0))]]
				then
					echo "${arr[i]} , ${arr[j]} , ${arr[k]}"
					flag=1				
				fi
   		done
   	done
	done
	
	if [[(($flag -eq 0))]]
	then
		echo "Not exit"
	fi
}

setter
