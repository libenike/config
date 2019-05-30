#!/usr/bin/bash
user_path=$(realpath ~)

file=$(realpath init.vim)
path=$user_path/.config/nvim
mkdir --parents $path
ln -s $file $path
