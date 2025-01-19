#!/usr/bin/env bash
# Piotr Janczyk, 2017

trap 'echo "Dostałem sygnał USR1"' SIGUSR1
trap 'echo "Dostałem sygnał USR2"' SIGUSR2

while [[ 1 ]]; do
    echo "Ciągle żyję"
    sleep 3
done
