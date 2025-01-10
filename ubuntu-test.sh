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
curl -sS https://installer.cloudpanel.io/ce/v2/install.sh -o install.sh; \
echo "a3ba69a8102345127b4ae0e28cfe89daca675cbc63cd39225133cdd2fa02ad36 install.sh" | \
sha256sum -c && sudo bash install.sh
