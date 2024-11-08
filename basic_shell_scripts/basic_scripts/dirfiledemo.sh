#!/bin/bash

read -p "Please give path to get the path: " reply
PATH=$reply

for path in $PATH
do
if [[ -d $path ]];then
	echo "The path is a dir:$path"
fi
if [[ -f $path ]];then
	echo "The path is a file:$path"
fi
done