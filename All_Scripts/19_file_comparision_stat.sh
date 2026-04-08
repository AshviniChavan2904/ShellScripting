#!/bin/bash

<<COMMENT
#File existence
if [[ -f "text.txt" ]]
then
	echo "File exists!"
else
	echo "File does not exists!"
fi

#Directory existence
if [[ -d "dummy" ]]
then
	echo "Directory exists!"
else
	echo "Directory does not exists!"
fi

#Check File is readable or not
if [[ -r "env.sh" ]]
then
	echo "File is readable!"
else
	echo "File is not readable!"
fi

#Check File is writeable or not
if [[ -w "env.sh" ]]
then
	echo "File is writeable!"
else
	echo "File is not writeable!"
fi

#Check File is executable or not
if [[ -x "env.sh" ]]
then
	echo "File is executable!"
else
	echo "File is not executable!"
fi

#Check File has content or not
if [[ -s "env.sh" ]]
then
	echo "File has some content"
else
	echo "File does not have any content"
fi
COMMENT

#Pattern check
if [[ "Pranay" == A* ]]
then
	echo "Starts with A!"
else
	echo "Does not starts with A!"
fi
