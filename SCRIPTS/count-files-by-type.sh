#!/usr/bin/env bash


if (($# < 1)); then
    dir="$PWD"
else
    dir="$1"
fi

for ((i=2; i<=$#; i++)); do
    echo "Parametr nadliczbowy: ${!i}"
done

regular_files=0
directories=0
symlinks=0

shopt -s nullglob # Uwzględnienie przypadku, gdy katalogi są puste
shopt -s dotglob # Uwzględnie ukrytych plików

for file in "$dir"/*; do
    if [[ -h "$file" ]]; then
        ((symlinks++))
    elif [[ -d "$file" ]]; then
        ((directories++))
    elif [[ -f "$file" ]]; then
        ((regular_files++))
    fi
done

echo "Liczba plików regularnych: $regular_files"
echo "Liczba katalogów: $directories"
echo "Liczba dowiązań symbolicznych: $symlinks"
