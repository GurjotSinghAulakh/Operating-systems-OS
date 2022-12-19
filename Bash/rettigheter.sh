#! /bin/bash

# It checks if the folder ~/www exists, if it does it changes the permissions of all files in the
# folder to 644, if it doesn't it creates the folder and sets the permissions to 755.
if [ -e ~/www ] then
    find ~/www -type f -name "*.*" -exec chmod 644 {} +
    echo "Rettighetene til filene i ~/www er endret til 644"
else
    mkdir ~/www
    chmod 755 ~/www
    echo "Opprettet ~/www og satt rettigheter til 755"
fi

# It checks if the folder ~/www/bilder exists, if it does it changes the permissions of all files in
# the folder to 644, if it doesn't it creates the folder and sets the permissions to 755.
if [ -e ~/www/bilder ] then
    find ~/www/bilder -type f -name "*.*" -exec chmod 644 {} +
    echo "Rettighetene til filene i ~/www/bilder er endret til 644"
else
    mkdir ~/www/bilder
    chmod 755 ~/www/bilder
    echo "Opprettet ~/www/bilder og satt rettigheter til 755"
fi