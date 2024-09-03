#!/bin/bash

# Ustawienie ścieżki do folderu z plikami
DEST_DIR=4_files

cd $DEST_DIR || exit

# Pętla przez wszystkie pliki w folderze
for file in *; do
    # Sprawdzenie, czy plik istnieje
    if [[ -f "$file" ]]; then
        # Pobranie rozszerzenia pliku
        extension="${file##*.}"
        
        # Utworzenie folderu dla rozszerzenia, jeśli nie istnieje
        mkdir -p "$DEST_DIR/.$extension"
        
        # Przeniesienie pliku do odpowiedniego folderu
        mv "$file" "$DEST_DIR/.$extension/"
    fi
done

echo "Pliki zostały posegregowane."