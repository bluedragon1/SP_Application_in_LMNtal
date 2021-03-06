#!/bin/sh
#argv[1]=start number, argv[2]=finish number, argv[3]=interval
a=$1
while [ $a -le $2 ]
do
    b=`expr ${a} \* 2`
    if [ ! -e ../benchmarks/integer/${a}_${b}.txt ]; then
    ./makedata.sh $a $b
    fi
    cd ..
    echo -n ","
    ./ilrun.sh example/hypershortest_timeO2.lmn < benchmarks/integer/${a}_${b}.txt
    cd script
    a=`expr ${a} + $3`
done
echo " "

