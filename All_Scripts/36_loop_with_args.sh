#!/bin/bash

for server in $@
do
	ping -c2 $server
done
