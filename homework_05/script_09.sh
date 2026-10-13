#!/bin/bash

set -eu

read -p "Enter file name: " file
if [[ ! -f "$file" ]]; then
echo "Unfortunately there is no file with this name"
exit 1
fi

cat "$file"