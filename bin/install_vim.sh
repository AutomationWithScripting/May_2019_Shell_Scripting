#!/bin/bash
wget --version 1>/dev/null 2>&1
if [ $? -ne 0 ]
then
 echo "Installing wget ...."
 sudo yum install wget -y
else
 echo "Wget is already installed"
fi
