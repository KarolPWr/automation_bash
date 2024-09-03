#!/usr/bin/env bash

# “a” i “arga” mają argumenty opcjonalne z wartościami domyślnymi 
# “b” i “argb” bez argumentów, działają jako flagi
# “c” i “argc” mają required arguments

# Wartość początkowa dla flagi
ARG_B=0

# Odczytanie opcji
TEMP=`getopt -o a::bc: --long arga::,argb,argc: -n 'test.sh' -- "$@"`
eval set -- "$TEMP"

# Konwersja opcji i argumentów na zmienne 
while true ; do
    case "$1" in
        -a|--arga)
            case "$2" in
                "") ARG_A='some default value' ; shift 2 ;;
                *) ARG_A=$2 ; shift 2 ;;
            esac ;;
        -b|--argb) ARG_B=1 ; shift ;;
        -c|--argc)
            case "$2" in
                "") shift 2 ;;
                *) ARG_C=$2 ; shift 2 ;;
            esac ;;
        --) shift ; break ;;
        *) echo "Internal error!" ; exit 1 ;;
    esac
done

# Jakiekolwiek operacje na zmiennych
echo "ARG_A = $ARG_A"
echo "ARG_B = $ARG_B"
echo "ARG_C = $ARG_C"

