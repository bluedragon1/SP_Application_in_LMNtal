#!/bin/sh
#argv[1]=start number, argv[2]=finish number, argv[3]=interval
a=$1
while [ $a -le $2 ]
do
    echo -n  ",${a}"
    a=`expr ${a} + $3`
done
echo " "
a=1
while [ $a -le 3 ]
do
  ./loop.sh $1 $2 $3
  a=`expr ${a} + 1`
done
#ssh gouda ./mail.sh