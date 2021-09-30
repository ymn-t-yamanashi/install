#!/bin/sh
sudo apt update
sudo apt install -y nodejs npm inotify-tools
sudo npm install n -g
sudo n stable
sudo apt purge -y nodejs npm
mix archive.install hex phx_new
