#! /bin/bash

# Searching for a string in all files in the current directory and all subdirectories.

for fil in $(find .)
do
   if [ -f $fil ]
   then
      res=$(grep $1 $fil)
      if [ "$res" != "" ]
      then
          echo "######### Fant $1 i fil $fil i følgende linje(r):"
          grep $1 $fil
      fi
   fi
done