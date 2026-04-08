#!/bin/bash

read -p "Enter your marks: " marks 

if [[ $marks -ge 80 ]]
then
	echo "You are Passed with 'A' Grade!"
elif [[ $marks -ge 60 ]]
then
	echo "You are Passed with 'B' Grade!"
elif [[ $marks -ge 40 ]]
then
	echo "You are Passed with 'C' Grade!"
else
	echo "You are Failed!"
fi
