# Napisz skrypt wykonujący bardzo prosty backup folderu. 

# Algorytm:
# 1. Sprawdzamy czy folder na backup istnieje - jeśli nie, to go tworzymy
# Folder powinien mieć nazwę: backup_DATA
# gdzie DATA - to dzisiejsza data w formacie numerycznym (bez nazw dnia tygodnia itp.)  por. $ man data 
# 2. Robimy backup (kopiujemy bieżący folder z src_dir do dest_dir)
# 3. Jeśli backup (kopiowanie) się udało, poinformuj o tym użytkownika
# -----------------
# 4. BONUS:
# Znajdź foldery z backupem starsze niż 7 dni i usuń je. 
# old_backups=$(find "$backup_dir" -maxdepth 1 -type d -name "projects_backup_*" -mtime +7)
# ^ to polecenie znajduje stare backupy

# find "$backup_dir" -maxdepth 1 -type d -name "projects_backup_*" -mtime +7 -exec rm -rf {} \;
# ^ to polecenie usuwa backupy starsze niż 7 dni 

# Przetestuj czy działa (np. stwórz foldery ze starą datą i zobacz czy zostaną usunięte)

# Nie musisz używać argumentów pozycyjnych, mogą być zwykłe zmienne. 


# Twoim zadaniem jest stworzenie skryptu bash, który zautomatyzuje proces tworzenia kopii zapasowych ważnych plików projektów z katalogu /home/user/projects do katalogu /backups/projects. 
# Dodatkowo skrypt powinien czyścić stare kopie zapasowe, które są starsze niż 7 dni, aby zaoszczędzić miejsce na dysku.

# Wymagania:

#     Kopia zapasowa:
#         Skrypt powinien najpierw sprawdzić, czy katalog /backups/projects istnieje.
#             Jeśli nie istnieje, skrypt powinien go utworzyć.
#         Skrypt powinien następnie skopiować wszystkie pliki i katalogi z /home/user/projects do /backups/projects, dodając bieżącą datę do nazwy katalogu kopii zapasowej (np. /backups/projects_backup_YYYY-MM-DD).
#         Po skopiowaniu skrypt powinien sprawdzić, czy operacja się powiodła.
#             Jeśli kopia zapasowa się powiedzie, powinien wyświetlić komunikat „Kopia stworzona”.
#             Jeśli kopia zapasowa nie powiedzie się, powinien wyświetlić komunikat „Kopia zapasowa nie powiodła się. Sprawdź dziennik błędów.”.

#     Czyszczenie:
#         Skrypt powinien sprawdzić, czy w katalogu /backups/projects znajdują się katalogi kopii zapasowych starsze niż 7 dni.
#             Jeśli takie katalogi zostaną znalezione, powinny zostać usunięte.
#         Po zakończeniu czyszczenia skrypt powinien wypisać liczbę usuniętych kopii zapasowych lub komunikat „Nie znaleziono starych kopii zapasowych.”, jeśli nie było żadnych do usunięcia.