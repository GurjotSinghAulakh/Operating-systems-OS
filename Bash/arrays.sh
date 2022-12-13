#! /bin/bash

tall[0]=null
tall[1]=1
tall[2]=5
tall[3]=3

# Return the number of elements in the array.
echo "Antall elementer: ${#tall[@]}" 


# Printing out the elements in the array.
for t in "${tall[@]}" 
do
  echo "$t"
done

# Printing out the indices in the array.
for t in "${!tall[@]}" 
do
  echo "Tall nr $t er ${tall[$t]}"
done

navn=("Per" "Ola" "Nora" "Julie")

# Printing out the elements in the array.
for (( i = 0; i < ${#navn[@]}; i++ )); do
    echo "${navn[$i]}"
done

array=( $( seq 200 55 1000 ) )

# Printing out the elements in the array.
for (( i = 0; i < ${#array[@]}; i++ )); do
   echo ${array[$i]}
done