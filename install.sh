#!/bin/bash

wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | sudo apt-key add -
sudo apt-add-repository 'deb https://apt.kitware.com/ubuntu/ bionic main'
sudo add-apt-repository ppa:neovim-ppa/stable

sudo apt-get update

sudo apt-get -y install build-essential clang-tools-8 tmux apt-transport-https ca-certificates gnupg software-properties-common wget cmake neovim python python-pip python3 python3-pip

pip install --user pynvim
pip3 install --user pynvim

sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-8 100
