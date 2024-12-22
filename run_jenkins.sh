#!/bin/bash

echo "run_jenkins.sh  <imageName>"

if [[ ! -n $1 ]] ;
then 
	echo "Please pass imagename for jenkins as parameter\n run_jenkins.sh <imageName>"
else
	docker run --privileged -u 0 -p 8080:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock $1
fi
