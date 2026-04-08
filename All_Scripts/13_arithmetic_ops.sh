#!/bin/bash

#Taken the numbers from user
#read -p "Enter two numbers separated by space: " num1 num2

#Basic Arithematic Operations
#echo "Addition: $(($num1+$num2))" #Addition-> 150
#echo "Substraction: $(($num1-$num2))" #Substraction-> 50
#echo "Multiplication: $(($num1*$num2))" #Multiplication-> 5000
#echo "Division: $(($num1/$num2))" #Division-> 2
#echo "Modulus: $(($num1%$num2))" #Modulus->0

<<COMMENT
#Increment & Decrement
num=10
echo "Original number: $num"
((num--)) #Decrement
echo "Decrement number: $num"
((num++)) #Increment
echo "Increment number: $num"

#Assignment Operators
num=20
echo "Addition: $((num+=10))" #num=30
echo "Substraction: $((num-=5))" #num=25
echo "Multiplication: $((num*=2))" #num=50
echo "Division: $((num/=5))" #num=10
echo "Modulus: $((num%=4))" #num=0

#Comparision Operator

read -p "Enter your number: " num

if [[ $num -le 50 ]] 
then
	echo "You entered a lower number!"
else
	echo "You entered a higer number!"
fi
COMMENT
#Using expr
#a=10
#b=5
#echo "sum: $(expr $a + $b)"

#Using bc command
#a=100
#b=50
#echo "Sum is:"
#echo "$a+$b" | bc

<<COMMENT
#Using let
num1=100
num2=50

let sum=$num1+$num2
let sub=$num1-$num2
let mul=$num1*$num2
let div=$num1/$num2
let mod=$num1%$num2

echo "Sum is : $sum"
echo "Sub is : $sub"
echo "Mul is : $mul"
echo "Div is : $div"
echo "Mod is : $mod"
COMMENT

#Check the arithematic operation exit status
((5<10))
echo $?
