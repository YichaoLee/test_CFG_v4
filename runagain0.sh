#!/bin/sh
timeout=100

for i in bench/benchmark81.c bench/benchmark85.c bench/benchmark86.c bench/benchmark87.c                     
do
     echo " ${i} " >> benchresult.txt
     ./verify ${i} -l 12 -b 50 >> benchresult.txt 2>&1 & sleep ${timeout} && kill -9 $!
done
 
echo "Benchmark finished!-------------------------------------------"

