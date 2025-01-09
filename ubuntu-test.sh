#!/bin/bash
sudo apt update
sudo apt upgrade
sudo apt install ssh
sudo systemctl enable ssh
sudo apt install net-tools
sudo apt install curl
sudo apt install git
sudo apt install npm
sudo apt install docker.io
sudo apt install apache2
sudo ufw allow in "Apache"
sudo ufw allow 80,443,3000,996,7946,4789,2377/tcp; ufw allow 7946,4789,2377/udp;
sudo apt install mysql-server
sudo mysql <<EOF
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
exit
EOF
sudo mysql_secure_installation <<EOF
y
1
y
EOF
sudo apt install php libapache2-mod-php php-mysql
sudo systemctl restart apache2
docker run -p 80:80 -p 443:443 -p 3000:3000 -e ACCEPTED_TERMS=true -v /var/run/docker.sock:/var/run/docker.sock -v /captain:/captain caprover/caprover
npm install -g caprover
caprover serversetup
