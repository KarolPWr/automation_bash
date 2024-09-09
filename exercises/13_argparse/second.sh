#!/bin/bash

loremipsum () {
if [ "${1}" = "" ] || [ "${2}" = "" ]; then
    echo "Usage: loremipsum [paragraphs, sentences] [integer]"
else
    curl -s http://metaphorpsum.com/"${1}"/"${2}" #&& printf "\n"
fi
}

OPTSTRING=":t:n:"

while getopts ${OPTSTRING} opt; do
  case ${opt} in
    t)
      echo "Option -t was triggered, Argument: ${OPTARG}"
      TYPE=${OPTARG}
      ;;
    n)
      echo "Option -n was triggered, Argument: ${OPTARG}"
      NUMBER=${OPTARG}
      ;;
    :)
      echo "Option -${OPTARG} requires an argument."
      exit 1
      ;;
    ?)
      echo "Invalid option: -${OPTARG}."
      exit 1
      ;;
  esac
done

loremipsum "$TYPE" "$NUMBER" > test.txt