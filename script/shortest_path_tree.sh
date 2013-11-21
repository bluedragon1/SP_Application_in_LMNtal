#!/bin/sh
a=${1##*/}
b=${a%.*}
cd ..
./run.sh example/shortestpath_tree.lmn < script/$1 > benchmarks/${b}_tree.dot
cd script
dot -Tpng ../benchmarks/${b}_tree.dot -o ${b}_tree.png
display ${b}_tree.png
