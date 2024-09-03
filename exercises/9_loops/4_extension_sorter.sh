#!/bin/bash

# Sortowanie plików 
# Mając następujące pliki w ścieżce exercises/9_loops/4_files:
# 1.pdf 2.jpg 3.txt 4.abcd

# Posegreguj je biorąc pod uwagę extension i przenieś do nowych folderów. Czyli w exercises/9_loops/4_files pojawią się foldery:
# .pdf .jpg .png .abcd

# A w folderach znajdą się pliki z odpowiednim rozszerzeniem

# Pętla do plików:
# For file in *; do 

# Jak dostać extension pliku?
# extension=”${file##* .}” 

# Porada: przed zastosowaniem prawdziwych komend, sprawdź mniej inwazyjnymi komendami (np. echo, ls) czy skrypt robi to co trzeba i przyjmuje prawidłowe zmienne




