#!/bin/bash

touch intro.txt
echo "Hi Everyone
This is Mohan
I am Learning Linux" > "intro.txt"

file=intro.txt
IFS=$'\n'

for i in $(cat ${file})
do
echo $i
done
