#!/bin/bash

function print(){
         echo "$reply"
}

read -p "Please give input to print: " reply

print $reply