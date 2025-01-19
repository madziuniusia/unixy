#!/usr/bin/env bash
# Piotr Janczyk, 2017

if (($# < 1)); then
    read -p "Podaj UID użytkowników: " -a uids;
else
    uids=("$@")
fi

for uid in "${uids[@]}"; do
    echo "$(awk -F : -v uid="$uid" '$3==uid { print $5 }' /etc/passwd)"
done
