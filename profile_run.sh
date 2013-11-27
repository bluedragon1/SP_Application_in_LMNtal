#!/bin/sh
$LMNTAL_HOME/installed/bin/slimp -p2 --hl --no-dump --use-builtin-rule  io/*.lmn makedata.lmn rule/basic_rule.lmn rule/hyper_rule.lmn $*
