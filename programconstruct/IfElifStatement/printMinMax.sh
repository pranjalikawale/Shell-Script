#!/bin/bash -x

read -p "Enter first number:" a
read -p "Enter second number:" b
read -p "Enter third number:" c

MIN=999
MAX=0
result=$((a+b*c))

if	[ $result -ge $MAX ]
then
	if [ $MAX -ne 0 ]
	then		
		MIN=$MAX
	fi
	MAX=$result

elif [[ $result -lt $MIN && $result -ne $MAX ]]
then
   MIN=$result

fi

result=$((a%b+c))

if [ $result -ge $MAX ]
then
   if [ $MAX -ne 0 ]
   then
      MIN=$MAX
   fi
   MAX=$result

elif [[ $result -lt $MIN && $result -ne $MAX ]]
then
   MIN=$result

fi

result=$((c+a/b))

if [ $result -ge $MAX ]
then
   if [ $MAX != 0 ]
   then
      MIN=$MAX
   fi
   MAX=$result

elif [[ $result -lt $MIN && $result -ne $MAX ]]
then
   MIN=$result

fi

result=$((a*b+c))

if [ $result -ge $MAX ]
then
   if [ $MAX != 0 ]
   then
      MIN=$MAX
   fi
   MAX=$result

elif [[ $result -lt $MIN && $result -ne $MAX ]]
then
   MIN=$result

fi

echo $MIN
echo $MAX
