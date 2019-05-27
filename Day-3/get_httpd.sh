#!/bin/bash
#httpd_st=$(systemctl status httpd|grep Active: | awk '{print $2}')
echo "The current status of httpd is: $(systemctl status httpd|grep Active: | awk '{print $2}')"
