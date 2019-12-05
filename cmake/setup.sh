#!/bin/bash

script_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
build_path=$script_path/build
compile_commands_path=$build_path/compile_commands.json
link_compile_commands_path=$script_path/compile_commands.json

cmake -S . -B build \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
    &&
if test -e $link_compile_commands_path; then
    rm $link_compile_commands_path
fi \
    &&
if test -f $compile_commands_path; then
    ln -s $compile_commands_path $link_compile_commands_path
fi \
    &&
cmake --build build
