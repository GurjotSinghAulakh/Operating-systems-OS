#! /bin/bash

users(){
  date
  who
}

# Call a function AFTER declaration
users 

# A function that takes a user as an argument and checks if the user exists in the /etc/passwd file.
findUser(){
  echo "funk-args: $*"
  local bruker # Local variable
  bruker=$1

  funn=$(grep ^bruker /etc/passwd) # Global
  if [ "$funn" ]; then
      return 0 # OK
  fi
  return 1
}

# The main program

echo "Script args: $*"

# A for loop that takes the arguments from the command line and runs the findUser function on each
# argument.
for user in $*
do
  echo -e "\nLeter etter $user" # -e allows \n
  findUser $user
  if [ $? = 0 ] # Return Value from findUser in $?
  then
    echo "$user finnes"
    echo $funn # $funn is global
  else
    echo "$user finnes ikke"
  fi
done

echo -e "\nScript-arg: $*"