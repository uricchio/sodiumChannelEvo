import dendropy
import sys
import os

fn = sys.argv[1]

tree_list = dendropy.TreeList()
tree_list.read_from_path(sys.argv[1],
    schema="newick")

t = sys.argv[2]
k = sys.argv[3]
typ = sys.argv[4]

for tree in tree_list:
    tax_parts = tree.taxon_namespace.partition(membership_func=lambda x: x.label[-5:])
    print(t,k,typ,dendropy.model.reconcile.monophyletic_partition_discordance(tree, tax_parts))       
 
#for i in range(0, len(tree_list)):
#    for j in range(i+1, len(tree_list)):
#        print(dendropy.calculate.treecompare.symmetric_difference(tree_list[i], tree_list[j]))

