#!/bin/bash

set -eu

a=1

while [[ $a -le 10 ]]; do
echo $a
((a++))
done

