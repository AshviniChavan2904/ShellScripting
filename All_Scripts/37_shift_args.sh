#!/bin/bash

#Normal shift example
echo "username: $1"
shift
echo "displayname: $@"

#Example with function

show_args() {
	while [[ $# -gt 0 ]]
	do
		echo "Argument: $1"
		shift
	done
}

show_args a b c
