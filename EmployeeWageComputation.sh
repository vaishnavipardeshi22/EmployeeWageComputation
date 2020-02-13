#!/bin/bash -x

echo " ****************************** WELCOME TO EMPLOYEE WAGE COMPUTATION ****************************** "

#CONSTANT
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_WAGE_RATE_PER_HOUR=20
NUM_WORKING_DAYS=20

#VARIABLE
totalSalary=0

#CALCULATING WAGES FOR MONTH AND TOTAL EMPLOYEE SALARY USING FOR LOOP
for(( days=1; days<=$NUM_WORKING_DAYS; days++ ))
do
	#GENERATE RANDOM VALUE
	randomCheck=$(( RANDOM % 3 ))

	#CHECK CONDITION AND GET EMPLOYEE HOURS
	case $randomCheck in
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

	#CALCULATE DAILY WAGE FOR EMPLOYEE
	salary=$(( employeeHrs * EMP_WAGE_RATE_PER_HOUR ))

	#CALCULATE TOTAL SALARY OF EMPLOYEE
	totalSalary=$(( totalSalary + salary ))
done

