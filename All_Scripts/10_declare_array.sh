#!/bin/bash

#Declare array
declare -A student

#Intialize array
student=(
	[first_name]='Ashvini'	
	[last_name]='Chavan'
	[city]='Ch. Sambhajinagar'
	[age]=27
)

echo "Printing items in array"
echo "First_Name: ${student[first_name]}"
echo "Last_Name: ${student[last_name]}"
echo "City: ${student[city]}"
echo "Age: ${student[age]}"
