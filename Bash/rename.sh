#! /bin/bash

# This is a check to see if the user has entered the correct number of arguments.
if [ $# -ne 2 ]
then
    echo "Syntaks: $0 fra-endelse til-endelse"
    exit
fi

# Assigning the first argument to the variable fra and the second argument to the variable til.
fra=$1
til=$2

# Looping through all the files with the extension  and renaming them to .
for fil in *.$fra
do
   if [ -f $fil ]
   then
      name=$(basename $fil .$fra)
      mv $fil $name.$til
      echo "Endrer $fil til $name.$til"
      found=true
   fi
done

# This is a check to see if the variable found is not true. If it is not true, it will print out the
# message "Fant ingen filer med filendelse ".
if [ ! $found ]
then
    echo "Fant ingen filer med filendelse $fra"
fi

# Eksempel på bruk
# $ ./rename.sh wav mp3
# Endrer fil.wav til fil.mp3
# Endrer fil2.wav til fil2.mp3