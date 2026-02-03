#!/bin/bash

# Script to copy .tex files appending .txt extension
# Usage: ./copy_tex_to_txt.sh <directory>

if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: '$1' is not a directory"
    exit 1
fi

for file in "$1"/*.tex; do
    if [ -f "$file" ]; then
        cp "$file" "$file.txt"
        echo "Created: $file.txt"
    fi
done
