#! /bin/bash

# Converting the first argument to seconds.
fra=$(date -d $1 +%s)

# Converting the second argument to seconds.
til=$(date -d $2 +%s)

# Subtracting the two arguments.
diff=$(( $til - $fra ))

# It prints the result of the subtraction.
echo "$diff"