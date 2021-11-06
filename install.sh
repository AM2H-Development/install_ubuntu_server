#!/bin/bash
sudo timedatectl set-timezone Europe/Berlin
sudo apt update && sudo apt upgrade
sudo apt install net-tools mc docker
