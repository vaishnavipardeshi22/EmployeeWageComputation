#!/bin/bash -x

echo " ****************************** WELCOME TO EMPLOYEE WAGE COMPUTATION ****************************** "

#CONSTANT
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_WAGE_RATE_PER_HOUR=20
NUM_WORKING_DAYS=20
MAX_HRS_IN_MONTH=100

#VARIABLE
totalSalary=0
totalWorkHours=0
totalWorkingDays=0

#GET WORK HOURS USING FUNCTION
function getWorkingHours()
{
	case $1 in
		$IS_FULL_TIME)
			employeeHrs=8
			;;
		$IS_PART_TIME)
			employeeHrs=4
			;;
		*)
			employeeHrs=0
			;;
	esac
	echo $employeeHrs
}

#FUNCTION FOR CALCULATING DAILY WAGE
function calcDailyWage()
{
	local workHrs=$1
	wage=$(( workHrs * EMP_WAGE_RATE_PER_HOUR ))
	echo $wage
}

#CALCULATING TOTAL EMPLOYEE HOURS USING WHILE LOOP
while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))

	employeeHrs="$( getWorkingHours $(( RANDOM % 3 )) )"
	totalWorkHours=$(( totalWorkHours + employeeHrs ))
	empDailyWage[$totalWorkingDays]="$( calcDailyWage $employeeHrs )"
done

#CALCULATE TOTAL SALARY OF EMPLOYEE
totalSalary="$( calcDailyWage $totalWorkHours )"
echo " Daily Wage " ${empDailyWage[@]}

