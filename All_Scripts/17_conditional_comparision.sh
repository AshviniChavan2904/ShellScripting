#!/bin/bash

read -p "Enter two numbers: " num1 num2

#Check equality
if [[ $num1 -eq $num2 ]]
then
	echo "Both numbers are equal"
else
	echo "Both numbers are different"
fi


#Check Not equal
if [[ $num1 -ne $num2 ]]
then
	echo "Both numbers are different"
else
	echo "Both numbers are equal"
fi

#Check greater than
if [[ $num1 -gt $num2 ]]
then
	echo "$num1 is greater than $num2"
else
	echo "$num1 is less than $num2"
fi

#Check less than
if [[ $num1 -lt $num2 ]]
then
	echo "$num1 is less than $num2"
else
	echo "$num1 is greater than $num2"
fi

#Check greater than equal to
if [[ $num1 -ge $num2 ]]
then
	echo "$num1 is greater than or equal to $num2"
else
	echo "$num1 is less than $num2"
fi

#Check less than equal to
if [[ $num1 -le $num2 ]]
then
	echo "$num1 is less than or equal to $num2"
else
	echo "$num1 is greater than $num2"
fi


