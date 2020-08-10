#!/bin/bash -x

echo "Welcome to employee wage computation program on master branch"

attendance=$((RANDOM%2))

WagePerHr=20
FullDayHr=8

dailyEmpWage=$(( $WagePerHr * $FullDayHr ))
