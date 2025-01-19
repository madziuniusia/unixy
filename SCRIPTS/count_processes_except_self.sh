#!/bin/bash
while [ 1 ]; do
	lproc=`ps aux | wc -l`
	lproc=`expr $lproc - 1`
	echo "Liczba procesow: $lproc"
	sleep 2
done

