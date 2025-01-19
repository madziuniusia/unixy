#!/usr/bin/env bash

if (($# < 1)); then
    dir="$(pwd)"
else
    dir="$1"
fi

count=0
total_size=0

shopt -s nullglob # Uwzględnienie przypadku, gdy katalogi są puste
shopt -s dotglob # Uwzględnie ukrytych plików

for file in "$dir"/*; do
    if [[ -f "$file" ]]; then
        size=$(stat --format="%s" "$file")
        ((count++))
        ((total_size+=size))
    fi
done

echo "Liczba plików: $count"
echo "Rozmiar plików: $total_size"
