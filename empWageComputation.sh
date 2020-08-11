#!/bin/bash -x

echo "Welcome to employee wage computation program on master branch"

WagePerHr=20
WorkingDaysPerMonth=20
RegularEmpHrs=8
PartTimeEmpHrs=4

read -p "Enter 1 for full time employee and Enter 2 for part time for part time employee: " empType
totalWorkingHrs=0
totalWorkingDays=0

#Dictionary to hold daily wage and total wage of an emp
declare -A Wages

# empType passed through arg
function getTotalWorkHrs() {

local emp=$1

	while [[ $totalWorkingHrs -lt 100 && $totalWorkingDays -lt 20 ]]
	do

		attendance=$((RANDOM%2))
		((totalWorkingDays++))

			if [[ $attendance -eq 1 ]]
			then
				case $emp in

					1)
					totalWorkingHrs=$(($totalWorkingHrs+$RegularEmpHrs))
					dailyWage=$(($RegularEmpHrs * $WagePerHr))
					Wages["$dailyWage"]=$(( $totalWorkingHrs * $dailyWage))
					;;

					2)
					totalWorkingHrs=$(($totalWorkingHrs+$PartTimeEmpHrs))
					dailyWage=$(( $PartTimeEmpHrs * $WagePerHr ))
					Wages["$dailyWage"]=$(( $totalWorkingHrs * $dailyWage ))
					;;

				esac
			fi
	done

}

getTotalWorkHrs $empType
