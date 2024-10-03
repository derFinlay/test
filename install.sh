sudo dnf check-update
sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf install docker-compose-plugin
docker compose version
