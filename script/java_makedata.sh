#!/bin/sh
cd ..
echo "$1" > .emake
echo "$2" >> .emake
$LMNTAL_HOME/bin/lmntal -s3 example/integer_e_data_make_java.lmn > benchmarks/integer/$1_$2.txt < .emake
rm .emake
cd script
