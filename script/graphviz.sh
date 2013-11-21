#!/bin/sh
a=${1##*/}
b=${a%.*}
cd ..
./run.sh example/graphviz.lmn < script/$1 > benchmarks/integer/${b}.dot
cd script
dot -Tpng ../benchmarks/integer/${b}.dot -o ${b}.png
display ${b}.png
