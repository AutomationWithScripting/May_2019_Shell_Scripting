#!/bin/bash
<< mycom
for each in 1 2 3 4 5 6 7 8 9 10
do
  echo "Welcome to Shell Scripting Day-$each"
  echo "From DoWithpython Tech"
done
mycom

<< mynew
for each in $(seq 1 100)
do

  echo "$each"

done
mynew

<< curlbrace

for char in {A..Z}
do

  echo "$char"


done

curlbrace

for (( i=0; i<=10; i++ ))
do
  echo "$i"
   
done














