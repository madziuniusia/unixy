#!/bin/bash
declare -i j
declare -i N
if [ $# -eq 0 ]; then
	echo "Argument: "
	read s
else
	s=$1
fi

D=`ps aux | tail -n+2 | awk '{print $10}' | awk -F: '{print $1*60+$2}'`
N=0
for j in $D; do
	if [ $j -gt $s ]; then
		N=$N+1
	fi
done
echo $N 

