#!/bin/bash

set -x

echo "Hello from $0"
echo "First argument $1"
echo "Number of arguments: $#"

echo "All arguments: $*"

### Calculator part 

echo "Performing operations"

EQUALS=$(("$1" "$3" "$2"))

echo "equals: $EQUALS"

exit 0

