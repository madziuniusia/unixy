#!/bin/bash

trap 'echo `date`;exit' 2
if [ $# -eq 0 ]; then
	MIN_TIME=10
else
	MIN_TIME=$1
fi

while [ true ]; do
	PROCESSES_RUNNING_TIME_SECONDS=`ps aux | awk '{print $10}' | awk -F: '{print $1*60+$2}'`
	N_PROCESSES_RUNNING_LONGER_THAN_MIN_TIME=0
	for PROCESS_RUNNING_TIME_SECONDS in $PROCESSES_RUNNING_TIME_SECONDS; do
		if [ $PROCESS_RUNNING_TIME_SECONDS -gt $MIN_TIME ]; then
			((N_PROCESSES_RUNNING_LONGER_THAN_MIN_TIME++))
		fi
	done
	echo $N_PROCESSES_RUNNING_LONGER_THAN_MIN_TIME
	sleep 5
done
