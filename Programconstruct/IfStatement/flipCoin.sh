#!/bin/bash -x

MIN=1
MAX=2

if [[(($((RANDOM%(MAX-MIN+1)+MIN)) == $MIN ))]];
then
		echo	"Head"
else
		echo	"Tail"
fi
