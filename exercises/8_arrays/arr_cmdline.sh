#!/bin/bash

# Stwórz tablicę z dowolnymi elementami, o długości >1
# Używając argumentów linii komend wpisz 3 elementy do tablicy - na początek, na koniec i w środku tablicy. 
# (początkowe elementy tablicy mogą zostać nadpisane)
# Na koniec wyświetl wszystkie elementy tablicy za pomocą poniższej pętli:

# echo "Zaktualizowana tablica:"
# for element in "${NAZWA_TABLICY[@]}"; do
#     echo "$element"
# done

if [ "$#" -ne 3 ]; then
    echo "Konieczne są 3 argumenty"
    exit 1
fi

echo "Args: $1, $2, $3"

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