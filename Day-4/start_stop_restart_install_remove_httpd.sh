#!/bin/bash
#Below is help to run this shell script
if [ $# -ne 1 ]
then
  echo "Please run this shell script as follows"
  echo "$0 <status|start|stop|restart|install|remove>"
  exit 
fi

echo "status start stop restart install remove" | grep -w $1 1>/dev/null 2>&1
if [ $? -ne 0 ]
then
   echo -e "Please pass:\n status start or stop or restart or install or remove"
   exit
fi
echo "Now we are working on your option: $1"

if [ "$1" == "status"  ]
then
  echo "The current status is: $(systemctl status httpd|grep Active: | awk '{print $2}')"
fi

if [ "$1" == "start" ]
then
   echo "Starting httpd ......"
   sleep 2
   sudo systemctl start httpd 
   if [ $? -eq 0 ]
   then
     echo "Succsfully started httpd"
   else
     echo "Unable to start httpd, please check it"
   fi

   echo "Started httpd command"
fi



