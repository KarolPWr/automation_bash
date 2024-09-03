# Zmodyfikuj poprzedni skrypt. Daj użytkownikowi możliwość spakowania plików różnymi programami:
# tar
# gzip
# Xz

# backup w tar:
# tar -cvf "$DEST_DIR/backup.tar" -C "$BACKUP_DIR" .

# backup w gzip:
# tar -czvf "$DEST_DIR/backup.tar.gz" -C "$BACKUP_DIR" .

# backup w xz:
# tar -cJvf "$DEST_DIR/backup.tar.xz" -C "$BACKUP_DIR" .

# Możliwa implementacja: przekazanie argumentu pozycyjnego do struktury case. 

# PORADA: Zanim zaczniesz implementować rozwiązanie z prawdziwymi funkcjami, możesz użyć $ echo "BACKUP W TAR" jako placeholder. 
# Gdy zadziała poprawnie, podmienisz na prawdziwą metodę. 

# Żeby było łatwiej i szybciej się testowało, możesz zamiast argumentów pozycyjnych
# zapisać scieżki w zmiennych, jak w poprzednim zadaniu. 


#!/bin/bash


# Sprawdź czy backup directory istnieje
# ???

# Prompt user for compression choice
echo "Wybierz metodą kompresji: "
echo "1) tar"
echo "2) gzip"
echo "3) xz"
read -rp "Wpisz swój wybór " choice

# Za pomocą struktury case wykonaj odpowiednią operację