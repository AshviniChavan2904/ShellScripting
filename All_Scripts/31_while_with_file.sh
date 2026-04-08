#!/bin/bash

cut -d ":" -f 1 /etc/passwd > /tmp/user_list.txt

while read username
do
	echo $username
done  <  /tmp/user_list.txt
