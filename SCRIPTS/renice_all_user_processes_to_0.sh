#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Arg: "
	read N
else
	N=$1
fi

renice 0 -u $N > /dev/null