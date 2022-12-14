#! /bin/bash

# Setting the variable home to the value of the current user's home directory.
home=~

# Checking if the directory /www/bilder exists. If it does not exist, it creates it.
if [ ! -d $home/www/bilder ]; then
   mkdir -p $home/www/bilder
fi

# Changing the permissions of the directories www and bilder to 755.
chmod 755 $home/www
chmod 755 $home/www/bilder


# Changing the permissions of all files in the directories www and bilder to 644.
for file in $home/www/* $home/www/bilder/*
do
   if [ -f $file ]; then
      chmod 644 $file
   fi
done

