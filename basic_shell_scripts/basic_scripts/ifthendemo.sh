#!/bin/bash

FILE=/tmp/random.txt

# Check if the file exists
if [[ -f "${FILE}" ]]; then
   cat "${FILE}"
   exit 0
fi

exit 1
