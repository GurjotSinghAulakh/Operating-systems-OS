#! /bin/bash

# It checks if the variable SHELL is empty, if it is, it prints "SHELL er udefinert", if not, it
# prints the value of SHELL.
if [ -z "$SHELL" ];
    then
    echo "SHELL er udefinert";
else
    echo "$SHELL";
fi