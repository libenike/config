#!/bin/bash

script_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $script_path

for module in $(ls -d $script_path/*/)
do
    unpack_script="$module"unpack.sh
    if test -f $unpack_script; then
        $unpack_script
    fi
done
