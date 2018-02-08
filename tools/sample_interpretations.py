#!/usr/bin/env python
import sys
import random

fname = sys.argv[1]
ratio = float(sys.argv[2])

with open(fname) as inteterpretationsFile:
    lines = list(inteterpretationsFile)
nvars = 1 + max(int(line.split(",")[1]) for line in lines)
nlines = len(lines)
nstates = nlines // nvars

hidden = set(random.sample(range(nstates), int(nstates * ratio)))

for i, line in enumerate(lines):
    if i // nvars in hidden:
        line = '%' + line
    print(line, end='')

