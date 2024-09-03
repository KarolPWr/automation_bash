#!/bin/bash

# Wyświetlanie powitania na podstawie user inputu



case $1 in
  morning)
    echo "Good Morning, $2!"
    ;;
  evening)
    echo "Good Evening, $2!"
    ;;
  *)
    echo "Hello, $2!"
    ;;
esac