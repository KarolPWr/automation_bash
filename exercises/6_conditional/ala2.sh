#!/bin/bash


### Alternatywne rozwiązanie, stworzone na kursie ####

while true; do
  read -p "Podaj ilość kotów: " REPLY
  MESSAGE="Ala ma $REPLY kot"

  if [[ $REPLY = "exit" ]]; then 
    exit 0
  elif [[ $REPLY -eq 1 ]]; then
    echo "$MESSAGE"a
  elif [[ 12 -le $REPLY && $REPLY -le 14 ]]; then
    echo "$MESSAGE"ów
  elif [[ 2 -le $((REPLY % 10)) && $((REPLY % 10)) -le 4 ]]; then
    echo "$MESSAGE"y
  else
    echo "$MESSAGE"ów
fi
done

exit 0

### Alternawytne rozœiazanie, również z kursu ###
if [[ "$1" -eq 1 ]]; then
    echo "Ala ma $1 kota."
elif [[ ($(( $1 % 10)) -eq 2 || $(( $1 % 10)) -eq 3 || $(( $1 % 10)) -eq 4) && $(( $1 % 100)) -ne 12 && $(( $1 % 100)) -ne 13 && $(( $1 % 100)) -ne 14 ]]; then
    echo "Ala ma $1 koty."
else 
    echo "Ala ma $1 kotów."
fi 