#! /bin/bash

teller=0

# Checking if the variable teller is less than 10. If it is, it will print Hei, if not it will print Nei.
if ((teller < 10))
then
   echo Hei
else
   echo Nei
fi

# Checking if the number is even or not.
for ((i=0;i<10;i++))
do
   modulus=$((i % 2))
   if ((i == 0 ))
   then
      continue
   elif ((modulus == 0))
   then 
      echo $i er et partall
   fi
done

navn1="Per"
navn2="Per"

# Checking if the two variables are equal. If they are, it will print Navnene er like, if not it will
# print Navnene er ulike.
if [ $navn1 = $navn2 ]; then
   echo "Navnene er like"
else
   echo "Nanvnene er ulike"
fi

tall1=4
tall2=4

# Checking if the two variables tall1 and tall2 are equal. If they are, it will print
# Tallene er like, if not it will print Tallene er ulike.
if [ $tall1 -eq $tall2 ]; then
   echo "Tallene er like"
else
   echo "Tallene er ulike"
fi

# Checking if the number of parameters is equal to 1, if it is, it will print Det er en parameter.
# If the number of parameters is equal to 0, it will print Det er ingen parametere. If the number of parameters
# is greater than 1, it will print Det er $# parametere. If none of the above is true, it will print
# Her er det noe galt.
if [ $# -eq 1 ]; then
   echo "Det er en parameter"
elif [ $# -eq 0 ]; then
   echo "Det er ingen parametere"
elif [ $# > 1 ]; then
   echo "Det er $# parametere"
else
   echo "Her er det noe galt"
fi