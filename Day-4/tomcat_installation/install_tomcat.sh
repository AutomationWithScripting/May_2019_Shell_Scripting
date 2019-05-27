#!/bin/bash
source ./requirements.txt
tomcat_url="http://mirrors.estointernet.in/apache/tomcat/tomcat-${tomcat_major}/v${req_tomcat_ver}/bin/apache-tomcat-${req_tomcat_ver}.tar.gz"

tomc_tar_gz=$(echo ${tomcat_url}|  awk -F / '{print $NF}')
tomcat_file=$(echo ${tomc_tar_gz%.tar.gz})
echo -e "Downloading tomcat using url: \n $tomcat_url"
<< mycom
if [ -e "${tomc_tar_gz}" ]
then
    echo "Already there"
else
   wget ${tomcat_url}
fi
mycom

if [ ! -e "${tomc_tar_gz}" ]
then
    wget ${tomcat_url}
fi
if [ $? -eq 0 ]
then
  echo "Successfully downloaded tomcat version: ${req_tomcat_ver}"
  echo "Extracting downloaded tomcat: ${tomc_tar_gz}"
  tar -xvzf ${tomc_tar_gz}
  if [ $? -eq 0 ]
  then
    echo "Succssfully extracted download ${tomc_tar_gz} as ${tomcat_file}"
  else
    echo "Unable to extract please check it and retry"
  fi
else
  echo "Unable to download required tomcat ${req_tomcat_ver}"
  echo "Please check your url and retry"
  exit 1
fi



