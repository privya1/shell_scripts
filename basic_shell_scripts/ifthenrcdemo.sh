#!/bin/bash
mkdir $1
mkdir_rc=$?

# Test if the directory creation is success

if [[ $mkdir_rc -ne 0 ]];then
   echo "The dir is not created"
   exit 1
else
   echo "The dir is created"
fi