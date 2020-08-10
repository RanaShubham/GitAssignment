#!/bin/bash -x

echo "Welcome to employee wage computation program on master branch"

attendance=$((RANDOM%1))

WagePerHr=20
FullDayHrs=8
PartTimeHrs=4

dailyFullTimeEmpWage=$(($WagePerHr * $FullDayHrs))
dailyPartTimeEmpWage=$(( $WagePerHr * $PartTimeHrs ))
