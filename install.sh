sudo dnf check-update
sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin git
sudo systemctl start docker
sudo systemctl enable docker
docker version
docker compose version
git clone https://github.com/derFinlay/test.git
cd test/obsidian
docker compose up -d 