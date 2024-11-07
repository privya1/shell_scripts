#!/bin/bash
echo "This is a simple basic calculator which performs basic math operations like addition, subtraction, multiplication and division"
read -p "please tell us which basic math operation you want to have select from these options 1:add, 2:sub, 3:multiply and 4:divide " num
echo "Please input the numbers to perform math operation"
read -p "please enter 1st number " num_1
read -p "please enter 2nd number " num_2

if [[ $num -eq 1 ]]; then
   result1=$(($num_1+$num_2))
   echo "the addition is $result1"
fi

if [[ $num -eq 2 ]]; then
   result2=$(($num_1-$num_2))
   echo "the subtraction is $result2"
fi

if [[ $num -eq 3 ]]; then
   result3=$(($num_1*$num_2))
   echo "the multiplication is $result3"
fi

if [[ $num -eq 4 ]]; then
   result4=$(($num_1/$num_2))
   echo "the division is $result4"
fi