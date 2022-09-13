#!/bin/bash -x

isPresent=1
rc=$((RANDOM%2))
if [ $isPresent==$rc ]
then
	EmpRateperHr=60
	EmpHr=10
	Salary=$(($EmpRateperHr*$EmpHr))
	echo $Salary
else
	echo "Employee is absent"
fi
