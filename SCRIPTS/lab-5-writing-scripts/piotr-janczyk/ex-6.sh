#!/usr/bin/env bash
# Piotr Janczyk, 2017

if (($# != 2)); then
    echo "Składnia:  zad-6.sh PLIK ROZMIAR_CZĘŚCI"
    exit
fi

file="$1"
part_size="$2"
file_size=$(stat --format="%s" "$1")
parts=$(( (file_size + part_size - 1) / part_size )) # liczba części zaokrąglona w górę

for ((i=0; i < parts; i++)); do
    part_name="$file.part$((i+1))"
    echo "$part_name"
    dd conv=noerror if="$file" of="$part_name" bs=$part_size skip=$i count=1 2>/dev/null
done

echo "Plik $file został podzielony na $parts części"
