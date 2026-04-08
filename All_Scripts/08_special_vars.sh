#!/bin/bash

<<COMMENT
echo "The name of my script file is: $0"
echo "Your firstname name is $1"
echo "Your lastname is $2"
echo "Your age is $3"
echo "The number of arguments are : $#"
echo "The value of all arguments are : $@"
COMMENT

echo "Enter your fullname:"
echo "Hello, $@"
