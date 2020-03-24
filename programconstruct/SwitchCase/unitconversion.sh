#!/bin/bash -x

echo "Enter your choice "
echo "1.Feet to Inch "
echo "2.Inch to Feeet"
echo "3.Feet to Meter"
echo "4.Meter to Feet"
read choice

read -p "Enter the input" val

case $choice in
	1)
		echo "$((val*12))";;
	 
	2)
      echo "$((val/12))" | bc;;

   3)
      echo "$((val/3.28))" | bc;;
		
   4)
      echo "$((val*3.28))" | bc;;

   *)
      echo "Invalid input";;

esac


