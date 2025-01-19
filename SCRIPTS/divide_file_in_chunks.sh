#!/bin/bash

if [ -z "$2" -o ! -r "$1" ]; then
echo "Skladnia: $0 [plik] [rozmiar kawalka]"
exit 1
fi

SIZE=`ls -l $1 | awk '{print $5}'`

if [ $2 -gt $size ]; then
echo "Rozmiar kawalka musi byc mniejszy od rozmiaru pliku"
exit 2
fi

CHUNK=$2
TOTAL=0
PASS=0
while [ $TOTAL -lt $SIZE ]; do
PASS=`expr $PASS + 1`
echo "Tworzenie $1.$PASS..."
dd conv=noerror if=$1 of=$1.$PASS bs=$CHUNK skip=`expr $PASS - 1` count=1 2>/dev/null
TOTAL=`expr $TOTAL + $CHUNK`
done

echo "Liczba utworzonych kawalkow: $PASS pliku $1"

