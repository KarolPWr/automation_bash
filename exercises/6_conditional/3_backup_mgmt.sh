# Twoim zadaniem jest stworzenie skryptu bash, który zautomatyzuje proces tworzenia kopii zapasowych ważnych plików projektów z katalogu /home/user/projects do katalogu /home/user/backups (zamień user na nazwę uzytkownika) 
# Dodatkowo skrypt powinien czyścić stare kopie zapasowe, które są starsze niż 7 dni, aby zaoszczędzić miejsce na dysku.

# Wymagania:

# Kopia zapasowa:
#     Skrypt powinien najpierw sprawdzić, czy katalog /backups/projects istnieje.
#         Jeśli nie istnieje, skrypt powinien go utworzyć.
#     Skrypt powinien następnie skopiować wszystkie pliki i katalogi z /home/user/projects do /backups/projects, dodając bieżącą datę do nazwy katalogu kopii zapasowej (np. /backups/projects_backup_YYYY-MM-DD).
#     Po skopiowaniu skrypt powinien sprawdzić, czy operacja się powiodła.
#         Jeśli kopia zapasowa się powiedzie, powinien wyświetlić komunikat „Kopia stworzona”.
#         Jeśli kopia zapasowa nie powiedzie się, powinien wyświetlić komunikat „Kopia zapasowa nie powiodła się. Sprawdź dziennik błędów.”.

# -----------------
# BONUS:
# Znajdź foldery z backupem starsze niż 7 dni i usuń je. 

# old_backups=$(find "$backup_dir" -maxdepth 1 -type d -name "projects_backup_*" -mtime +7)
# ^ to polecenie znajduje stare backupy

# find "$backup_dir" -maxdepth 1 -type d -name "projects_backup_*" -mtime +7 -exec rm -rf {} \;
# ^ to polecenie usuwa backupy starsze niż 7 dni 