#!/bin/bash

<<COMMENT
echo "First argument: $1" 
echo "Second argument: $2" 
echo "Third argument: $3" 

echo "Print all arguments: $@"
echo "Total number of arguments: $#"
COMMENT

function banner {
	echo "---------------"
	echo "Welcome $1"
	echo "---------------"
}

banner ashvini
