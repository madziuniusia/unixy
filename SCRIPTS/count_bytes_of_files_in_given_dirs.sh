#!/bin/bash
if [ $# -eq 0 ]; then
	echo "Path: "
	read p
else
	p=$*
fi
for j in $p; do
	ls -l $j | grep "^-.*" | awk '{SUM += $5} END {print SUM}'
done

