#!/bin/bash

read -p "Enter your age & country name: " age country

#AND Operator
if [[ $age -ge 18 && $country = "India" ]]
then
	echo "You are eligible to vote!"
else
	echo "You are not eligible to vote!"
fi

#OR Operator
if [[ $age -ge 18 || $country = "India" ]]
then
	echo "You are eligible to vote!"
else
	echo "You are not eligible to vote!"
fi

#NOT Operator
a=5
if ! [ $a -gt 10 ]
then
echo "Condition is false, so NOT makes it true"
fi
