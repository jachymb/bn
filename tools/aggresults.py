#!/usr/bin/env python
import glob

def mkentries(iterable):
    entries = set()
    for line in iterable:
        if "interpret" in line:
            entries.add(
                    tuple(map(int,line[line.find("(")+1:line.find(")")].split(",")))
                    )
    return entries

with open("dubrova/fission_yeast_interpret.lp") as f:
    groundTruth = mkentries(f)


resfname = "results_noatr{}_{}.out"


for i in range(11):
    i /= 10
    for n in range(1,11):
        try:
            with open(resfname.format(i, n)) as f:
                last = ""
                for line in f:
                    if "interpret(" in line:
                        last = line
                        #break
        except FileNotFoundError:
            continue

        entries = mkentries(last.split(" "))
        print(i, n, len(groundTruth - entries))

