#!/bin/sh
sudo apt install curl

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo apt-get install -y uidmap
dockerd-rootless-setuptool.sh install

cat  << EOS >> ~/.bashrc
export PATH=/usr/bin:\$PATH
export DOCKER_HOST=unix:///run/user/1000/docker.sock
EOS
