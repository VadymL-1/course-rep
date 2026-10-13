#!/bin/bash

set -eu

file="$1"

if [[ ! -f "$file" ]]; then
    echo "Currenut file does not exist" 
fi

numb=$(wc -l < "$file")

echo "Number of lines in $file is $numb"