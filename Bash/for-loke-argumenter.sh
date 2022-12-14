#! /bin/bash

# Checking if the number of arguments is less than 1. If it is, it will print "No arguments" and exit
# the script.
if [ $# -lt 1 ]; then
    echo No arguments
    exit 1 
fi

# Looping through the arguments and printing each one.
for arg in $*
do
  echo $arg was an argument
done

# Printing the total number of arguments.
echo total number: $#