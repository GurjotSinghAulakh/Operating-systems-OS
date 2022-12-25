#! /bin/bash

# Creating a directory for each of the letters a, b, and c.
for i in a b c
do
  mkdir ${i}dir
  mv ${i}* ${i}dir
done