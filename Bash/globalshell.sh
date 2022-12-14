#! /bin/bash

# Checking if the variable SHELL is defined. If it is, it prints the value of SHELL. If it is not, it
# prints "SHELL ikke definert".

if [ "$SHELL" != "" ]
then
     echo SHELL er definert til $SHELL
else
     echo "SHELL ikke definert"
fi