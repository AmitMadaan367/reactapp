#!/bin/bash
echo starting server

# here we just use npm to run the build
cd /var/www/
sudo npm install -g npm -y

sudo rm -r node_modules

sudo npm install

echo building application...

# start the application with pm2
echo starting application...
#sudo pm2 start npm -- run production

sudo npm start &
