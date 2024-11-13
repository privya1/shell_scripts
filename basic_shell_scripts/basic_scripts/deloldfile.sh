#!/bin/bash

# How can you delete files older than 7 days in a directory?

path_dir=<path to dir>

find $path_dir -type f -mtime +7 -exec rm -rf {}\;

