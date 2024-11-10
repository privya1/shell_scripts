#!/bin/bash

# Function to extract a tar file to a specific location
extract_tar() {
    tar_file="$1"
    destination="$2"

    # Check if the tar file exists
    if [[ ! -f "$tar_file" ]]; then
        echo "Error: File '$tar_file' does not exist."
        return 1
    fi

    # Check if the destination directory exists; if not, create it
    if [[ ! -d "$destination" ]]; then
        echo "Directory '$destination' does not exist. Creating it now..."
        mkdir -p "$destination"
    fi

    # Extract the tar file to the destination
    echo "Extracting '$tar_file' to '$destination'..."
    tar -xf "$tar_file" -C "$destination"

    # Check if the extraction was successful
    if [[ $? -eq 0 ]]; then
        echo "Extraction completed successfully."
    else
        echo "Error during extraction."
        return 1
    fi
}

# Main script
# Check for correct usage
if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <path-to-tar-file> <destination-directory>"
    exit 1
fi

# Call the extract_tar function with the provided arguments
extract_tar "$1" "$2"
