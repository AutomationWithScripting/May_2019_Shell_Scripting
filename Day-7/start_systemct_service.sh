#!/bin/bash


for each_service in splunk httpd tomcat nginx newrelic jenkins 
do
 echo "Now wroking on $each_service"
 sudo systemctl start $each_service
 if [ $? -eq 0 ]
 then
    echo "Successfully started ${each_service}"
 fi
done
