#!/bin/bash

for each_num in $(seq 1 200)
do
 echo $each_num
 if [ $each_num -ge 80 ]
 then
   break
 fi

done
