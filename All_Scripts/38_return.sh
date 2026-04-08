#!/bin/bash

<<COMMENT
is_even() {
if (( $1 % 2 == 0 ))
then
return 0
else
return 1
fi
}
is_even 4
if [ $? -eq 0 ]; then
echo "Even number"
else
echo "Odd number"
fi
COMMENT

is_even() {
	if [[ $1%2 -eq 0 ]]
	then
		return 0
	else
		return 1
	fi
}

is_even 5

if [[ $? -eq 0 ]]
then
	echo "Number is even!"
else
	echo "Number is odd!!"
fi
