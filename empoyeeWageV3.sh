#!/bin/bash -x
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
randomTemp=$(( RANDOM%3 ));
if [ $isFullTime -eq $randomTemp ]
then 
		empHrs=8;
elif [ $isPartTime -eq $randomTemp ]
then 
		empHrs=4;
else
		empHrs=0;
fi
salary=$(($empHrs*$empRatePerHr))
