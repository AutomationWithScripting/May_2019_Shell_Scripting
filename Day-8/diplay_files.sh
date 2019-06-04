#!/bin/bash

read -p "Enter your path: " files_path

if [ -e "${files_path}" ]
then

  for each_file in  $(ls ${files_path})
  do
    each_file_path=${files_path}/${each_file}
    if [ -f "${each_file_path}" ]
    then
        echo "The file name is: $each_file_path"
    fi
  done
else
  echo "Invalid path"
fi
