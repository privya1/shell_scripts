#!/bin/bash

# How would you use a script to find and replace text in multiple files in a directory?

for file in /path/to/files/*; do
    sed -i 's/old_text/new_text/g' "$file"
done
