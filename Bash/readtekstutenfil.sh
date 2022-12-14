#! /bin/bash

teller=0

# Reading a file line by line and printing the line number and the line.
while read line
do
   ((teller++))
   echo Linje nr $teller: $line
done

echo Ferdig!