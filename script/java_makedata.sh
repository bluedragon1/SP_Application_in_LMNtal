#!/bin/sh
cd ..
echo "$1" > .emake
echo "$2" >> .emake
$LMNTAL_HOME/bin/lmntal -s2 example/integer_e_data_make_java.lmn < .emake | sed -e '$d' > benchmarks/integer/$1_$2.txt 
rm .emake
cd script
