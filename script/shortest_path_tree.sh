#!/bin/sh
cd ..
./run.sh example/shortestpath_tree.lmn < benchmarks/$1.txt > benchmarks/$1.dot
cd script
dot -Tpng ../benchmarks/$1.dot -o $1.png
#display $1.png
