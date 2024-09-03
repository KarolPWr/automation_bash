#!/bin/bash


### Zadanie ###
# W skrypcie jest kilka błędów. Spróbuj rozwiązać wszystkie przez użycie programu $ strace. 
# Przetestuj jak działa filtrowanie syscalli oraz flaga -f.

VAR = "444"

mkdir /tmp/testdir

echo "This is a test file" > /tmp/testdir/testfile.txt

chmod 444 /tmp/testdir

echo "Appending this line" >> /tmp/testdir/testfile.txt

rmdir /tmp/testdir

ls -l /tmp/testdir