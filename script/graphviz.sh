#!/bin/sh
cd ..
./run.sh example/graphviz.lmn < benchmarks/integer/$1.txt > benchmarks/integer/$1.dot
cd script
dot -Tpng ../benchmarks/integer/$1.dot -o $1.png
display $1.png
