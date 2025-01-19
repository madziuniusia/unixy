#!/bin/bash

L=`who | cut -d' ' -f1 | sort | uniq`
S=0
for u in $L; do
	cat /etc/passwd | grep "^$u:" | awk -F: ' {if($5==""){print $3" no description"} else {print $3" "$5}}'
	((S++))
done
echo "Total logged in users: $S"
