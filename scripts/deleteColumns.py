import sys

f = sys.argv[1] # aligned protein file 
f2 = sys.argv[2] # aligned DNA file

fh = open(f, 'r')

prot = {}
speclist = []
for line in fh:
    if line[0] == ">":
        spec = line.strip('\n').split()[0]
        speclist.append(spec)
        prot[spec] = ''
        continue
    prot[spec] += line.strip()
fh.close()


fh = open(f2, 'r')
dna= {}
spec = ''
for line in fh:
    if line[0] == ">":
        spec = line.strip('\n').split()[0]
        dna[spec] = ''
        continue
    dna[spec] += line.strip('\n')
fh.close()


for spec in speclist:
    print(spec)
    seq = ''
    for i in range(0, len(prot[spec])):
        if prot[spec][i] == "-":
            seq += '---'
        else:
            seq += dna[spec][3*i:(3*i+3)]
    print(seq)
            
            


