#!/bin/bash

# How would you write a script to check if a process is running and restart it if it’s not?

process="3779"

if ! pgrep -x $process > /dev/null;then
   echo " $process is not running and restarting it "
   systemctl restart $process
else
   echo " $process is already in running status"
fi