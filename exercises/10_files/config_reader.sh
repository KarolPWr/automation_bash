#!/bin/bash

# while read -r line; do
#    printf '%s\n' "$line"
# done < "config.txt"


while IFS='= ' read -r key value; do
   echo "Key: $key Value: $value"
done < "config.txt"

# Zadanie: jeśi value jest puste, dodaj stosowny komunikat 
# Co się stanie jeśli zmienisz IFS?