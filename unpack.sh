#!/usr/bin/bash

for module in $(ls -d */)
do
    "$module"unpack.sh
done
