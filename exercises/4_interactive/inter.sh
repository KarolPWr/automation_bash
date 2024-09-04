#!/bin/bash



echo "Ilosć znaków do wpisania?"

read -r 

echo "Wpisano liczbę: $REPLY"


CONTENT=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c "$REPLY")
echo "$CONTENT" > test.txt


read -rp "Naciśnij klawisz by zakończyć..."

exit 0