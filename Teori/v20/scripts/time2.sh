#! /bin/bash

# Converting the first argument to seconds.
fra=$(date -d $1 +%s)

# Converting the second argument to seconds.
til=$(date -d $2 +%s)

# Subtracting the two arguments.
diff=$(($til - $fra))

# Converting the difference between the two arguments to a time format.
diffTMS=$(date -d@$diff -u +%H:%M:%S)

# Printing the difference between the two arguments.
echo "$diffTMS"