


# Znajdź za pomocą  programu $ grep w  $ journalctl (program obsługujący logi systemowe )

# pola zawierajace error
# pola error lub warning 
# policz ile razy wystąpiło wyrażenie error
# Jak znaleźć komunikaty niezależnie od wielkości liter? 
# wyświetl komunikaty zawierające warning plus numery linijek gdzie wystąpiły

# journalctl | grep -E "ERROR|WARNING"

# journalctl | grep "ERROR"   # find errors

# journalctl | grep -c "CRITICAL" # count critical

