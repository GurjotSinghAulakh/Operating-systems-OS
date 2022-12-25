#! /bin/bash

# Checking if there are any running containers. 
# If there are, it will stop them.
if [ $(docker ps | wc -l) -gt 1 ]; then
   docker stop $(docker ps -aq) 
fi

# Checking if there are any containers that are not 
# running. If there are, it will remove them.
if [ $(docker ps -a | wc -l) -gt 1 ]; then
   docker rm $(docker ps -aq) 
fi

# Checking if there are any images. 
# If there are, it will remove them.
if [ $(docker images | wc -l) -gt 1 ]; then
   docker rmi $(docker images -q)
fi

# Checking if there are any volumes.
# If there are, it will remove them.
if [ $(docker volume ls | wc -l) -gt 1 ]; then
   docker volume rm $(docker volume ls -q) 
fi

# Printing out a message to the console.
echo Docker er clean!