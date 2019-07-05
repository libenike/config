#!/bin/bash

script_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

for module in $(ls -d $script_path)
do
    "$module"unpack.sh
done
