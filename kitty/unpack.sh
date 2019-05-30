#!/usr/bin/bash
user_path=$(realpath ~)

file=$(realpath kitty.conf)
path=$user_path/.config/kitty/
mkdir --parents $path
ln -s $file $path
