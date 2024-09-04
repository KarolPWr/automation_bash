#!/bin/bash

# Tablica z listą programów do sprawdzenia
programs=("ls" "cat" "nginx" "lolcat")

# Pętla for do sprawdzania każdego programu
for program in "${programs[@]}"; do
    if command -v "$program" &> /dev/null; then
        echo "$program is installed."
    else
        echo "$program is not installed."
    fi
done