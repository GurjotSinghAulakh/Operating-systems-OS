#! /bin/bash

# A while loop that will print out the arguments that are passed to the script.
while [ $# -gt 0 ] # As long as there is something in $*
do
  echo "arg: $1"
  shift # Pushes out $1 and puts the next argument in $1
done