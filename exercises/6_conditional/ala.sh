#!/bin/bash

# Rozpiska przyrostków
# 1 kot
# 2 3 4 koty
# 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 kotów
# 22 23 24 koty
# 25 kotów
# itp. dalej już leci "wzorem" poprzednich

### ROZWIĄZANIE ####
if [[ "$#" -ne 1 ]]; then
    echo "Przekaż jeden argument będący liczbą"
    exit 1
fi

N_CATS=$1

echo "Liczba kotów: $N_CATS"

MOD_N_CATS=$(( N_CATS % 10 )) # Reszta z dzielenia kotów (do dopasowania końcówki), % to operator MODULO

if [[ N_CATS -gt 4 && N_CATS -lt 20 ]]; then   
    echo "Ala ma $N_CATS kotów"
    exit 0
fi

if [[ MOD_N_CATS -eq 1 && N_CATS -eq 1 ]]; then
    echo "Ala ma $N_CATS kota"
elif [[ MOD_N_CATS -eq 1 && N_CATS -gt 1 ]]; then 
    echo "Ala ma $N_CATS kotów"
elif [[ MOD_N_CATS -gt 1 && MOD_N_CATS -lt 5 ]]; then
    echo "Ala ma $N_CATS koty"
elif [[ MOD_N_CATS -gt 4 && MOD_N_CATS -lt 10 || MOD_N_CATS -eq 0 ]]; then 
    echo "Ala ma $N_CATS kotów"
fi


