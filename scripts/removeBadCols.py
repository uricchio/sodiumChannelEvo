import sys

colFile = sys.argv[1]
DNAfile = sys.argv[2]


fh = open(colFile, 'r')

cols = []
for line in fh:

    if line.strip() == '':
        continue
    data = line.strip().split(',')
    cols = [int(x) for x in data]
fh.close()
  
colsD = {}
for num in cols:
    colsD[num] = 0

fh2 = open(DNAfile, 'r')
seqs = {}
spec = ''
for line in fh2:
    if line[0] == ">":
        spec = line.strip()
        seqs[spec] = ''
        continue
    seqs[spec] += line.strip()
fh2.close()

for spec in seqs:
    print(spec)
    i = 0
    newSeq = ''
    while i < len(seqs[spec]):
        if int(i/3.) in colsD:
            newSeq += seqs[spec][i:(i+3)]
        i += 3
    print(newSeq)        
