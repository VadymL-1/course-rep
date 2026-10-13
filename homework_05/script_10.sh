#!/bin/bash

set -eu

echo "Start to monitore directory"

WATCH_DIR="/home/vadym/watch"

while true; do
    for file in "$WATCH_DIR"/*; do
    [[ -f "$file" ]] || continue #skip files that already exist
    [[ "$file" == *.back ]] && continue ##skip files that already with.back
    echo "File content: "
    cat -- "$file"
    mv -- "$file" "$file.back"
    done
sleep 5
done

#in origin file and unit file were named as watch.sh and watch.service