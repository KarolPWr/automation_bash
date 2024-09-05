


find . -type f -name "example.txt" # znajdzie wszystkie pliki pasujące do example.txt


find /tmp -type f -name "foo*.bar" # znajduje wszystko zaczynające się od foo i kończące na bar




find /home -type f -size +10M # znajduje pliki większe niż 10 mb



find . -type f -size -1k # znajduje pliki mniejsze niz 1 kb
