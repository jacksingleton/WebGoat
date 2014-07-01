#!/bin/bash

sudo apt-get update
sudo apt-get -y install openjdk-6-jdk maven2

cd /vagrant
mvn war:war

echo -e "\nWebGoat is almost ready for sacrifice:"
echo "- vagrant ssh -c 'cd /vagrant && mvn tomcat:run-war-only'"
echo "- browse to http://localhost:8080/WebGoat/attack"
echo "- login with guest/guest"
