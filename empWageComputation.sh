#!/bin/bash -x

echo "Welcome to employee wage computation program on master branch"

attendance=$((RANDOM%2))

WagePerHr=20

empType=$((RADNOM%2+1))

case $empType in
	1)
	EmpHrs=8
	dailyEmpWage=$(( $WagePerHr * $EmpHrs ))
	;;

	2)
	EmpHrs=4
	dailyPartTimeEmpWage=$(( $WagePerHr * $EmpHrs ))
	;;
esac
