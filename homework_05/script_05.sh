#!/bin/bash

set -eu

read -p "Enter the source directry full path: " from

if [[ ! -d "$from" ]]; then
    echo "Source directory does not exist, please try one more time"
    exit 1
fi

read -p "Enter the destination directry full path: " to

if [[ ! -d "$to" ]]; then
    echo "Destination directory does not exist, please try one more time"
    exit 1
fi
if [[ "$from" == "$to" ]]; then 
echo "You specified the same source and destination directories, please try one more time" 
fi 
echo "your files are sucessfully copied" 
cd $to
pwd
ls
cp -- "$from"/* "$to" 2> /dev/null
