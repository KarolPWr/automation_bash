#!/bin/bash

set -m

trap 'foo' EXIT

trap 'echo "SIGINT"' INT

trap 'echo "ERR caught"' ERR



echo "Hello World!"

sleep 500


function foo {
  echo "EXIT caught"
  exit 123
}

exit 0