#! /bin/bash


# Setting the variables to 0.
(( dtot=0 ))
(( ftot=0 ))
(( ltot=0 ))

# Counting the number of files(-f), directories(-d) and links (-L) in the current directory.
for fil in $(find .)
do
    if [ -L "$fil" ]; then
           (( ltot += 1 ))
    elif [ -f "$fil" ]; then
           (( ftot += 1 ))
    elif [ -d "$fil" ]; then
           (( dtot += 1 ))
    fi
done

# Printing the number of files, directories and links in the current directory.
echo Filer: $ftot
echo Kataloger: $dtot
echo Linker: $ltot