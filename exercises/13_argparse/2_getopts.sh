#!/bin/bash

OPTSTRING=":x:y:"
# : -> początek ptstringu
# x: -> definiujemy argument x, : oznacza że potrzebuje on argumentu
# y: -> to samo co wyżej

while getopts ${OPTSTRING} opt; do
  case ${opt} in
    x)
      echo "Option -x was triggered, Argument: ${OPTARG}"
      ;;
    y)
      echo "Option -y was triggered, Argument: ${OPTARG}"
      ;;
    :)
      echo "Option -${OPTARG} requires an argument."  # Gdy wpiszemy np. samo -x, bez argumentu
      exit 1
      ;;
    ?)
      echo "Invalid option: -${OPTARG}."
      exit 1
      ;;
  esac
done