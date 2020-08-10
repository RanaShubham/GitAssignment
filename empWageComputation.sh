#!/bin/bash -x

echo "Welcome to employee wage computation program on master branch"

attendance=$((RANDOM%2))

WagePerHr=20
WorkingDaysPerMonth=20

empType=$((RANDOM%2+1))

case $empType in
	1)
	EmpHrs=8
	dailyEmpWage=$(( $WagePerHr * $EmpHrs ))
	monthlyEmpWage=$(( $dailyEmpWage * $WorkingDaysPerMonth ))
	;;

	2)
	EmpHrs=4
	dailyPartTimeEmpWage=$(( $WagePerHr * $EmpHrs ))
	monthlyEmpWage=$(( $dailyPartTimeEmpWage * $WorkingDaysPerMonth ))
	;;
esac
