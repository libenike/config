#!/bin/bash
script_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $script_path

user_path=$(realpath ~)

file=$script_path/bash_aliases
path=$user_path/.bash_aliases
ln -s -T $file $path

file=$script_path/bashrc
path=$user_path/.bashrc
ln -s -T $file $path
