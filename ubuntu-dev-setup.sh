#!/bin/bash
sudo apt update
sudo apt upgrade <<EOF
y
EOF
sudo add-apt-repository universe
sudo apt install gnome-tweaks <<EOF
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
sudo apt install chromium <<EOF
y
EOF
sudo apt install gparted <<EOF
y
EOF
sudo apt install libnss3-tools <<EOF
y
EOF
sudo apt install apache2 <<EOF
y
EOF
sudo apt install php <<EOF
y
EOF
sudo apt install php-dom
sudo apt install composer <<EOF
y
EOF
sudo snap install authpass <<EOF
y
EOF
sudo snap install --classic phpstorm
mkdir ~/Projects
curl -O http://launchpadlibrarian.net/648013231/libtinfo5_6.4-2_amd64.deb
sudo dpkg -i libtinfo5_6.4-2_amd64.deb
curl -O http://launchpadlibrarian.net/648013227/libncurses5_6.4-2_amd64.deb
sudo dpkg -i libncurses5_6.4-2_amd64.deb
curl -O http://launchpadlibrarian.net/646633572/libaio1_0.3.113-4_amd64.deb
sudo dpkg -i libaio1_0.3.113-4_amd64.deb
curl -O https://cdn.localwp.com/releases-stable/9.2.0+6762/local-9.2.0-linux.deb
sudo dpkg -i cdn.localwp.com/releases-stable/9.2.0+6762/local-9.2.0-linux.deb
