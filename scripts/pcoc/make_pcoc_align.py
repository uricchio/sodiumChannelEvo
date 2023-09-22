import sys
import re

# get the trait data
trfile = "traitData.txt"
tr = open(trfile, "r")

pruned = []
keep = {}
for line in tr:
    data = line.strip().split()
    spName = re.sub('_','-',data[0])
    if data[1] == "NA":
        pruned.append(spName)
    else:
        keep[spName] = 0

# get alignment 
alignFile = sys.argv[1]
al = open(alignFile, 'r')

# mod alignment
for line in al:
    if line[0] == ">":
        spec = line[1:].strip()
        if spec not in keep:
            pr = 0
        else:
            print(line.strip())
            pr = 1
    else:
        if pr == 1:
            print(line.strip()) 



