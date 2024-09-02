#!/bin/bash


# Metoda na sprawdzenie czy SUBSTRING zawiera się w STRING (np. czy TEST zawiera się w TESTOWANIE)
string='My long string'
if [[ $string == *"My long"* ]]; then
  echo "It's there!"
fi