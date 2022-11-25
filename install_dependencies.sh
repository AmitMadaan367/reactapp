#!/bin/bash

# this file is being executed in /opt/codedeploy-agent/deployment-root/47../<deployment_id>/

#stdout logs of this process executing can be found in /opt/codedeploy-agent/deployment-root/47../<deployment_id>/logs/scripts.log

# here we update the server and install node and npm
echo installing dependencies
sudo apt-get update -y
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt-get install nodejs -y
sudo apt-get -y install npm
sudo npm install -g npm -y




# install the application using npm
# we need to traverse to where the application bundle is copied too.
echo installing application with npm
cd /var/www/
sudo rm -rf node_modules
sudo npm install
