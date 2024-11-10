#!/bin/bash

test_variable_1=10
test_variable_2=30
test_variable_3=60

testfunction() {
    test_variable_1=50
    test_variable_2=100
    local test_variable_3=200
    echo "$test_variable_3"
}

echo "$test_variable_1"
echo "$test_variable_2"
echo "$test_variable_3"
echo "After calling test function"
testfunction
echo "$test_variable_1"
echo "$test_variable_2"
echo "$test_variable_3"
