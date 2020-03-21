#!/bin/bash -x
read -p "Enter input" num1
read -p "Enter input" num2 
read -p "Enter input" num3
output=$(($num1 + $num2 * $num3))
echo $output
output=$(($num3 + $num1 / $num2))
echo $output
output=$(($num1 % $num2 * $num3))
echo $output
output=$(($num1 * $num2 + $num3))
echo $output


