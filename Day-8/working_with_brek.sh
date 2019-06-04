#!/bin/bash

line_no=1
while read line 
do
  echo $line

  if [ $line_no -eq 2 ]
  then 
      break
  fi
  line_no=$((line_no+1))  
 
done < nefile.txt
