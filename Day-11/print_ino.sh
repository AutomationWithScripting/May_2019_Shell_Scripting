#!/bin/bash

display() {
  echo "The first value is: $1"
  echo "The second value is: $2"
  return 4
}


a=5
b=6
display  $a $b
echo $?
x=8
y=9
display x y


#echo "$0"
#echo "$1"
