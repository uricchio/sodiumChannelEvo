import dendropy
import sys

tree = dendropy.Tree.get(file=open(sys.argv[1],'r'), schema="newick")
tree.reroot_at_midpoint()
print(tree,end='')
print(';')


