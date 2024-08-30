#!/bin/bash

if [[ -z $1 ]]; then
    echo "Provide arguments"
    exit 1
fi

NUMBER=$1

if [[ $NUMBER -gt 5 ]]; then
    echo "Number is bigger than 5"
else
    echo "Number is not bigger than 5"
fi 
