#!/bin/sh
sudo apt update
sudo apt install -y build-essential
sh chrome.sh
sh vscode.sh
sh vscode_ext.sh
sh docker.sh