#!/bin/bash

# How would you write a script that logs CPU and memory usage every minute?

while true; do
    echo "CPU and Memory Usage at $(date)" >> /path/to/logfile
    top -b -n1 | head -5 >> /path/to/logfile
    sleep 60
done
