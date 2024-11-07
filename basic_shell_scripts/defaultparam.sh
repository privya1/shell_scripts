#!/bin/bash

name=$1
course=$2

[ -z $name ] && name="Khaja"
[ -z $course ] && course="Linux"

echo "Hello ${name}, Welcome to world of ${course}"
