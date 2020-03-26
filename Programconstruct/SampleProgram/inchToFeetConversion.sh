#!/bin/bash
echo  "1.Conversion into inch to Feet"
echo  "enter the input" 
read inch
feet=$(($inch/12))
bc -l <<< $feet
echo $feet
