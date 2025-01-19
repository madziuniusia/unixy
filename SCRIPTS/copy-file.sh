#!/usr/bin/env bash

if (($# < 1)); then
    echo "Składnia: copy-file.sh ŹRÓDŁOWY [DOCELOWY]"
    exit
fi

for ((i=3; i <= $#; i++)); do
    echo "Parametr nadliczbowy: ${!i}"
done

src="$1"

if (($# < 2)); then
    dest="$src.bak"
elif [[ -d "$2" ]]; then
    dest="$2/$src.bak"
else
    dest="$2"
fi

cp "$src" "$dest" 2>/dev/null

if (($? != 0)); then
    echo "Nie udało się skopiować pliku"
fi
