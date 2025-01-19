#!/usr/bin/env bash
# Piotr Janczyk, 2017

while [[ 1 ]]; do
    echo "$(ps -e -o pid= | wc -l)"
    sleep 3
done
