#!/bin/bash

read -p "Enter the var " JKF # here JKF is a variable which is taking the value provided by user from I/O command prompt.
lmn=$JKF

# if [[ -n ${variable} ]]; then do-something => do something if the ${variable} is not empty

if [[ -n ${lmn} ]];then
   echo "given var is not empty, the given value is $lmn"
fi

# if [[ -z ${variable} ]]; then do-something => do something if the ${variable} is empty
# we can also write in this format as well. 
# if [[ !-n ${variable} ]]; then do-something => do something if the ${variable} is empty

if [[ -z ${lmn} ]];then
   echo "given var is empty, please try again by giving value to the variable"
fi