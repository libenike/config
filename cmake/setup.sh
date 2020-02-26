#!/bin/bash

script_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source_path=$script_path
build_path=$script_path/build
install_path=$script_path/install
compile_commands_path=$build_path/compile_commands.json
link_compile_commands_path=$script_path/compile_commands.json

cd $script_path

cmake -S $source_path -B $build_path \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
    -DCMAKE_BUILD_TYPE=Debug \
    &&
if test -e $link_compile_commands_path; then
    rm $link_compile_commands_path
fi \
    &&
if test -f $compile_commands_path; then
    ln -s $compile_commands_path $link_compile_commands_path
fi \
    &&
cmake --build $build_path \
    &&
cmake --install $build_path --prefix $install_path
