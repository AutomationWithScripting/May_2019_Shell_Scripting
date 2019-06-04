#!/bin/bash


for each_cmd in $(cat list_commands.txt)
do
  ${each_cmd}
  sleep 1
done
