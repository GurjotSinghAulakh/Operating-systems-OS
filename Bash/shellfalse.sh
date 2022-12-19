#! /bin/bash

# Setting the Internal Field Separator to `:`
IFS=:
# shellcheck disable=SC2034
# shellcheck disable=SC2162

# Reading the /etc/passwd file and checking if the shell is /bin/false. If it is, it will unset the
# IFS and read the ps aux file.
while read brnavn x ID GR NAVN HOME SHELL
do
if [ "$SHELL" = "/bin/false" ] then

    unset IFS
    # shellcheck disable=SC2162
    ps aux | while read bruker PID x x x x x x x x prog
do

# Checking if the user name is the same as the user name in the ps aux file. If it is, it will print
# the user name and the PID.
if [ "$brnavn" = "$bruker" ] then
    echo "$brnavn har pid=$PID"
fi
done

# Setting the IFS to `:` and then it is reading the `/etc/passwd` file.
IFS=:
fi
done < /etc/passwd