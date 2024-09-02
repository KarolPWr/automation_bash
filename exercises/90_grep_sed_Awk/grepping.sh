


Znajdź za pomocą  programu $ grep w  $ journalctl (program obsługujący logi systemowe )
pola zawierajace error
pola zweirające error i user 


journalctl | grep -E "ERROR|WARNING"

journalctl | grep "ERROR"   # find errors

journalctl | grep -c "CRITICAL" # count critical

find irrelevant of case sensitivity 
