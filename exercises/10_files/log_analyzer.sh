#!/bin/bash

# Analiza danych z pliku Apache_2k.log

# Skrypt pobiera ścieżkę do pliku jako argument
# Obsługa błędu jeśli plik nie istnieje lub nie ma końcówki .log

# Skrypt przygotowuje statystyki:
# Liczba log entries (linijek logu)
# Ile error?
# Ile notice?


# # Metoda na sprawdzenie czy SUBSTRING zawiera się w STRING (np. czy TEST zawiera się w TESTOWANIE)
# string='My long string'
# if [[ $string == *"My long"* ]]; then
#   echo "It's there!"
# fi

PLIK=$1

# ścieżka do pliku
if [ "$#" -ne 1 ]; then
    echo "Błąd: Musisz podać dokładnie jedną ścieżkę do pliku jako argument."
    exit 1
fi

# plik istnieje?
if [ ! -f "$PLIK" ]; then
    echo "Błąd: Plik $1 nie istnieje."
    exit 1
fi

# końcówka .log?
if [[ "$PLIK" != *.log ]]; then
    echo "Błąd: Plik $1 nie ma rozszerzenia .log."
    exit 1
fi

# liczniki
total_lines=0
error_count=0
notice_count=0


while read -r line; do
    ((total_lines++))

    # zawiera ERROR?
    if [[ "$line" == *"error"* ]]; then
        ((error_count++))
    fi

    # Zawiera NOTICE?
    if [[ "$line" == *"notice"* ]]; then
        ((notice_count++))
    fi
done < "$PLIK"

# Stats
echo "Liczba linijek logu: $total_lines"
echo "Liczba 'ERROR': $error_count"
echo "Liczba 'NOTICE': $notice_count"