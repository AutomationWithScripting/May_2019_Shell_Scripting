#!/bin/bash

read -p "Enter you action: " user_action


case $user_action in
   
  
   status)  which httpd 1>/dev/null 2>&1
            if [ $? -eq 0 ]
            then 
                 echo "Finding status" 
                 systemctl status httpd
            else
                 echo "No httpd found"
            fi
            ;;   
   start)   echo "starting httpd"
            ;;
   stop)    echo "stoping httpd"
            ;;
   *)       echo "Invalid option"
esac
