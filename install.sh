#!/bin/bash

wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | sudo apt-key add -
sudo apt-add-repository 'deb https://apt.kitware.com/ubuntu/ bionic main'
sudo apt-get update 
sudo add-apt-repository ppa:neovim-ppa/unstable

sudo apt-get update

sudo apt-get install clang-tools-8
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-8 100
sudo apt-get install build-essential
sudo apt-get install tmux
sudo apt-get install apt-transport-https ca-certificates gnupg software-properties-common wget
sudo apt-get install cmake
sudo apt-get install neovim
sudo apt-get install python
sudo apt-get install python-pip
pip install --user pynvim
sudo apt-get install python3
sudo apt-get install python3-pip
pip3 install --user pynvim
