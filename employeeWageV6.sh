#!/bin/bash -x 

#CONSTANT FOR THE PROGRAM
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

#VERIABLES
totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalEmpHr -le $MAX_HRS_IN_MONTH && 
      $totalWorkingDays -le $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$(( RANDOM%3 ));
	case $empCheck in
		$IS_FULL_TIME)
			empHr=8;
			;;
		$IS_PART_TIME)
			empHr=4;
			;;
		*)
			empHr=0;
									;;
	esac
	totalEmpHrs=$(( $totalEmpHrs+$empHr ))
done

totalSalary=$(( $totalEmpHrs*$EMP_RATE_PER_HR ))

