#!/bin/bash

logger -t start "Script Start"
read -p "Enter your username to create: " username
cat /etc/passwd | grep -i $username > /dev/null

if [[ $? -eq 0 ]]
then
	echo "The user already exists!!"
	echo "Below are the user details:"
	cat /etc/passwd | grep -wi $username 
else	
	echo "Creating user.."
	useradd $username
        echo "Below are the user details:"
        cat /etc/passwd | grep -wi $username
fi
