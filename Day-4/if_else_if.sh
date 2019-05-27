#!/bin/bash


if [ "$1" == "status"  ]
then
  echo "Finding status..."
elif [ "$1" == "start" ]
then
   echo "Starting "
elif [ "$1" == "start" ]
then
  echo "Starting"
elif [ "$1" == "stop" ]
then
  echo "Stopping ..."
elif [ "$1" == "reboot" ]
then
  echo "Restarting ..."
elif [ "$1" == "install" ]
then
  echo "Installing httpd"
elif [ "$1" == "remove" ]
then
  echo "Removing httpd"
else
  echo "Please pass valid action"
fi
