#!/bin/bash 

isAbsent=0
echo "Absent=$isAbsent"
isPartTime=1
echo "PartTime=$isPartTime"
isFullTime=2
echo "FullTime=$isFullTime"
empRatePerHr=500
echo "Employee Rate Per Hour=$empRatePerHr"
numofWorkingDays=20
echo "No of Working Days=$numofWorkingDays"
totalSalary=0
rc=$((RANDOM%3))
echo "rc=$rc"

for (( day=1; day<=20; day++ ))
do
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
					empHrs=0
			;;
	esac
	salary=$(($empHrs*$empRatePerHr))
	totalSalary=$(($totalSalary+$salary))
done
echo "Daily salary:$salary"
echo "Total Salary is:$totalSalary"
