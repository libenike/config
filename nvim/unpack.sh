#!/bin/bash
user_path=$(realpath ~)
script_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
file=$script_path/init.vim
path=$user_path/.config/nvim
mkdir --parents $path
ln -s $file $path
