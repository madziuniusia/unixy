#!/bin/bash
# skrypt co 10 sec. wypisuje liczbe procesow
# po otrzymaniu ^c konczy dzialanie z komunikatem
                                                                                
trap 'echo "Otrzymalem sygnal 3"; exit 1' 3
trap 'echo "Otrzymalem sygnal 2"; exit 1' 2
                                                                                
SLEEP_TIME=2
while [ 1 ]
do
        lproc=`ps ax | wc -l`
        lproc=`expr ${lproc} - 1`
        echo "Dziala ${lproc} procesow"
        sleep ${SLEEP_TIME}
done
                                                                                

