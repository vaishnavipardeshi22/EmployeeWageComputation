#!/bin/bash -x

echo " ****************************** WELCOME TO EMPLOYEE WAGE COMPUTATION ****************************** "

# CONSTANT
IS_PRESENT=1

# GENERATE RANDOM VALUE
randomCheck=$(( RANDOM % 2 ))

# CHECK EMPLOYEE IS PRESENT OR ABSENT AND PRINT RESULT
if [ $IS_PRESENT -eq $randomCheck ]
then
	echo " Employee is Present "
else
	echo " Employee is  Absent"
fi
