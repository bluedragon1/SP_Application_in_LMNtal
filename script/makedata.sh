#!/bin/sh
cd ..
echo "$1 $2" > .emake
./run.sh example/integer_e_data_make.lmn < .emake > benchmarks/integer/$1_$2.txt
rm .emake
cd script
