#!/usr/bin/env bash
# Piotr Janczyk, 2017

if (($# < 1)); then
    echo -n "Podaj UID: "
    read uid
else
    uid=$1
fi

echo "$(awk -F : -v uid=$uid '$3==uid { print $5 }' /etc/passwd)"
