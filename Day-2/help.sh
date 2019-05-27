#!/bin/bash

if [ $# -ne 1 ]
then
   echo "Please run this shell script as follow"
   echo "$0 <any_pkg_name>"
   exit
fi


req_pkg=$1
yum install $req_pkg -y
