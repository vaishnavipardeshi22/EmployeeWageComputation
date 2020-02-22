#!/bin/bash -x

echo " ****************************** WELCOME TO EMPLOYEE WAGE COMPUTATION ****************************** "

#CONSTANT
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_WAGE_RATE_PER_HOUR=20

#GENERATE RANDOM VALUE
randomCheck=$(( RANDOM % 3 ))

#GET EMPLOYEE HOURS 
if [ $IS_FULL_TIME -eq $randomCheck ]
then
	employeeHrs=8
elif [ $IS_PART_TIME -eq $randomCheck ]
then
	employeeHrs=4
else
	employeeHrs=0
fi

#CALCULATE DAILY WAGE FOR EMPLOYEE
salary=$(( employeeHrs * EMP_WAGE_RATE_PER_HOUR ))
