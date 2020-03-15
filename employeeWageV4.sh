#!/bin/bash -x

#CONSTANT FOR THE PROGRAM
isPartTime=1;
isFulltime=2
empRatePerHr=20

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
salary=$(( $empHrs*$empRatePerHr ))
