#!/bin/bash

# Store the output of a command in a variable
output=$(ls /home/ubuntu/contents)  # Example command
echo "The output of the command is:"
echo "$output"

# Reuse the variable
echo "Reusing the output:"
echo "$output"


