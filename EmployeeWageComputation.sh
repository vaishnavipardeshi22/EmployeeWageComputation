#!/bin/bash -x

echo " ****************************** WELCOME TO EMPLOYEE WAGE COMPUTATION ****************************** "

#CONSTANT
IS_PRESENT=1
EMP_WAGE_RATE_PER_HOUR=20

#GENERATE RANDOM VALUE
randomCheck=$(( RANDOM % 2 ))

#CHECK EMPLOYEE IS PRESENT OR ABSENT AND GET EMPLOYEE HOURS
if [ $IS_PRESENT -eq $randomCheck ]
then
	employeeHrs=8
else
	employeeHrs=0
fi

#CALCULATE DAILY WAGE FOR EMPLOYEE
salary=$(( employeeHrs * EMP_WAGE_RATE_PER_HOUR ))
