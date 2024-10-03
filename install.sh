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
git clone https://github.com/derFinlay/test.git services

cd services

#Clone DDNS tool
git clone https://github.com/derFinlay/cloudflare-ddns-updater ddns

#Start all Systems
docker stop $(docker ps -a -q)
docker system prune -a --volumes -f
docker compose build
docker compose up -d --force-recreate