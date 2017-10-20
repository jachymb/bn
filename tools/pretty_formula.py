#!/usr/bin/env python
import sys

def transform(model):
    values = [(x[:x.find('(')],  [int(z) for z in x[x.find('(')+1:-1].split(",")]) for x in str(model).strip().split(" ")]
    nvars = int(dict(values)['nvars'][0])
    maxterms = int(dict(values)['maxterms'][0])
    table = [ [ [""]*nvars for _ in range(maxterms)] for _ in range(nvars)]
    for k, v in values:
        if k == "pos":
            a,b,c = v
            table[a][c-1][b] = str(b)
        elif k == "neg":
            a,b,c = v
            table[a][c-1][b] = "~" + str(b)

    return "\n".join(str(x) + " <- " + "\n   | ".join(" & ".join(filter(bool, term)) for term in formula if any(term)) for x,formula in enumerate(table))

for line in sys.stdin:
    print(line, end="")
    if 'nvars(' in line:
        print(transform(line))

