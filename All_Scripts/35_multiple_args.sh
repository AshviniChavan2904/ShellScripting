#!/bin/bash

function addition {
	echo "Sum is: $(($1+$2))"
}

function substraction {
	echo "Sub is: $(($1-$2))"
}

function multiplication {
	echo "Mul is: $(($1*$2))"
}

function division {
	echo "Div is: $(($1/$2))"
}

function modulus {
	echo "Mod is: $(($1%$2))"
}

select operation in "Addition" "Substraction" "Multiplication" "Division" "Modulus" "Exit"
do
	case $operation in
		"Addition") 
			echo "***Addition***"
			read -p "Enter two numbers separated by space: " num1 num2
			addition $num1 $num2
			;;
		"Substraction")
			echo "***Substraction***"
			read -p "Enter two numbers separated by space: " num1 num2
			substraction $num1 $num2
			;;
		"Multiplication")
			echo "***Multiplication***"
			read -p "Enter two numbers separated by space: " num1 num2
			multiplication $num1 $num2
			;;
		"Division")
			echo "***Division***"
			read -p "Enter two numbers separated by space: " num1 num2
			division $num1 $num2
			;;
		"Modulus")
			echo "***Modulus***"
			read -p "Enter two numbers separated by space: " num1 num2
			modulus $num1 $num2
			;;
		"Exit") 
			echo "Exiting from calculator"
			break
			;;
		*) echo "Invalid option!!";;
	esac
done

