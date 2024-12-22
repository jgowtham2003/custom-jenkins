#!/bin/bash

echo "build_jenkins.sh  <imageName>"

if [[ ! -n $1 ]] ;
then 
	echo "Please pass imagename for jenkins as parameter\n build_jenkins.sh <imageName>"
else
	echo "Creating  image $1"
	docker  build -t $1 .
fi
