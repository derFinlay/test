#!/bin/bash

sudo dnf check-update
sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin git
sudo systemctl start docker
sudo systemctl enable docker
docker version
docker compose version
git clone https://github.com/derFinlay/test.git
cd test

for d in ./

do
    ( cd "$d" && pwd && docker compose up -d )
done