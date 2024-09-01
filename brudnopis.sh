#!/bin/bash

calculate_sum() {
    local a=$1
    local b=$2
    local sum=$((a + b))
    echo "The sum of $a and $b is $sum."
}

calculate_sum 10 20


function_name() {
    # Commands to execute
}

# Wywołanie
function_name

show_date_time() {
    echo "Current date and time: $(date)"
}

calculate_square() {
    local number=$1
    echo "The square of $number is $((number * number))"
}


if [ "$#" -lt 2 ]; then
    echo "Error: You must provide both a name and an age."
    echo "Usage: $0 <name> <age>"
    exit 1
fi
