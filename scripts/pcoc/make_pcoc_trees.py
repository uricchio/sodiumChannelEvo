# a script that uses dendropy to prune the species that don't have poison annotation
# doing this because it seems like PCOC doesn;'t handle missing data

import dendropy
import sys
import numpy as np
import re

# get the tree
treeFile = sys.argv[1]
tree = dendropy.Tree.get(path=treeFile, schema="newick")

# get the trait data
trfile = "traitData.txt"
tr = open(trfile, "r")

pruned = []
prunedDict = {}
keep = {}
for line in tr:
    data = line.strip().split()
    spName = re.sub('_','-',data[0])
    if data[1] == "NA":
        pruned.append(spName)
        prunedDict[spName] = 0
    else:
        keep[spName] = 0

for node in tree.leaf_node_iter():
    if str(node.taxon)[1:-1] not in prunedDict and str(node.taxon)[1:-1] not in keep:
        pruned.append(str(node.taxon)[1:-1])

tree.prune_taxa_with_labels(pruned)
print(tree,end='')
print(';')

