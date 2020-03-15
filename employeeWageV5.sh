#!/bin/bash -x

#CONSTANT FOR THE PROGRAM
isPartTime=1;
isFullTime=2;

#VARIABLE
totalSalary=0;
numWorkingDays=20;
empRatePerHr=20;

for (( day=1; day<=$numWorkingDays; day++ ))
do
	empCheck=$(( RANDOM%3 ))
	case $empCheck in
		$isFulltime)
			empHrs=8;
			;;
		$isPartTime)
			empHrs=4;
			;;
		*)
			empHrs=0
									;;
	esac
	salary=$(( $empHrs*empRatePerHr ));
	totalSalary=$(( $totalSalary+$salary ));
done
