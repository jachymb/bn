"""
Parses on of the files provided by Dubrova at https://people.kth.se/~dubrova/boolenet.html
and converts to our knowledge.
"""

def parse_dnf(lines, var, deps):
    deps = [str(d) for d in deps]
    var = str(var)
    for termNumber, line in enumerate(lines):
        if not line:
            break
        for j, char in enumerate(line.split()[0]):
            if char == '0':
                yield "neg", (var, deps[j], str(termNumber+1))
            else:
                yield ":- neg", (var, deps[j], str(termNumber+1))

            if char == '1':
                yield "pos", (var, deps[j], str(termNumber+1))
            else:
                yield ":- pos", (var, deps[j], str(termNumber+1))
    yield "nterms", (var, str(termNumber))
    return termNumber


def parse_var(lines, var, nvars):
    on = False
    for line in lines:
        if line.startswith(".n"):
            deps = [int(x)-1 for x in line.split()[1:]]
            assert deps.pop(0) == var
            assert deps.pop(0) == len(deps) - 1
            var = str(var)
            for dep in deps:
                yield "depends", (var, str(dep))
            #for ndep in range(nvars):
            #    if ndep not in deps:
            #        yield ":- depends", (var, str(ndep))

            break

    return (yield from parse_dnf(lines, var, deps))

def parse(lines):
    maxterms = 0
    for line in lines:
        if line.startswith(".v"):
            nvars = line.split()[1]
            yield "nvars", (nvars,)

            for i in range(int(nvars)):
                nterms = yield from parse_var(lines, i, int(nvars))
                maxterms = max(maxterms, nterms)
    yield "maxterms", (str(maxterms,))

def preprocess(lines):
    for line in lines:
        if line[0] == '#':
            continue
        yield line.strip()

if __name__ == "__main__":
    import sys
    with open(sys.argv[1]) as f:
        for p, args in parse(preprocess(f)):
            print(f"{p}({', '.join(args)}).")

    #print("observation(I, X, B) :- interpret(I, X, B).")
