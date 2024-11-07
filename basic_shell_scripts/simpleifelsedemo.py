#!/usr/bin/python3
import os

# Prompt user to enter the directory path
dir_path = input("Give the dir path to check if it exists or not: ")

# Check if the directory exists
if os.path.isdir(dir_path):
    print("The Directory is present")
else:
    print("The Directory is not present")
