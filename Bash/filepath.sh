#! /bin/bash

# Assigning the first argument to the variable streng.
streng=$1;

# The code is checking if the file exists and if it does, it checks if the path is absolute or
# relative.

if [ -f $streng ]
then
   start=${streng:0:1} #${variabel:offset:length} to extract a character from a string
   if [ "$start" = "/" ]
   then
    echo Absolutt path
   else
    echo Relativ path
   fi
else
   echo "Finner ikke filen $streng. Hvis den eksisterer er feil path angitt"
fi