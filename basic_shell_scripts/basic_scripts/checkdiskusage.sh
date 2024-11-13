#!/bin/bash

# Write a script to monitor disk usage and send an alert if usage exceeds 90%.

THRESHOLD=90
df -h | awk '{ if (NR!=1 && $5+0 > THRESHOLD) print $0; }'