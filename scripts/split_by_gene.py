import sys
from collections import defaultdict

outGene  = sys.argv[2]

fh = open(sys.argv[1],'r')
spec = ''
gene = ''
seq = ''
seqs = defaultdict(dict)
for line in fh:
    spec = line[1:].strip()
    gene = spec[-5:]
    spec = spec[:-6]
    break

for line in fh:
    if line[0] == ">":
        seqs[gene][spec] = seq
        spec = line[1:].strip()
        gene = spec[-5:]
        spec = spec[:-6] 
        seq = ''

        continue

    seq  += line.strip()

seqs[gene][spec] = seq

for gene in seqs:
    if gene != outGene:
        continue
    for spec in seqs[gene]:
        print(">"+spec+"-"+gene)
        print(seqs[gene][spec])

