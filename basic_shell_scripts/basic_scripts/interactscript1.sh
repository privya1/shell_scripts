#!/bin/bash

#####################################################################
# Author: Mohan B
# Version: v1.0.0
# Date: 26-Aug-2020
# Description: This is shell script demonstrating interactive scripts
# Usage: ./interactivescriptdemo.sh
#####################################################################

read -p "Name a superhero which you like? " super_hero
read -p "Which movie has this role? " movie_super_hero
read -p "What is your name? " name
echo "Hi ${name}, Thanks for watching movie ${movie_super_hero} and liking the character ${super_hero}"
