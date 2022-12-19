#! /bin/bash

# Creating an array of 500000 elements and then summing them.
array[0]=0
sum=0

for i in {1..500000}
do
   array[$i]=$i
done

for i in "${!array[@]}"
do
   ((sum += i))
done

echo $sum