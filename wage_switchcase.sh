#!/bin/bash -x
isAbsent=0
isPartTime=1
isFullTime=2
rc=$((RANDOM%3))
empRatePerHr=100

case $rc in
	$isAbsent)
	empHrs=0
	;;

	$isPartTime)
	empHrs=4
	;;

	$isFullTime)
	empHrs=8
	;;
	*)
	empHrs=NULL
	;;
esac
 
Salary=$(( empHrs * empRatePerHr ))
