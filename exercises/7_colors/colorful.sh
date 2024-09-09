#!/bin/bash

export COLOR_NC='\e[0m' # No Color

export COLOR_BLACK='\e[0;30m'
export COLOR_GRAY='\e[1;30m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_LIGHT_GRAY='\e[0;37m'
export COLOR_WHITE='\e[1;37m'

printf "I ${COLOR_RED}love${COLOR_GREEN} Stack${COLOR_NC} Overflow\n"

# printf "format-string" arguments

name="Janusz"
age=30
printf "My ${COLOR_RED}name is %s ${COLOR_GREEN}and I ${COLOR_NC}am %d years old.\n" "$name" "$age"

echo -e 

git commit -m ""
git pull -r 