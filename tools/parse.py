"""
Parses on of the files provided by Dubrova at https://people.kth.se/~dubrova/boolenet.html
and converts to our knowledge.
"""

def parse_dnf(lines, var, deps):
    var = str(var)
    for i, line in enumerate(lines):
        if not line:
            break
        for j, char in enumerate(line.split()[0]):
            if char == '0':
                yield "neg", (var, str(j), str(i+1))
            elif char == '1':
                yield "pos", (var, str(j), str(i+1))
    yield "nterms", (var, str(i+1))


def parse_var(lines, var, nvars):
    on = False
    for line in lines:
        if line.startswith(".n"):
            deps = line.split()[1:]
            assert int(deps.pop(0)) == var + 1
            assert int(deps.pop(0)) == len(deps)
            var = str(var)
            for dep in deps:
                yield "depends", (var, dep)
            for ndep in map(str, range(nvars)):
                if ndep not in deps:
                    yield ":- depends", (var, ndep)

            break

    yield from parse_dnf(lines, var, deps)

def parse(lines):
    for line in lines:
        if line.startswith(".v"):
            nvars = line.split()[1]
            yield "nvars", (nvars,)

            for i in range(int(nvars)):
                yield from parse_var(lines, i, int(nvars))

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
