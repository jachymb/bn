#!/usr/bin/bash

for x in "0.0" "0.1" "0.2" "0.3" "0.4" "0.5" "0.6" "0.7" "0.8" "0.9" "1.0"; do
for iter in `seq 10`; do
f=dubrova/fission_yeast_interpret_${x}_${iter}.lp
tools/sample_interpretations.py dubrova/fission_yeast_interpret.lp $x >$f

clingo -n 0 $f dubrova/fission_yeast_knowledge.lp transitions/bounded10.lp bounded_depth.lp redundancy.lp dnf_syntax.lp optimize.lp | \
tee results_${x}_${iter}.out

clingo -n 0 $f dubrova/fission_yeast_knowledge_noatr.lp transitions/bounded10.lp redundancy.lp dnf_syntax.lp optimize.lp | \
tee results_noatr${x}_${iter}.out

done
done

