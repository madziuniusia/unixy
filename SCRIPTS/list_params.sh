#!/bin/bash
echo "Liczba argumentow: $#"
if [ $# -eq 0 ]; then
	echo "Skrypt bez argumentow"
else
	licznik=0
	while [ $1 ]; do
		echo "Argument $licznik to $1"
		shift
		licznik=`expr $licznik + 1`
	done
fi

