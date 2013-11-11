#!/bin/sh
cd ..
./run.sh example/shortestpath_tree.lmn < script/$1 > benchmarks/$2_tree.dot
cd script
dot -Tpng ../benchmarks/$2_tree.dot -o $2_tree.png
display $2_tree.png
