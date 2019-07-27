#!/bin/bash
script_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $script_path

user_path=$(realpath ~)
file=$script_path/gitconfig
path=$user_path/.gitconfig
ln -s -T $file $path
