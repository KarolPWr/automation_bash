#!/bin/bash

# Randomly select a number from 1 to 100
random_number=$(( RANDOM % 100 + 1 ))
attempts=0

echo "Welcome to GUESS A NUMBER"
echo "guess the number between 1 and 100."

while true; do
    read -rp "Enter your guess: " user_guess
    attempts=$((attempts + 1))

    # Sprawdzania czy input to liczba
    # if ! [[ "$user_guess" =~ ^[0-9]+$ ]] || [ "$user_guess" -lt 1 ] || [ "$user_guess" -gt 100 ]; then
    #     echo "Please enter a number between 1 and 100."
    #     continue
    # fi

    if [ "$user_guess" -lt "$random_number" ]; then
        echo "Too low! Try again."
    elif [ "$user_guess" -gt "$random_number" ]; then
        echo "Too high! Try again."
    else
        echo "You guessed the number $random_number in $attempts attempts."
        break
    fi
done