#!/bin/bash
addition() {
  a=$1
  b=$2
  result=$((a+b))
  echo "$result"
}

sum=$(addition 4 6)

echo "The result is: $sum"
