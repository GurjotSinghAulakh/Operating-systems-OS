#! /bin/bash

nummer=0

# Reading the file line by line and printing the line number and the line.
while read line
do
   ((nummer++))
   echo Linje nummer ${nummer}: $line
done < ./ressurser/tekst.txt

echo Ferdig! 