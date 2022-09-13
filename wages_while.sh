#!/bin/bash -x

isAbsent=0
isPartTime=1
isFullTime=2
empRatePerHr=70
maxRateinMonth=270
numofWorkingDays=20
rc=$((RANDOM%3))

totalempHr=0
totalWorkingDays=0

while [[ $totalempHr -lt $maxRateinMonth || $totalWorkingDays -lt $numofWorkingDays ]]
do
	((totalWorkingDays++))
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
	esac
totalempHr=$(($totalempHr+$empHrs))
done
totalSalary=$(($totalempHr*$empRatePerHr))
