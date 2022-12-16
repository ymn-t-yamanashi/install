#!/bin/sh
sudo apt install curl -y

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo apt-get install -y uidmap
dockerd-rootless-setuptool.sh install

cat  << EOS >> ~/.bashrc
export PATH=/usr/bin:\$PATH
export DOCKER_HOST=unix:///run/user/1000/docker.sock
EOS

curl -L https://raw.githubusercontent.com/docker/compose-cli/main/scripts/install/install_linux.sh | sh
mkdir -p ~/.docker/cli-plugins/
curl -SL https://github.com/docker/compose/releases/download/v2.0.0/docker-compose-linux-amd64 -o ~/.docker/cli-plugins/docker-compose
chmod +x ~/.docker/cli-plugins/docker-compose
