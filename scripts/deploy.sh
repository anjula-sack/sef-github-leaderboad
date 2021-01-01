#!/bin/bash
set -e
#ssh-keyscan -H $IP >> ~/.ssh/known_hosts
cd src/main/resources
# Replace environment variables in property files
cp application.properties.example application.properties
cp configprops.properties.example configprops.properties

cd ../../../
mvn clean install
