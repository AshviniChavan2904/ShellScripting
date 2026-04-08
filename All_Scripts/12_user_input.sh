#!/bin/bash

<<COMMENT
echo "Enter your name: "
read name
echo "Hello, $name"

read -p "Enter your age: " age
echo "Your age is $age"

read -p "Enter your name and age with space separated values: " name age
echo "Hello, $name. You are $age years old!"

read -s -p "Enter your password: " password
echo
echo "You have entered $password"

read -n 6 -p "Enter your six-digit code:" code
echo
echo "$code"

read -t 10 -p "Enter your password: " password
echo

IFS="," read -a server_list -p "Enter the server name with comma separated values: " server_name
echo
echo "${server_list[*]}"
echo "${server_list[0]}"
echo "${server_list[1]}"
echo "${server_list[2]}"
echo "${server_list[3]}"

read -p "Enter your name: " name
name=${name:-Guest}
echo "Hello, $name"
COMMENT

read -p "Enter your command to execute: " cmd
echo "$($cmd)"
