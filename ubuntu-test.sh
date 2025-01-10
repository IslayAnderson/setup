#!/bin/bash
sudo apt update
sudo apt upgrade <<EOF
y
EOF
sudo apt install ssh <<EOF
y
EOF
sudo systemctl enable ssh
sudo apt install net-tools <<EOF
y
EOF
sudo apt install curl <<EOF
y
EOF
sudo apt install git <<EOF
y
EOF
sudo apt install npm <<EOF
y
EOF
sudo apt install docker.io <<EOF
y
EOF
sudo apt install apache2 <<EOF
y
EOF
sudo apt install php libapache2-mod-php php-mysql
sudo systemctl restart apache2
sudo docker run -p 80:80 -p 443:443 -p 3000:3000 -e ACCEPTED_TERMS=true -v /var/run/docker.sock:/var/run/docker.sock -v /captain:/captain caprover/caprover
sudo npm install -g caprover
sudo caprover serversetup <<EOF
y
192.168.11.70
EOF
