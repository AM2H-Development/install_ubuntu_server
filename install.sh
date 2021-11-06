#!/bin/bash
sudo timedatectl set-timezone Europe/Berlin
sudo apt update && sudo apt upgrade
sudo apt install net-tools mc

sudo apt install cockpit cockpit-doc cockpit-docker cockpit-packagekit xdg-utils libparted-dev pcscd avahi-autoipd libteam-utils exfat-utils f2fs-tools nilfs-tools reiserfsprogs udftools udisks2-btrfs udisks2-lvm2 comgt wvdial wpagui libengine-pkcs11-openssl tuned
sudo apt install apt-transport-https ca-certificates curl software-properties-common

sudo apt remove docker docker-engine docker.io containerd runc
sudo rm -rf /etc/docker

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io
 
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
