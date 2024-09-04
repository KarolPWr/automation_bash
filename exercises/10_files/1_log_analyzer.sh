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