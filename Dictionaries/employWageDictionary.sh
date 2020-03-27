#!/bin/bash -x

IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HRS_IN_MONTH=4
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20

totalWorkHours=0
totalWorkingDays=0
declare -A empDailyWage

function getWorkingHours()
{
	case $1 in
		$IS_FULL_TIME)
			workHours=8
			;;
		$IS_PART_TIME)
			workHours=4
			;;
		*)
			workHours=0
			;;
	esac
	echo $workHours

}

function calcDailyWage()
{
	local empHrs=$1
	echo $(($empHrs * $EMP_RATE_PER_HR))

}

while [[(($totalWorkHours -lt $MAX_HRS_IN_MONTH)) && (($totalWorkingDays -lt $NUM_WORKING_DAYS)) ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkingHours $((RANDOM%3)) )"
	totalWorkHours=$(($totalWorkHours+$workHours))
	empDailyWage["Day "$totalWorkingDays]="$(calcDailyWage $workHours )"
done

totalSalary="$( calcDailyWage $totalWorkingHours )"
echo "Daily Wage"
echo ${empDailyWage[@]}
echo ${!empDailyWage[@]}
