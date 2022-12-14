#! /bin/bash

regexp="ho"
teller=0

echo "Matcher $regexp"

# Reading the input from the user and checking if it matches the regexp.
while read line
do
    # The essential syntax is $line =~ $regexp where exactly what is in $regexp$ is matched, no more, no less.
  if [[ $line =~ $regexp ]]; then 
    echo "match!"
  fi

  ((teller++))

  if [ "$teller" -eq 4 ]; then
    echo "Avslutter!"
    exit 1
  fi
done