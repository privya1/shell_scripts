#!/bin/bash
COUNT=10
until (( COUNT < 0 )); do
    echo "$COUNT"
    (( COUNT-- ))
done