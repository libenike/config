#!/bin/bash

wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | apt-key add -
add-apt-repository -y 'deb https://apt.kitware.com/ubuntu/ bionic main'
add-apt-repository -y ppa:neovim-ppa/stable

apt-get update

apt-get -y install build-essential clang-tools-8 tmux apt-transport-https ca-certificates gnupg software-properties-common wget cmake neovim python python-pip python3 python3-pip clang-format-9

pip install --user pynvim
pip3 install --user pynvim

update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-8 100
update-alternatives --install /usr/bin/clang-format clang-format /usr/bin/clang-format-9 100
