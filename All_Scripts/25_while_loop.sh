#!/bin/bash

while true
do
	read -p "Enter your name: " name
	if [[ -n $name ]]
	then
		echo "Hello, $name"
	else
		exit
	fi
done
