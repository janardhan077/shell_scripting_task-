#!/bin/bash

echo "----- Using local variables -----"

my_function_local() {
    local name="Janardhan"
    local age=20

    echo "Inside function (local):"
    echo "Name: $name"
    echo "Age: $age"
}

my_function_local

echo "Outside function (after local function call):"
echo "Name: $name"
echo "Age: $age"

echo ""
echo "----- Using regular variables -----"

my_function_global() {
    name="ntg"
    age=100

    echo "Inside function (global):"
    echo "Name: $name"
    echo "Age: $age"
}

my_function_global

echo "Outside function (after global function call):"
echo "Name: $name"
echo "Age: $age"
