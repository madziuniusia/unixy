#!/bin/bash
trap 'echo `date`;exit' 2
LOGGED_IN_USERS=`who | cut -d' ' -f1 | sort | uniq`
PROCESS_UIDS=`ps aux | tail -n+2 | awk '{print $1}'`

while [ 0 ]; do
	for USER in $LOGGED_IN_USERS; do
		echo "User: "$USER
		echo $PROCESS_UIDS | grep -o "$USER" | wc -l
	done
	sleep 2
done
