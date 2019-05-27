#!/bin/bash
file=$1

if [ -e "${file}" ]
then
   echo "File is existing "
   if [ -s "${file}" ]
   then
      echo "File is having content"
   else
      echo "No content in a file"
   fi
else
  echo "File is not existing"
fi
