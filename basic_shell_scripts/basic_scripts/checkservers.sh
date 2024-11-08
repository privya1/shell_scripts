#!/bin/bash

# Path to the file containing the list of servers
SERVER_FILE="servers.txt"

# Check if the file exists
if [[ ! -f "$SERVER_FILE" ]]; then
    echo "Server file $SERVER_FILE not found."
    exit 1
fi

# Read each line (server IP or hostname) from the file
while read -r server; do
    # Skip empty lines
    [[ -z "$server" ]] && continue
    
    # Ping the server, suppress output, and only check if it's reachable
    if curl -I "$server" &> /dev/null; then
        echo "Server $server is UP"
    else
        echo "Server $server is DOWN"
    fi
done < "$SERVER_FILE"
