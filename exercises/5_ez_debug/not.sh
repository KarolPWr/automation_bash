#!/bin/bash
# shellcheck disable=SC2154,SC1091


source=$(pwd)  # Error: Typo in variable name "source"
destination="$source/newdir"

mkdir -p $destination


cp -r "$soruce" "$destination"


