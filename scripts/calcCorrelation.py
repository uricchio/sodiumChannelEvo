import sys
import numpy as np
import scipy.stats as stats
import math

# first get trait data
tD = {}
fh = open("../Data/traitData.txt",'r')
for line in fh:
    data = line.strip().split()
    if data[1] == "NA":
        data[1] = "NaN"
    tD[data[0]] = float(data[1])
fh.close()

# get seq alignments
seqs = {}
fh = open(sys.argv[1],'r')
for line in fh:
    if line[0] == ">":
        name= line.strip()[1:]
        name = name.replace('-','_')
        seqs[name] = ''
        continue
    seqs[name] += line.strip()
fh.close()


def getCorr(i,s,t):
    
    counter = {}
    td = {0:0,1:0}
    # fisrt get number in each category
    for spec in s:
        if spec not in t or math.isnan(t[spec]):
            continue
        if s[spec][i] in counter:
            counter[s[spec][i]][int(t[spec])] += 1
        else:
            counter[s[spec][i]] = [0,0]
            counter[s[spec][i]][int(t[spec])] += 1
        
    return(counter)  

# Finding Chi-squared test statistic,
# sample size, and minimum of rows
# and columns
name = ''
for thing in seqs:
    name = thing
    break

for i in range(0,len(seqs[name])):
    data = getCorr(i,seqs,tD)
    if len(data) == 1 or len(data) > 2:
        continue
    dataset = [[],[]]
    for res in data:
        dataset[0].append(data[res][0])
        dataset[1].append(data[res][1])
    dataset = np.array(dataset)

    X2 = stats.chi2_contingency(dataset, correction=False)[0]
    N = np.sum(dataset)
    minimum_dimension = min(dataset.shape)-1
  
    # Calculate Cramer's V
    result = np.sqrt((X2/N) / minimum_dimension)
    if result > 0.41:
        print (i, result)
        #for thing in dataset:
        #   print (thing, end=' ')
        #print()  
