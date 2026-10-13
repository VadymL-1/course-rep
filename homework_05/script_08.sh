#!/bin/bash

set -eu

fruits=("Apple" "Cherry" "Orange" "Grape" "Banana")

echo "Array is ${fruits[*]}"

for fruit in "${fruits[@]}"; do
    echo "$fruit"
done    