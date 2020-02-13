#!/bin/bash -x

echo " ****************************** WELCOME TO EMPLOYEE WAGE COMPUTATION ****************************** "

# CONSTANT
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_WAGE_RATE_PER_HOUR=20
NUM_WORKING_DAYS=20
MAX_HRS_IN_MONTH=100

# VARIABLE
totalSalary=0
totalEmpHrs=0
totalWorkingDays=0

# CALCULATING WAGES FOR MONTH AND TOTAL EMPLOYEE SALARY USING WHILE LOOP
while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))

	# GENERATE RANDOM VALUE
	randomCheck=$(( RANDOM % 3 ))

	# CHECK CONDITION AND GET EMPLOYEE HOURS
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

	# CALCULATE TOTAL WORKING HOURS OF EMPLOYEE
	totalEmpHrs=$(( employeeHrs + totalEmpHrs ))

done

	# CALCULATE TOTAL SALARY OF EMPLOYEE
	totalSalary=$(( totalEmpHrs * EMP_WAGE_RATE_PER_HOUR ))

