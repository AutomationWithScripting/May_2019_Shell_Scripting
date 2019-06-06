#!/bin/bash


echo $*
echo $@

echo "Below is with \$*"
for each in "$*"
do
  echo $each

done



echo "Below is with \$@"
for each in "$@"
do
 echo $each

done
