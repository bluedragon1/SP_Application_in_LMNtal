#!/bin/sh
#argv[1]=start number, argv[2]=finish number, argv[3]=interval
a=$1
while [ $a -le $2 ]
do
    #echo -n ",${a}"
    b=`expr ${a} + ${a}`
    ./makedata.sh $a $b
    cd ..
    echo -n ","
    ./run.sh example/shortestpath_time.lmn < benchmarks/integer/${a}_${b}.txt
    cd script
    a=`expr ${a} + $3`
done
echo " "
