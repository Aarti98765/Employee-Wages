#!/bin/bash
isPresent=1;
randomTemp=$(( RANDOM%2 ));
if [ $isPresent -eq 1 ]
then 
		empRatePerHr=20;
		empHrs=8;
		salary=$(( $empHrs*$empRatePerHr ));
else
		salary=0;
fi
