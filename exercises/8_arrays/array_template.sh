#!/bin/bash

declare -a my_array=(value1 value2 value3)

my_array=() 

echo "${my_array[0]}"  # Wyświetla 1szy element

echo "${my_array[@]}"   # Wyświetla wszystkie elementy

echo "${#my_array[@]}"  # Wyświetla liczbę elementów

my_array+=(new_value)   # Dodanie elementu na koniec tablicy

my_array[1]=updated_value  # Zmienia drugi element

unset my_array[1]  # Usuwa drugi element

# Mergowanie dwóch tablic
combined_array=( "${array1[@]}" "${array2[@]}" ) 