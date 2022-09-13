#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
maxRateinMonth=100
numofWorkingDays=20

totalempHr=0
totalWorkingDays=0

function getworkHr()
{
	case $rc in
			$isPartTime)
				empHrs=4
			;;	
			$isFullTime)
				empHrs=8
			;;
			*)
				empHrs=0
			;;
	esac
}
while [[ $totalempHr -lt $maxRateinMonth && $totalWorkingDays -lt $numofWorkingDays ]]
do
	((totalWorkingDays++))
	rc=$((RANDOM%3))
	getworkHr $rc
	totalempHr=$((totalempHr+empHrs))
done

totalSalary=$((totalempHr*empRatePerHr))


