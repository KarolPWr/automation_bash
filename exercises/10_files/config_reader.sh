#!/bin/bash



while IFS='= ' read -r key value; do
   echo "Key: $key Value: $value"
done < "config.txt"

