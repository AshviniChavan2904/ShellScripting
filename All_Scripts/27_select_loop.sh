#!/bin/bash

echo "*****Welcome to basic operation script*****"

select choice in "Print date" "Print current working directory" "Print current directory content" "Print the current username" "exit"
do
	case $choice in 
		"Print date") date;;
		"Print current working directory") pwd;;
		"Print current directory content") ls -l;;
		"Print the current username") echo "$USER";;
		"exit") exit;;
		*) echo "Invalid option";;
	esac
done
