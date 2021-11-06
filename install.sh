#!/bin/bash
sudo timedatectl set-timezone Europe/Berlin
sudo apt update && sudo apt upgrade
sudo apt install net-tools mc docker cockpit
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
