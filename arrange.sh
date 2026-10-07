#!/bin/bash

for file in files/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        first_char="${filename:0:1}"
        dest_dir="${first_char,}"
        mv "$file" "./$dest_dir/"
    fi
done