#! /bin/bash

# Setting the variables to 0.
(( dtot=0 ))
(( ftot=0 ))
(( ltot=0 ))

# Reading the output of the find command and then checking if it is a file, directory or link.
while read fil
do
    if [ -L "$fil" ]; then
           (( ltot += 1 ))
    elif [ -f "$fil" ]; then
           (( ftot += 1 ))
    elif [ -d "$fil" ]; then
           (( dtot += 1 ))
    fi

done < <(find .)

#Printing the number of files, directories and links.
echo Filer: "$ftot"
echo Kataloger: "$dtot"
echo Linker: "$ltot"