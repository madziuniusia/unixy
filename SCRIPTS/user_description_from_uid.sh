#!/bin/bash
if [ $# -lt 1 ]; then
	echo -n "Podaj UID: "
	read uid
else
	uid=$1
fi
opis=`cat /etc/passwd | cut -f3,5 -d: | grep ^${uid}: | cut -f2 -d:`
#
if [ $opis ]; then
	echo "Uzytkownik $uid to $opis"
else
	echo "Uzytkownik $uid bez opisu"
fi

