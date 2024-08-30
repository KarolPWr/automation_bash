#!/bin/bash

echo "Ilosć znaków do wpisania?"

read -r 

echo "Wpisano liczbę: $REPLY"

CONTENT=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c "$REPLY")
echo "$CONTENT" > test.txt


read -rp "Naciśnij klawisz by zakończyć..."



exit 0



echo -n "This is $(basename $0), how long would you like to work in minutes: " # basename and command expansion $(...) 
read       # with and without -r
echo "Input value: $REPLY" # default variable



# better

read -p "How long would you like to work in minutes: " interval



read -n1 -p "Press any key to exit"



### Zadanie
# Korzystając z $ man i ze szkicu skryptu, napisz skrypt który:
# Bez uzycia $ echo zapisze input usera do zmienniej interval
# Na koniec programu wyświetli napis "Press any key to exit..." i będzie oczekiwało na input usera
# jak szukac funkcji builtin - man bash i szukac /read \[   - co to escape character? 
# od razu pouczenie o szukaniu jak działa dana komenda i rozszyfrowanie nomenklatury z $ man - na przykładzi $ printf 