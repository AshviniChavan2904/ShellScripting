#!/bin/bash

#Declared an array
fruits=(Mongo Banana Pineapple 2 2.5)

#Retrieved each item in array
echo "The first item in fruits is: ${fruits[0]}"
echo "The second item in fruits is: ${fruits[1]}"
echo "The third item in fruits is: ${fruits[2]}"

#To print in reverse order
echo "The last item in fruits is: ${fruits[-1]}"
echo "The second last item in fruits is: ${fruits[-2]}"
echo "The first item in fruits is: ${fruits[-3]}"

#Retrive all items in array
echo "The items in array: ${fruits[*]}"
echo "The items in array: ${fruits[@]}"

#To find the length of an array
echo "The length of array is: ${#fruits[@]}"

#To print only particular items in array
echo "Printing first two items in array: ${fruits[*]:0:3}"

#To insert new items in array
fruits+=(Orange Grapes Kiwi)
echo "Display values of fruits: ${fruits[@]}"

#To replace particular item in array
fruits[2]='Apple'
echo "Display values of fruits: ${fruits[@]}"

#To delete particular item in array
unset fruits[4]
echo "Display values of fruits: ${fruits[@]}"

#To print all items in array
for i in ${fruits[@]}
do
	echo "Item is: $i"
done
