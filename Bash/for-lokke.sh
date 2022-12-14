#! /bin/bash

# A for loop that iterates over the values h1, h2 and h3.
for var in h1 h2 h3
do
  echo $var
done

# For loop as in java
# A for loop that iterates from 1 to 29.
for (( i=1;i<30;i++ ))
do
  echo "$i"
done


teller=0

# A while loop that iterates from 0 to 9.
while (( teller < 10))
do
   (( teller++ ))
   echo $teller
done

echo Ferdig!
