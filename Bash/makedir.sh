#! /bin/bash

# Checking if the directory exists, if it does not exist it will create the directory and create two
# files in it. Then it will ask if you want to create a new directory, if you answer yes it will
# create a new directory and create a file in it. If you answer no it will just exit. If the directory
# already exists it will just say that it already exists.

if [ ! -d $1 ]; then
   echo "Oppretter mappen!"
   mkdir $1
   cd $1
   touch fil1.txt
   touch fil2.txt
   echo "Opprette ny mappe? (y/n): "
   read line
   if [ $line = "y" ]; then
      echo "Hva skal mappen hete?: "
      read line
      mkdir $line
      cd $line
      touch fil3.txt
   else
      echo "Den er grei. Avslutter!"
   fi
else
   echo "Mappen eksisterer allerede"
fi