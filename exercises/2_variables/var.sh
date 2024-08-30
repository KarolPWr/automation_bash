#!/bin/bash

NAME="JOHN"
SURNAME="DOE"
AGE=25
FOOD="PIZZA"

AGE_NEXT=$(("$AGE"+1))

echo "Full name: $NAME $SURNAME"
echo "Current age: $AGE"
echo "Age next year: $AGE_NEXT"
echo "Favorite food: $FOOD"
