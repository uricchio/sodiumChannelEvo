import sys
import ast

nameDict = "/Users/uricchio/projects/poison/sodiumChannelPaper/Data/key-dict.txt"
fasta = sys.argv[1]

fh = open (nameDict, 'r')

nD = ''
for line in fh:
    nD += line.strip()
fh.close()

names = ast.literal_eval(nD)

fh = open (fasta, 'r')

seq = ''
name = ''
for line in fh:
    if line[0] == ">":
        if len(seq) > 0 and name in names:
            print(">"+names[name])
            print(seq)
            seq = ''
        name = line[1:-7].split()[0]
        continue
    seq += line.strip()  
