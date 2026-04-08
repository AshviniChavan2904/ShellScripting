#!/bin/bash

min=1
max=10
num=$(( min + RANDOM % (max - min + 1) ))
echo $num
