#!/bin/bash

set -eu

read -p "Enter a sentence: " sentence
reversed=""
for word in $sentence; do
    reversed="$word $reversed"
done

echo "$reversed"
