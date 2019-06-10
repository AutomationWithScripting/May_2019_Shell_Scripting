#!/bin/bash

jen_url="http://mirrors.jenkins.io/war-stable/latest/jenkins.war"
tom_url="http://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.20/bin/apache-tomcat-9.0.20-deployer.tar.gz"
log_file="jen_tom_download.log"

<< mycom
download_jenkins() {
      echo "Downloading jenkins ..." | tee -a $log_file
      wget $jen_url
      if [ $? -eq 0 ]
      then
        echo "Successfully downloaded jenkins" | tee -a $log_file
      else
        echo "Jnekins download is failed, Please check it manually" | tee -a $log_file
      fi
}

downalod_tomcat() {
    echo "Downloading Tomcat ..." | tee -a $log_file
    wget $tom_url
    if [ $? -eq 0 ]
    then
      echo "Successfully downloaded Tomcat" | tee -a $log_file
    else
      echo "Tomcat download is failed, Please check it manually" | tee -a $log_file
    fi
}
mycom
#downalod_tomcat









download_url() {

  app_name=$1
  req_url=$2
  echo "Downloading ${app_name} ..." | tee -a $log_file
  wget $req_url
  if [ $? -eq 0 ]
  then
      echo "Successfully downloaded ${app_name}" | tee -a $log_file
      exit
      return 0
  else
        echo "${app_name} download is failed, Please check it manually" | tee -a $log_file
        return 1
  fi
 }

jen_url="http://mirrors.jenkins.io/war-stable/latest/jenkins.war"
tom_url="http://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.20/bin/apache-tomcat-9.0.20-deployer.tar.gz"
log_file="jen_tom_download.log"

download_url "Jenkins" $jen_url
download_url "Tomcat" $tom_url





