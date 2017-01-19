#!/bin/sh
timeout=7200

for i in benchmark/benchmark55.c benchmark/benchmark59.c benchmark/benchmark60.c benchmark/benchmark64.c benchmark/benchmark65.c benchmark/benchmark66.c benchmark/benchmark67.c
do
    echo " ${i} " >> benchmarkresult.txt
    ./verify ${i} -l 12 -b 50 >> benchmarkresult.txt 2>&1 & sleep ${timeout} && kill -9 $!
done

echo "Benchmark finished!-------------------------------------------"
