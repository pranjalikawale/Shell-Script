#!/bin/bash -x

UPPER_LIMIT=12
LOWER_LIMIT=1
UPPER_LIMIT_YEAR=93
LOWER_LIMIT_YEAR=92

counter=5
declare -A cal
declare -A birth

while [[(($counter -gt 0))]]
do
   month=$((RANDOM%($UPPER_LIMIT-$LOWER_LIMIT+1)+$LOWER_LIMIT))
	year=$((RANDOM%($UPPER_LIMIT_YEAR-$LOWER_LIMIT_YEAR+1)+$LOWER_LIMIT_YEAR))
	read -p "Read name of $counter individual" name   
	cal["$month" "$year"]=$name
((counter--))
done

echo "People having a birth day in same month"
while [[(($LOWER_LIMIT_YEAR -le $UPPER_LIMIT_YEAR))]]
do
	LOWER_LIMIT=1
	echo "Year is $LOWER_LIMIT_YEAR "
	while [[(($LOWER_LIMIT -le $UPPER_LIMIT))]]
	do
		birth[$LOWER_LIMIT]="${birth[$LOWER_LIMIT]} ${cal[$LOWER_LIMIT $LOWER_LIMIT_YEAR]}"
   	case $LOWER_LIMIT in
		1)
			echo "Month January:${birth[$LOWER_LIMIT]}"
			;; 
		2)
      			echo "Month Feburary:${birth[$LOWER_LIMIT]}"
      			;;
		3)
      			echo "Month March:${birth[$LOWER_LIMIT]}"
      			;;
		4)
      			echo "Month April:${birth[$LOWER_LIMIT]}"
      			;;
		5)
			echo "Month May:${birth[$LOWER_LIMIT]}"
			;;
		6)
      			echo "Month June:${birth[$LOWER_LIMIT]}"
      			;;
		7)
      			echo "Month July:${birth[$LOWER_LIMIT]}"
      			;;
		8)
			echo "Month August:${birth[$LOWER_LIMIT]}"
			;;
		9)
      			echo "Month September:${birth[$LOWER_LIMIT]}"
      			;;
   		10)
      			echo "Month Octomber:${birth[$LOWER_LIMIT]}"
      			;;
   		11)
      			echo "Month November:${birth[$LOWER_LIMIT]}"
      			;;
   		12)
      			echo "Month December:${birth[$LOWER_LIMIT]}"
      			;;
		esac
	((LOWER_LIMIT++))
done
((LOWER_LIMIT_YEAR++))
done
