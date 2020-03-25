#!/bin/bash -x

function temperatureConversion()
{
   read -p "Read the value" temperature
	
	case $1 in
	1)
  		if [[ $temperature -ge 0 && $temperature -le 32 ]] 
		then
			echo "$(($(($(($temperature*9))/5))+32)) F"
		else
			echo "Invalid Input: Temperature Range between Freezing Point (0 °C)  and the Boiling Point of Water (100 °C ) "
		fi	
		;;
	2)
		if [[ $temperature -ge 100 && $temperature -le 212 ]]
		then
			echo "$(($(($temperature-32))*5/9)) C"
		else
			echo "Invalid Input: Temperature Range between Freezing Point (32 °F)  and the Boiling Point of Water (212 °F) "
		fi
		;;
	*)
		echo "Invalid Input: 1.For Celcius 2.For Fahrenheit "
		;;
	esac
}

echo "Enter the Input : 1.For Celcius 2.For Fahrenheit "
read unit

temperatureConversion $unit
