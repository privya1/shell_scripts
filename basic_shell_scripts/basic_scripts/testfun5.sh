#!/bin/bash

# Function to download a file from a URL to a specific location
download_file() {
    url="$1"
    destination="$2"

    # Check if curl or wget is installed
    if command -v curl > /dev/null; then
        downloader="curl -o"
        options="-L"  # Follow redirects
    elif command -v wget > /dev/null; then
        downloader="wget -O"
        options=""
    else
        echo "Error: Neither curl nor wget is installed on this system."
        return 1
    fi

    # Check if the destination directory exists; if not, create it
    dest_dir=$(dirname "$destination")
    if [[ ! -d "$dest_dir" ]]; then
        echo "Directory '$dest_dir' does not exist. Creating it now..."
        mkdir -p "$dest_dir"
    fi

    # Download the file
    echo "Downloading from '$url' to '$destination'..."
    $downloader "$destination" $options "$url"

    # Check if the download was successful
    if [[ $? -eq 0 ]]; then
        echo "Download completed successfully."
    else
        echo "Error during download."
        return 1
    fi
}

# Main script
# Check for correct usage
if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <URL> <destination-file-path>"
    exit 1
fi

# Call the download_file function with the provided arguments
download_file "$1" "$2"
