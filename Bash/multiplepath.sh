#! /bin/bash

# shellcheck disable=SC2048
# Checking if the file is a file or not.
for var in $*
do
if [ -f "$var" ]
then

# shellcheck disable=SC2086
echo $var er en fil.

# Checking if the file is given with absolute path or relative path.
if [ "${var:0:1}" = "/" ]
then
echo Filen er gitt med absolutt path
else
echo Filen er gitt med realtiv path
fi
else
echo "$var" er ikke en fil
fi
done