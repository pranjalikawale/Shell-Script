#!/bin/bash -x

read -p "Read the Input" val1
read -p "Read the Input" val2

function isPalindrome()
{

   num1=$1
   temp1=$num1

   num2=$2
   temp2=$num2

   FLAG=0

   while [[ (($num1 -gt 0)) && (($num2 -gt 0)) ]]
   do
      remd1=$(($num1%10))
      remd2=$(($num2%10))

      if [ $remd1 -ne $remd2 ]
      then
         FLAG=1
      fi

      num1=$(($num1/10))
      num2=$(($num2/10))

   done

if [[ $FLAG -eq 0 ]]
then
   echo "$temp1 and $temp2 are palindrome"
else
   echo "$temp1 and $temp2 are not palindrome"
fi
}

isPalindrome $val1 $val2

