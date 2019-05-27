#!/bin/bash

#req_pkg="httpd"
#read -p "Enter pkg name: " req_pkg
req_pkg=$1
echo "Installing ${req_pkg} server....."
yum install ${req_pkg} -y

echo -e "\033[0;31mInstalled ${req_pkg} server\033[0m"
#--------------------------------
