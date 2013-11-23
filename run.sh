#!/bin/sh
$LMNTAL_HOME/installed/bin/slim --hl --no-dump --use-builtin-rule  io/*.lmn makedata.lmn rule/basic_rule.lmn rule/hyper_rule.lmn $*
