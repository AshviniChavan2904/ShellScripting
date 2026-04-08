#!/bin/bash

#Way1

#Define a function
function banner {
	echo "---------------------------"
	echo "**********Welcome**********"
	echo "---------------------------"
}

#Call a function
banner

#Way2

#Define a function
banner() {
	echo "---------------------------"
	echo "**********Welcome**********"
	echo "---------------------------"
}

#Call a function
banner
