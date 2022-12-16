#!/bin/sh
sudo apt -y --fix-broken install build-essential autoconf m4 libncurses5-dev libwxgtk3.0-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev libssh-dev unixodbc-dev xsltproc fop libwxgtk-webview3.0-gtk3-dev
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git

asdf install erlang 25.0.4
asdf install elixir 1.13.4-otp-25
asdf global erlang 25.0.4
asdf global elixir 1.13.4-otp-25
