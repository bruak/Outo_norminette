#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

file="$1"

while true; do
    if [ -f "$file" ]; then
        norminette "$file"
    else
        echo "File not found: $file"
        exit 1
    fi
done
