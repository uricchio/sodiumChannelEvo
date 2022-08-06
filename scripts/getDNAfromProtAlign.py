import sys

f = sys.argv[1] # aligned protein file with names of retained species
f1 = sys.argv[2]  # aligned protein file
f2 = sys.argv[3] # unaligned DNA file

fh = open(f, 'r')

prot = {}
for line in fh:
    if line[0] == ">":
        prot[line.strip('\n').split()[0]] = ''
        continue
fh.close()


fh = open(f1, 'r')

nextSeq = ''
for line in fh:
    if line[0] == ">":
        nextSeq = line.strip('\n').split()[0]
        continue
    if nextSeq in prot:
        prot[nextSeq] += line.strip('\n')
fh.close()

fh2 =  open(f2, 'r')

DNA = {}

for line in fh2:
    if line[0] == ">":
        DNA[line.strip('\n')] = ''
        nextSeq = line.strip('\n')
        continue
    DNA[nextSeq] += line.strip('\n')
fh2.close()


i = 0 
for seq in prot:
    if seq not in DNA:
        continue
    print(seq)
    for aa in prot[seq]:
        if aa == "-":
            print("---",end='')
        elif aa == "*": 
            print("---",end='')
            i += 3
        else:
            print(DNA[seq][i:(i+3)],end='')
            i += 3 
    i = 0
    print('')

