#!/bin/bash

# dwa sposoby deklarowania tablic
declare -a my_array=(value1 value2 value3)

my_array=() 

# operacje na tablicach
echo "${my_array[0]}"  # Wyświetla 1szy element

echo "${my_array[@]}"   # Wyświetla wszystkie elementy

echo "${#my_array[@]}"  # Wyświetla liczbę elementów (długość tablicy)

my_array+=(new_value)   # Dodanie nowego elementu na koniec tablicy

my_array[1]=updated_value  # Zmienia drugi element (numeracja elementów zaczyna się od 0)

unset my_array[1]  # Usuwa drugi element

# Merge two arrays
combined_array=( "${array1[@]}" "${array2[@]}" ) 