#!/bin/bash -x

#CONSTANT FOR THE PROGRAM
isPartTime=1;
isFulltime=2
EMP_RATE_PER_HR=20

empCheck=$(( RANDOM%3 ))
case $empCheck in
	$isFulltime)
		empHrs=8;
		;;
	$isPartTime)
		empHrs=4;
		;;
	*)
		empHrs=0;
		;;
esac

salary=$(( $empHrs*$EMP_RATE_PER_HR ))
