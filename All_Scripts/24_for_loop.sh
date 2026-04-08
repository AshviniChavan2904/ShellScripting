#!/bin/bash

<<COMMENT
#Loop on numbers
for i in 1 2 3 4 5
do
	echo $i
done

#Loop on string
for name in ashvini rahul rakesh vipin karan shalini
do
	echo "Name is: $name"
done

#Loop on range of values
for num in {1..10}
do
	echo $num
done

#Loop in reverse order using range
for num in {z..a}
do
	echo $num
done

#Print array using loop
fruits=(mango apple kiwi pineapple grapes banana)

for fruit in ${fruits[@]}
do
	echo "Fruit is: $fruit"
done
COMMENT

for (( i=10;i>=1;i-- ))
do
	echo $i
done
