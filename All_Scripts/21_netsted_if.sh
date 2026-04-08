#!/bin/bash

if [[ -f "env.sh" ]]
then
	if [[ -r "env.sh" ]]
	then
		echo "File exists with read permisssion!"
	else
		echo "File exists but does not have read permission!"
	fi
else
	echo "File does not exists!"
fi
	
