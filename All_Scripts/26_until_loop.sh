#!/bin/bash

check=11
num=1 

until [[ $num -ge $check ]]
do
	echo "$num"
	((num++))
done
