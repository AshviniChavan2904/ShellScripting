#!/bin/bash

<<COMMENT
#Using while
while true
do 
	echo "Hi"
	sleep 2s
done
COMMENT

for (( ;; ))
do
	echo "Hello"
	sleep 2s
done
