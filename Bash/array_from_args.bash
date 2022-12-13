#! /bin/bash

# This is the variable that will be used to keep track of the index of the array. 
# Note that the index of an array in bash starts at 0. 
counter=0

# This is the array that will be used to store the arguments passed to the script.
array=()

# This is the while loop that will be used to iterate through the arguments passed to the script.
# It will end when there are no more arguments to process.
while [ $1 > 0 ]; do

   # This is where the input arguments are being stored in the array. The variable $1 contains the 
   # first argument provided to the script. The variable $counter is the index of where the argument
   # will be stored in the array. 
   array[$counter]=$1

   # This is the increment operator for bash. It is used to increment the value of the 
   # variable $counter by 1. This is used to ensure that the next argument will be stored 
   # at the next index of the array.
   (( counter++ ))

   # This is a bash builtin that is used to shift the values of the input arguments. 
   # This is used to remove the first argument from the input argument list. This is 
   # used to ensure that the next argument will be stored in the variable $1.
   shift
done

# This is the echo command that is used to print the contents of the array.