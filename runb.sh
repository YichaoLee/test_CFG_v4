#!/bin/sh
timeout=3000

for i in bench1/benchmark14.c bench1/benchmark15.c
do
    echo " ${i} " >> bench1result.txt
        ./verify ${i} -l 12 -b 50 >> bench1result.txt 2>&1 & sleep ${timeout} && kill -9 $!
done

echo "benchmark finished!-------------------------------------------"
