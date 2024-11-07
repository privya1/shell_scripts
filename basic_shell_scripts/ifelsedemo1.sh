#!/bin/bash
FILE=randomfile.txt

# check if the file exists
if [[ ! -f ${FILE} ]]; then
    echo "File mentioned as ${FILE} doesn't exist so exiting"
    exit 1
else
    echo "Printing contents of file at ${FILE}"
    cat ${FILE}
fi
