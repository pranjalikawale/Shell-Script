#!/bin/bash -x
read -p "Enter first number:" x;
read -p "Enter second number:" y;
z=$(($x + $y));
echo $z;
