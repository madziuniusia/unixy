#!/bin/bash
for plik in .* * ; do
# plik / katalog
	if [ -d $plik ]; then
		opis='d'
	else
		opis='-'
	fi
# prawo odczytu
	if [ -r $plik ]; then
		opis=$opis'r'
	else
		opis=$opis'-'
	fi
# prawo zapisu
	if [ -w $plik ]; then
		opis=$opis'w'
	else
		opis=$opis'-'
	fi
# prawo wykonywania
	if [ -x $plik ]; then
		opis=$opis'x'
	else
		opis=$opis'-'
	fi
	echo "$opis   $plik"
done


