#!/bin/bash

# Komenda do generowania zadanej ilości znaków/zdań:
# curl -s http://metaphorpsum.com/<paragraphs or sentences>/<integer>


loremipsum () {
if [ "${1}" = "" ] || [ "${2}" = "" ]; then
echo "Usage: loremipsum [paragraphs, sentences] [integer]"
else
curl -s http://metaphorpsum.com/"${1}"/"${2}" && printf "\n"
fi
}