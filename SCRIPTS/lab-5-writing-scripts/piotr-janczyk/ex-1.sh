#!/usr/bin/env bash
# Piotr Janczyk, 2017

if (($# == 0)); then
    echo "Brak argumentów"
else
    for ((i=1; i <= $#; i++)); do
        echo "$i: ${!i}"
    done
fi
