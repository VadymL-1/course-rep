#!/bin/bash
set -eu

files=$(find . -maxdepth 1 -type f)

while [[ -z "$files" ]]; do
echo "No Files in the current directory."
exit 0
done

echo "Files exist in the current directory."
