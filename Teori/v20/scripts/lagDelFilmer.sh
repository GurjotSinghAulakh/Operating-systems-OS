#! /bin/bash

# Setting the variable video to the first argument.
video=$1

# Taking the first argument and removing the .mp4 extension.
vid=$(basename -s .mp4 $1)

# Shift is shifting the arguments one step to the left.
shift

# Setting the variable part to 0.
part=0

# Taking the arguments and putting them into the fromTo.sh script.
while [ $# -gt 0 ] # Saa lenge det er noe i $*
do
    start=$1
    shift
    stop=$2

    toSec=$(date -d "$stop" "+%s")
    fromSec=$(date -d "$stop" "+%s")
    diffSec=$(($toSec - $fromSec))
    diff=$(date -d@$diffSec -u +%H:%M:%S)
    ((part++))
    ./fromTo.sh $video $vid$part.mp4 $start $diff
    shift # Skyver ut $1 og legger neste argument i $1
done