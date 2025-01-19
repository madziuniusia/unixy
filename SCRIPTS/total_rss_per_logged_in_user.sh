#!/bin/bash
LOGGED_IN_USERS=`who | cut -d' ' -f1 | sort | uniq`
for USER in $LOGGED_IN_USERS; do
	RSS_PER_USERS_PROCESS=`ps aux | tail -n+2 | awk '{print $1" "$6}' | grep $USER | cut -d' ' -f2`
	TOTAL_RSS=0
	for RSS in $RSS_PER_USERS_PROCESS; do
		((TOTAL_RSS+=$RSS))
	done
	echo "$USER $TOTAL_RSS"
done
