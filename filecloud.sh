#!/bin/bash 

# install filecloud

curl -fsSL https://pgp.mongodb.com/server-6.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-6.0.gpg --dearmor
 
curl -fsSL https://repo.filecloudlabs.com/static/pgp/filecloud.asc | sudo gpg -o /usr/share/keyrings/filecloud.gpg --dearmor
 
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-6.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
 
echo "deb [ arch=amd64 signed-by=/usr/share/keyrings/filecloud.gpg ] https://repo.filecloudlabs.com/apt/ubuntu jammy/filecloud/23.232 main" | sudo tee /etc/apt/sources.list.d/filecloud.list
 
apt-get update -y
 
apt-get install apache2 mongodb-org pigz -y
apt install -y --no-install-recommends php8.2*
ACCEPT_EULA=Y  apt-get install filecloud -y
