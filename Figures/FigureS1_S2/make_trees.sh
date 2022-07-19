# make tree concord data for partial assembs 
k=45
for t in {56,64,60,68,72,76,80,84}; do python3 ../../scripts/tree_concord.py $1/t${t}d10k${k}.orig.raxml.mlTrees $t $k orig ; done
