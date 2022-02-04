#!/bin/bash -x

function diceroll()
{
	echo  $(( (RANDOM%6)+1 ))
}

declare -A max

n=0

num1=0
num2=0
num3=0
num4=0
num5=0
num6=0

while [[ $num1 -lt 10 && $num2 -lt 10 && $num3 -lt 10 && $num4 -lt 10 && $num5 -lt 10 && $num6 -lt 10 ]]
do
	((n++))
	diceroll n
	case $(diceroll n) in
		"1")
			num1=$(($num1+1))
			result[n]="one"
			max[n]="one";;
		"2")
			num2=$(($num2+1))
			result[n]="two"
			max[n]="two";;
		"3")
			num3=$(($num3+1))
			result[n]="three"
			max[n]="three";;
		"4")
			num4=$(($num4+1))
			result[n]="four"
			max[n]="four";;
		"5")
			num5=$(($num5+1))
			result[n]="five"
			max[n]="five";;
		*)
			num6=$(($num+1))
			result[n]="six"
			max[n]="six";;
	esac
done
echo $num1, $num2, $num3,$num4, $num5, $num6

echo "the no's which are reapeted 10 times : " ${max[@]}
