#!/bin/bash
script_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $script_path

user_path=$(realpath ~)
file=$script_path/tmux.conf
path=$user_path/.tmux.conf
ln -s -T $file $path
