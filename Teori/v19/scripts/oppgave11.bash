#! /bin/bash

# Running the python script runML.py on all the files in the current directory that end in .cnf.
for fil in *.cnf
do
  python runML.py "$fil" &
done