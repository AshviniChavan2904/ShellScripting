#!/bin/bash

course='Shell Scripting'
append='Tutorial Course'
resulting_string="$course $append"

echo "$course"

#To find the length of string
echo "Length: ${#course}"

#To concatenate
echo "Concatenation: $resulting_string"

#Lowercase
echo "Lowercase: ${resulting_string,,}"

#Upperrcase
echo "Uppercase: ${resulting_string^^}"

#Substring
echo "Substring: ${resulting_string:0:5}"

#Replace string
echo "Replace:${resulting_string/'Shell Scripting'/Linux}"

#Remove particular part of string
file='devops.txt'
echo "${file%.txt}"

#To compare string
if [[ "$course" = "Shell Scripting" ]]
then
	echo "Strings are equal"
fi

<<COMMENT
#Check empty 
read -p "Enter your name: " name
if [[ -z "$name" ]]
then
	echo "You have not provided your name, Kindly enter your name!"
else
	echo "Hello, $name"
fi

#Check not empty
read -p "Enter your name: " name
if [[ -n "$name" ]]
then
	echo "Hello, $name"
else
	echo "You have not entered anything"
fi

#Pattern matching
user_name='Chavan Ashvini'

if [[ $user_name == A* ]]
then
	echo "Your name is starting with A.."
else
	echo "Not starting with A"
fi
COMMENT

server_name="192.168.31.10,web2,web3"
IFS=',' read -ra server_list <<< $server_name
echo "${server_list[@]}"

for i in ${server_list[@]}
do
	ping -c 2 $i
done
