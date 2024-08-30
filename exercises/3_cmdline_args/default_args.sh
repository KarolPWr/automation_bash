#!/bin/bash

echo "Hello from $0"

NAME="${1:-"John"}"

echo "First argument $NAME"
echo "Number of arguments: $#"

echo "All arguments: $*"
