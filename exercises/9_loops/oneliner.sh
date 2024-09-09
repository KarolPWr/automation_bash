#!/bin/bash

for i in $(seq 12); do echo "$((12-$i)) seconds remaining"; sleep 1; done; echo "Break over"