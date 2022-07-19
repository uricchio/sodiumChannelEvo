# 

import sys

fh = open(sys.argv[1],'r')

typ = sys.argv[2]
t = sys.argv[3]
k = sys.argv[4]

spec = ''
seq = ''
seqs = {}
for line in fh:
    spec = line[1:].strip()
    break

for line in fh:
    if line[0] == ">":
        seqs[spec] = seq
        seq = ''
        spec = line[1:].strip()
        continue
       
    dat = line.strip()
    for char in dat:
        if char != '-':
            seq += char

seqs[spec] = seq


for spec in seqs:
    print(spec[:-6],spec[-5:], typ, t, k, len(seqs[spec]))
