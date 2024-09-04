#!/bin/bash

# while read -r line; do
#    printf '%s\n' "$line"
# done < "config.txt"

# Zadanie:
# Przeanalizuj za pomocą poniższego szkicu plik config.txt (kawałek konfiguracji journala w systemd)
# jeśi pole Value jest puste, dodaj stosowny komunikat 
# Co się stanie jeśli zmienisz IFS?

# BONUS: spróbuj sparsować plik na swoim systemie, np. /etc/systemd/journald.conf


while IFS='= ' read -r key value; do
   echo "Key: $key Value: $value"

   if [[ -z $value ]]; then
      echo "Value is empty"
   else 
      echo "Value exists!"
   fi
done < "config.txt"

# Zadanie: jeśi value jest puste, dodaj stosowny komunikat 
# Co się stanie jeśli zmienisz IFS?