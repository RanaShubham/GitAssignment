#!/bin/bash -x

echo "Welcome to employee wage computation program on master branch"

WagePerHr=20
WorkingDaysPerMonth=20
RegularEmpHrs=8
PartTimeEmpHrs=4

read -p "Enter 1 for full time employee and Enter 2 for part time for part time employee: " empType

#Total working hrs for employees
totalWorkingHrs=0

#day counter
i=0

#Dictionary to hold daily wage and total wage of an emp
declare -A Wages

# empType passed through arg
function getTotalWorkHrs() {

local emp=$1

	while [[ $totalWorkingHrs -lt 100 && $i -lt 20 ]]
	do
		((i++))

		attendance=$((RANDOM%2))

			if [[ $attendance -eq 1 ]]
			then
				case $emp in

					1)
					totalWorkingHrs=$(($totalWorkingHrs+$RegularEmpHrs))
					dailyWage=$(($RegularEmpHrs * $WagePerHr))
					Wages["Day$i"]="Day${i}_total_Wage $(( $totalWorkingHrs * $WagePerHr )) & Daily_Wage $dailyWage"
					;;

					2)
					totalWorkingHrs=$(($totalWorkingHrs+$PartTimeEmpHrs))
					dailyWage=$(( $PartTimeEmpHrs * $WagePerHr ))
					Wages["Day$i"]="Day${i}_total_wage $(( $totalWorkingHrs * $WagePerHr )) & Daily_wage $dailyWage"
					;;

				esac

			else
				case $emp in

                                        1)
					wagesTillNow=$(($WagePerHr*$totalWorkingHrs))
                                	Wages["Day$i"]="Day${i}_total_wage $wagesTillNow & Daily_wage 0"

                                        ;;

                                        2)
					wagesTillNow=$(($WagePerHr*$totalWorkingHrs))
                                	Wages["Day$i"]="Day${i}_total_wage $wagesTillNow & Daily_wage 0"

                                        ;;

                                esac

			fi
	done

}

getTotalWorkHrs $empType

for key in "${!Wages[@]}"
do
	echo "$key ${Wages[$key]}"
done
