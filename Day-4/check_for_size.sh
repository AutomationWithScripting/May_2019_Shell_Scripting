#!/bin/bash


if [ -s x  ]
then
   echo "The file has content"
else
   echo "No contenct in file"
fi
echo "below is with -z"
if [ -z x ]
then
  echo "No contenct in file"
else
  echo "File has conent"
fi

