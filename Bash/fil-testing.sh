#! /bin/bash

# Setting the variable fil to the first argument.
fil=$1


# It checks if the file is a file or a directory.
if [ -f "$fil" ]; then
  echo $fil er en fil
elif [ -d "$fil" ]; then
  echo $fil er en mappe
else
  echo $fil er hverken fil eller mappe
fi