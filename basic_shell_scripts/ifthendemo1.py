#!/usr/bin/python3

import os

# Prompt user to enter the file path
file_path = input("Give the file path and name of file to check if it exists or not: ")

# Check if the file exists
if os.path.isfile(file_path):
    with open(file_path, 'r') as f:  # Use the variable without quotes
        file_contents = f.read()
        print(file_contents)
else:
    print("The file does not exist.")
