#!/bin/bash
if [ $# -lt 1 ]; then
	echo -n "Podaj UIDs: "
	read uid
else
	uid=$*
fi
for uzytek in $uid; do
	opis=`cat /etc/passwd | cut -f3,5 -d: | grep ^$uzytek: | cut -f2 -d:`
if [ $opis ]; then
        echo "Uzytkownik $uzytek to $opis"
else
        echo "Uzytkownik $uzytek bez opisu"
fi

done

