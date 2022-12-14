#! /bin/bash

# Checking if the first argument is a file. If it is, it will print out that it is a file. Then it
# will check if the first character of the file is a "/". If it is, it will print out that it is an
# absolute path. If not, it will print out that it is a relative path. If the first argument is not a
# file, it will print out that it is not a file.

if [ -f "$1" ]
then
    echo "$1" er en fil.
var=$1

if [ "${var:0:1}" = "/" ]
then
    echo Filen er gitt med absolutt path
else
    echo Filen er gitt med realtiv path
fi
else
    echo "$1" er ikke en fil
fi