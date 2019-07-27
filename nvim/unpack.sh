#!/bin/bash
script_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $script_path

user_path=$(realpath ~)
file=$script_path/init.vim
path=$user_path/.config/nvim
mkdir --parents $path
ln -s $file $path
