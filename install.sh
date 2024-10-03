#!/bin/bash

#update system and install docker, compose and git
sudo dnf check-update
sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin git

#enable docker (autostart)
sudo systemctl start docker
sudo systemctl enable docker
docker version
docker compose version

#clone setup repo
mkdir setup
git clone https://github.com/derFinlay/test.git setup
cd setup

#Clone DDNS tool
mkdir temp
git clone https://github.com/derFinlay/cloudflare-ddns-updater temp
mv temp/* ddns
rm -rf temp

mkdir -p obsidian/data

#Start all Systems
docker compose up -d