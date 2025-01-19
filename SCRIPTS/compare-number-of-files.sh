#!/usr/bin/env bash

if (($# < 2)); then
    echo "Składnia: compare-number-of-files.sh KATALOG1 KATALOG2"
    exit
fi

for ((i=3; i <= $#; i++)); do
    echo "Parametr nadliczbowy: ${!i}"
done

shopt -s nullglob # Uwzględnienie przypadku, gdy katalogi są puste
shopt -s dotglob # Uwzględnie ukrytych plików
files1=( "$1"/* )
files2=( "$2"/* )

count1=${#files1[@]}
count2=${#files2[@]}

echo "W katalogu $1 znajduje się $count1 plików"
echo "W katalogu $2 znajduje się $count2 plików"

if ((count1 > count2)); then
    echo "Więcej plików zawiera katalog $1";
elif ((count1 < count2)); then
    echo "Więcej plików zawiera katalog $2";
else
    echo "Oba katalogi zawierają tę samą liczbę plików"
fi
