#!/usr/bin/env bash
# Piotr Janczyk, 2017

shopt -s nullglob # wymagane, aby "*" działała poprawnie dla braku plików
shopt -s dotglob # wymagane, aby zostały uwzględnione ukryte pliki

for file in *; do
    echo -n "$file, "
    if test -d "$file"; then
        echo "katalog"
    else
        echo -n "plik, "
        test -r "$file" && echo -n "r" || echo -n "-"
        test -w "$file" && echo -n "w" || echo -n "-"
        test -x "$file" && echo -n "x" || echo -n "-"
        echo ""
    fi
done
