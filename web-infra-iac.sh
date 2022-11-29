#!/bin/bash

echo "Script to create a webserver on the vm"

apt-get update
apt-get upgrade -y

echo "Finished Updating packages"

apt-get install apache2 -y
echo "Apache 2 installed"
apt-get install unzip -y
cd /tmp

echo "Downloading html files"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main
echo "Copying html archives to apache2"
cp -R * /var/www/html/



