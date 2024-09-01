#!/bin/bash


sleep 700 &
PID=$!

echo "Rozpoczęto proces w tle o PID: $PID"


# Montiorowanie procesu:


while kill -0 $PID > /dev/null 2>1; do
    echo "Proces $PID dalej działa"
    sleep 5
done

kill -9 $PID

echo "Proces ubity"