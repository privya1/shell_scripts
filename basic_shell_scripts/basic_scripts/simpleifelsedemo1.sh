#!/bin/bash

read -p "Give the dir path to check if it exists or not: " DIR

if [[ -d $DIR ]]; then
    echo "The Directory is present"
else
    echo "The Directory is not present"
fi
