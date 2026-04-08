#!/bin/bash

<<COMMENT
read -p "Enter two names: " name1 name2

#Check if strings are equal
if [[ $name1 = $name2 ]]
then
	echo "Both strings are equal"
else
	echo "Both strings are different"
fi

#Check if strings are not equal
if [[ $name1 != $name2 ]]
then
	echo "Both strings are different"
else
	echo "Both strings are equal"
fi
COMMENT

read -p "Enter your name: " name

<<COMMENT
#Check if string is empty
if [[ -z $name ]]
then
	echo "You have not entered your name!!"
else
	echo "Hello, $name"
fi
COMMENT

#Check if string is not empty
if [[ -n $name ]]
then
	echo "Hello, $name"
else
	echo "You have not entered your name!!"
fi
