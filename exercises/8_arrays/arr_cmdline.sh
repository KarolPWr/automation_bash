#!/bin/bash

# Tablica z dowolnymi elementami, o długości > 1
my_array=("element1" "element2" "element3" "element4")

array_length=${#my_array[@]}

middle_element=$((array_length/2))

my_array[0]=$1

my_array[middle_element]=$2

my_array+=("$3")

echo "Zaktualizowana tablica:"
for element in "${my_array[@]}"; do
    echo "$element"
done