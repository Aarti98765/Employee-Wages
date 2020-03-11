#!/bin/bash
isPresent=1;
randomTemp=$(( RANDOM%2 ))
if [ $isPresent -eq $randomTemp ]
then 
	echo "Employee is present"
else
	echo "Employee is not present"
fi
